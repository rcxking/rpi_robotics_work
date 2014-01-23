# 1 "src/reflex_mod.F90"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/reflex_mod.F90"
!! -*- mode: F90; -*-
!!
!! Copyright (c) 2013, Georgia Tech Research Corporation
!! All rights reserved.
!!
!! Author(s): Neil T. Dantam <ntd@gatech.edu>
!! Georgia Tech Humanoid Robotics Lab
!! Under Direction of Prof. Mike Stilman <mstilman@cc.gatech.edu>
!!
!!
!! This file is provided under the following "BSD-style" License:
!!
!!
!! Redistribution and use in source and binary forms, with or
!! without modification, are permitted provided that the following
!! conditions are met:
!!
!! * Redistributions of source code must retain the above copyright
!! notice, this list of conditions and the following disclaimer.
!!
!! * Redistributions in binary form must reproduce the above
!! copyright notice, this list of conditions and the following
!! disclaimer in the documentation and/or other materials provided
!! with the distribution.
!!
!! THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
!! CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
!! INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
!! MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
!! DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
!! CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
!! SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
!! LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
!! USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
!! AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
!! LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
!! ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
!! POSSIBILITY OF SUCH DAMAGE.


module reflex
  use ISO_C_BINDING
  use amino_la
  use amino_tf
  implicit none


  Interface
     subroutine rfx_lqg_kbf_gain_work( nx, nz, A, C, V, W, P, K ) &
          bind( C, name="rfx_lqg_kbf_gain_work")
       use ISO_C_BINDING
       integer(C_SIZE_T), intent(in), value :: nx, nz
       real(C_DOUBLE), intent(in) :: A(nx,nx), C(nz,nx), V(nx,nx), W(nz,nz)
       real(C_DOUBLE), intent(out) :: P(nx,nx), K(nx,nz)
     end subroutine rfx_lqg_kbf_gain_work
  End Interface

contains

# 1 "src/kinematics.f90" 1
!! -*- mode: F90; -*-
!!
!! Copyright (c) 2013, Georgia Tech Research Corporation
!! All rights reserved.
!!
!! Author(s): Neil T. Dantam <ntd@gatech.edu>
!! Georgia Tech Humanoid Robotics Lab
!! Under Direction of Prof. Mike Stilman <mstilman@cc.gatech.edu>
!!
!!
!! This file is provided under the following "BSD-style" License:
!!
!!
!! Redistribution and use in source and binary forms, with or
!! without modification, are permitted provided that the following
!! conditions are met:
!!
!! * Redistributions of source code must retain the above copyright
!! notice, this list of conditions and the following disclaimer.
!!
!! * Redistributions in binary form must reproduce the above
!! copyright notice, this list of conditions and the following
!! disclaimer in the documentation and/or other materials provided
!! with the distribution.
!!
!! THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
!! CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
!! INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
!! MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
!! DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
!! CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
!! SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
!! LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
!! USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
!! AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
!! LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
!! ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
!! POSSIBILITY OF SUCH DAMAGE.


!!! Matrices !!!

pure subroutine rfx_kin_jac_col_rev( T_abs, axis_rel, pe_abs, J ) &
     bind( C, name="rfx_kin_jac_col_rev" )
  real(C_DOUBLE), intent(in) :: T_abs(3,4), axis_rel(3), pe_abs(3)
  real(C_DOUBLE), intent(out) :: J(6)
  real(C_DOUBLE) :: tmp(3)
  ! rotation
  call aa_tf_9(T_abs(:,1:3), axis_rel, J(4:6))
  ! translation
  tmp = pe_abs - T_abs(:,4)
  call aa_tf_cross( J(4:6), tmp, J(1:3) )
end subroutine rfx_kin_jac_col_rev

pure subroutine rfx_kin_tf_jac_rev( n, TT_abs, axis, pe, J, ldJ ) &
     bind( C, name="rfx_kin_tf_jac_rev" )
  integer(C_SIZE_T), intent(in), value :: ldJ, n
  real(C_DOUBLE), intent(in) :: TT_abs(3,4,n), axis(3,n), pe(3)
  real(C_DOUBLE), intent(inout) :: J(ldJ,n)
  integer(C_SIZE_T) :: i
  do i = 1,n
     call rfx_kin_jac_col_rev( TT_abs(:,:,i), axis(:,i), pe, J(1:6,i) )
  end do
end subroutine rfx_kin_tf_jac_rev

pure subroutine rfx_kin_tf_chain( n, T0, TT_rel, TT_abs ) &
     bind( C, name="rfx_kin_tf_chain" )
  integer(C_SIZE_T), intent(in), value :: n
  real(C_DOUBLE), intent(in) :: T0(3,4), TT_rel(3,4,n)
  real(C_DOUBLE), intent(out) :: TT_abs(3,4,n)
  integer(C_SIZE_T) :: i

  call aa_tf_12chain( T0, TT_rel(:,:,1), TT_abs(:,:,1) )

  do i=2,n
     call aa_tf_12chain( TT_abs(:,:,i-1), TT_rel(:,:,i), TT_abs(:,:,i) )
  end do

end subroutine rfx_kin_tf_chain


pure subroutine rfx_kin_revchain( n, T0, TT_rel, Te_rel, axis, TT_abs, J, ldJ ) &
     bind( C, name="rfx_kin_revchain" )
  integer(C_SIZE_T), intent(in), value :: n, ldJ
  real(C_DOUBLE), intent(in) :: T0(3,4), TT_rel(3,4,n), Te_rel(3,4), axis(3,n)
  real(C_DOUBLE), intent(out) :: TT_abs(3,4,n)
  real(C_DOUBLE), intent(inout) :: J(ldJ,n)
  real(C_DOUBLE) :: Te_abs(3,4)
  call rfx_kin_tf_chain( n, T0, TT_rel, TT_abs )
  call aa_tf_12chain( TT_abs(:,:,n), Te_rel, Te_abs )
  call rfx_kin_tf_jac_rev( n, TT_abs, axis, Te_abs(:,4), J, ldJ )
end subroutine rfx_kin_revchain

!!! Dual Quaternions !!!

subroutine rfx_kin_duqu_jac_col_rev( T_abs, axis_rel, pe_abs, J ) &
     bind( C, name="rfx_kin_duqu_jac_col_rev" )
  real(C_DOUBLE), intent(in) :: T_abs(8), axis_rel(3), pe_abs(3)
  real(C_DOUBLE), intent(out) :: J(6)
  real(C_DOUBLE) :: tmp(3)
  ! rotation
  call aa_tf_qrot(T_abs(1:4), axis_rel, J(4:6))
  ! translation
  call aa_tf_duqu_trans( T_abs, tmp )
  tmp = pe_abs - tmp
  call aa_tf_cross( J(4:6), tmp, J(1:3) )
end subroutine rfx_kin_duqu_jac_col_rev

subroutine rfx_kin_duqu_jac_rev( n, TT_abs, axis, pe, J, ldJ ) &
     bind( C, name="rfx_kin_duqu_jac_rev" )
  integer(C_SIZE_T), intent(in), value :: ldJ, n
  real(C_DOUBLE), intent(in) :: TT_abs(8,n), axis(3,n), pe(3)
  real(C_DOUBLE), intent(inout) :: J(ldJ,n)
  integer(C_SIZE_T) :: i
  do i = 1,n
     call rfx_kin_duqu_jac_col_rev( TT_abs(:,i), axis(:,i), pe, J(1:6,i) )
  end do
end subroutine rfx_kin_duqu_jac_rev

subroutine rfx_kin_duqu_chain( n, T0, TT_rel, TT_abs ) &
     bind( C, name="rfx_kin_duqu_chain" )
  integer(C_SIZE_T), intent(in), value :: n
  real(C_DOUBLE), intent(in) :: T0(8), TT_rel(8,n)
  real(C_DOUBLE), intent(out) :: TT_abs(8,n)
  integer(C_SIZE_T) :: i

  call aa_tf_duqu_mul( T0, TT_rel(:,1), TT_abs(:,1) )

  do i=2,n
     call aa_tf_duqu_mul( TT_abs(:,i-1), TT_rel(:,i), TT_abs(:,i) )
  end do

end subroutine rfx_kin_duqu_chain

subroutine rfx_kin_duqu_revchain( n, T0, TT_rel, Te_rel, axis, TT_abs, Te_abs, J, ldJ ) &
     bind( C, name="rfx_kin_duqu_revchain" )
  integer(C_SIZE_T), intent(in), value :: n, ldJ
  real(C_DOUBLE), intent(in) :: T0(8), TT_rel(8,n), Te_rel(8), axis(3,n)
  real(C_DOUBLE), intent(out) :: TT_abs(8,n), Te_abs(8)
  real(C_DOUBLE), intent(out) :: J(ldJ,n)
  real(C_DOUBLE) :: pe_abs(3)
  call rfx_kin_duqu_chain( n, T0, TT_rel, TT_abs )
  call aa_tf_duqu_mul( TT_abs(:,n), Te_rel, Te_abs )
  call aa_tf_duqu_trans( Te_abs, pe_abs )
  call rfx_kin_duqu_jac_rev( n, TT_abs, axis, pe_abs, J, ldJ )
end subroutine rfx_kin_duqu_revchain
# 61 "src/reflex_mod.F90" 2
# 1 "src/lqgf.f90" 1
!! -*- mode: F90; -*-
!!
!! Copyright (c) 2013, Georgia Tech Research Corporation
!! All rights reserved.
!!
!! Author(s): Neil T. Dantam <ntd@gatech.edu>
!! Georgia Tech Humanoid Robotics Lab
!! Under Direction of Prof. Mike Stilman <mstilman@cc.gatech.edu>
!!
!!
!! This file is provided under the following "BSD-style" License:
!!
!!
!! Redistribution and use in source and binary forms, with or
!! without modification, are permitted provided that the following
!! conditions are met:
!!
!! * Redistributions of source code must retain the above copyright
!! notice, this list of conditions and the following disclaimer.
!!
!! * Redistributions in binary form must reproduce the above
!! copyright notice, this list of conditions and the following
!! disclaimer in the documentation and/or other materials provided
!! with the distribution.
!!
!! THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
!! CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
!! INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
!! MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
!! DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
!! CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
!! SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
!! LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
!! USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
!! AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
!! LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
!! ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
!! POSSIBILITY OF SUCH DAMAGE.


!!! Kalman Filters !!!

subroutine rfx_lqg_kf_predict_work( n_x, n_u, A, x, B, u, P, V, work ) &
     bind( C, name="rfx_lqg_kf_predict_work" )
  integer(C_SIZE_T), intent(in), value :: n_x, n_u
  real(C_DOUBLE), intent(in) :: A(n_x,n_x), B(n_x, n_u), u(n_u), V(n_x,n_x)
  real(C_DOUBLE), intent(inout) :: x(n_x), P(n_x,n_x)
  real(C_DOUBLE), intent(out) :: work(n_x,n_x)

  call state(work(:,1))
  call covariance(work)

contains

  subroutine state( tmpx )
    real(C_DOUBLE), intent(out) :: tmpx(:)
    ! x = A*x + B*u
    tmpx = matmul(A,x)
    x = tmpx
    tmpx = matmul(B,u)
    x = x + tmpx
  end subroutine state

  subroutine covariance( tmpp )
    real(C_DOUBLE), intent(out) :: tmpp(:,:)
    ! P = A*P*A^T + V
    tmpp = matmul(A,P)
    P = matmul(tmpp,transpose(A))
    P = P + V
  end subroutine covariance

end subroutine rfx_lqg_kf_predict_work

subroutine rfx_lqg_kf_gain_work( n_x, n_z, C, P, W, K, work_xz, work_zz ) &
     bind( C, name="rfx_lqg_kf_gain_work" )
  integer(C_SIZE_T), intent(in), value :: n_x, n_z
  real(C_DOUBLE), intent(in) :: C(n_z,n_x), P(n_x, n_x), W(n_z,n_z)
  real(C_DOUBLE), intent(out) :: work_xz(n_x,n_z), work_zz(n_z,n_z), K(n_x, n_z)
  integer :: i
  !! K = P * C**T * (C * P * C**T + W)**-1
  work_xz = matmul(P,transpose(C))
  work_zz = matmul(C,work_xz)
  work_zz = work_zz + W
  i = aa_la_inv( n_z, work_zz )
  K = matmul(work_xz, work_zz)
end subroutine rfx_lqg_kf_gain_work

subroutine rfx_lqg_kf_innovate_work( n_x, n_z, x, K, z, C, workx, workz ) &
     bind( C, name="rfx_lqg_kf_innovate_work" )
  integer(C_SIZE_T) :: n_x, n_z
  real(C_DOUBLE), intent(inout) :: x(n_x)
  real(C_DOUBLE), intent(in) :: K(n_x, n_z), z(n_z), C(n_x,n_z)
  real(C_DOUBLE), intent(out) :: workz(n_z), workx(n_x)
  !! xh = x + K * (z - C*x)
  workz = matmul(C,x)
  workz = z - workz
  workx = matmul(K,workz)
  x = x + workx
end subroutine rfx_lqg_kf_innovate_work

subroutine rfx_lqg_kf_covariance_work( n_x, n_z, C, P, K, work_xx2 ) &
     bind( C, name="rfx_lqg_kf_covariance_work" )
  integer(C_SIZE_T), intent(in), value :: n_x, n_z
  real(C_DOUBLE), intent(inout) :: P(n_x,n_x)
  real(C_DOUBLE), intent(in) :: C(n_z, n_x), K(n_x, n_z)
  real(C_DOUBLE), intent(out) :: work_xx2(n_x,n_x,2)
  integer(C_SIZE_T) :: i
  !! P = (I - K*C) * P
  work_xx2(:,:,1) = matmul(K, C)
  work_xx2(:,:,1) = -work_xx2(:,:,1)
  forall (i = 1:n_x)
     work_xx2(i,i,1) = 1 + work_xx2(i,i,1)
  end forall
  work_xx2(:,:,2) = P
  P = matmul( work_xx2(:,:,1), work_xx2(:,:,1) )
end subroutine rfx_lqg_kf_covariance_work


elemental subroutine rfx_lqg_kf_simple( x, z, p, v, w, k )
  real(C_DOUBLE), intent(in) :: z,v,w
  real(C_DOUBLE), intent(inout) :: x,p
  real(C_DOUBLE), intent(out) :: k

  ! A = C = I

  ! predict
  p = p + v

  ! correct
  k = p / (p+w)
  x = x + k * (z - x)
  p = (1-k) * p
end subroutine rfx_lqg_kf_simple

subroutine rfx_lqg_kf_simple_work( n_x, x, z, P, V, W, K ) &
     bind( C, name="rfx_lqg_kf_simple_work" )
  integer(C_SIZE_T), intent(in), value :: n_x
  real(C_DOUBLE), intent(in) :: z(n_x), W(n_x), V(n_x)
  real(C_DOUBLE), intent(inout) :: x(n_x), P(n_x)
  real(C_DOUBLE), intent(out) :: K(n_x)
  call rfx_lqg_kf_simple( x, z, P, V, W, K )
end subroutine rfx_lqg_kf_simple_work

subroutine rfx_lqg_kf_predict_diag_work( n_x, A, x, P, V ) &
     bind( C, name="rfx_lqg_kf_predict_diag_work" )
  integer(C_SIZE_T), intent(in), value :: n_x
  real(C_DOUBLE), intent(in) :: A(n_x), V(n_x)
  real(C_DOUBLE), intent(inout) :: x(n_x), P(n_x)
  ! state
  x = A*x
  ! covariance
  P = A*P*A + V
end subroutine rfx_lqg_kf_predict_diag_work

subroutine rfx_lqg_kf_correct_diag_work( n_x, z, C, x, P, W, K ) &
     bind( C, name="rfx_lqg_kf_correct_diag_work" )
  integer(C_SIZE_T), intent(in), value :: n_x
  real(C_DOUBLE), intent(in) :: z(n_x), C(n_x), W(n_x)
  real(C_DOUBLE), intent(inout) :: x(n_x), P(n_x)
  real(C_DOUBLE), intent(out) :: K(n_x)

  ! kalman gain
  K = (P * C ) / (C*P*C + W)

  ! state
  x = x + K * (z - C*x)

  ! covariance
  P = (1-K*C) * P
end subroutine rfx_lqg_kf_correct_diag_work
# 62 "src/reflex_mod.F90" 2
# 1 "src/lqg_tf_f.f90" 1
!! -*- mode: F90; -*-
!!
!! Copyright (c) 2013, Georgia Tech Research Corporation
!! All rights reserved.
!!
!! Author(s): Neil T. Dantam <ntd@gatech.edu>
!! Georgia Tech Humanoid Robotics Lab
!! Under Direction of Prof. Mike Stilman <mstilman@cc.gatech.edu>
!!
!!
!! This file is provided under the following "BSD-style" License:
!!
!!
!! Redistribution and use in source and binary forms, with or
!! without modification, are permitted provided that the following
!! conditions are met:
!!
!! * Redistributions of source code must retain the above copyright
!! notice, this list of conditions and the following disclaimer.
!!
!! * Redistributions in binary form must reproduce the above
!! copyright notice, this list of conditions and the following
!! disclaimer in the documentation and/or other materials provided
!! with the distribution.
!!
!! THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
!! CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
!! INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
!! MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
!! DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
!! CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
!! SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
!! LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
!! USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
!! AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
!! LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
!! ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
!! POSSIBILITY OF SUCH DAMAGE.
# 49 "src/lqg_tf_f.f90"
function rfx_tf_filter_update_work( dt, XX, UU, ZZ, P, V, W ) result(info) &
     bind( C, name="rfx_tf_filter_update_work" )
  real(C_DOUBLE), intent(in), value :: dt
  real(C_DOUBLE), intent(inout), dimension(13) :: XX
  real(C_DOUBLE), intent(in), dimension(13) :: ZZ, UU
  real(C_DOUBLE), intent(inout), dimension(13,13) :: P
  real(C_DOUBLE), intent(in), dimension(13,13) :: V, W
  integer(C_INT) :: info

  real(C_DOUBLE), dimension(13) :: dx, zh, dxh, XX2
  real(C_DOUBLE), dimension(13,13) :: A, C, K
  real(C_DOUBLE) :: r(4), R_r(4,4)
  integer :: i


  !! Compute Kalman Gain
  ! A = [0 0 0 0.5R_r ]
  ! [0 0 1 0 ]
  ! [0 0 0 0 ]
  ! [0 0 0 0 ]
  A = real(0,C_DOUBLE)

  r = 0.5 * XX(1:4)
  call aa_tf_qmatrix_r(r, R_r)
  A(1:4,11:13) = R_r(1:4,1:3)

  forall (i=1:3)
     A(4+i,7+i) = real(1,C_DOUBLE)
  end forall

  ! C = 1
  C=real(0,C_DOUBLE)
  forall (i=1:13)
     C(i,i) = real(1,C_DOUBLE)
  end forall


  call rfx_lqg_kbf_gain_work( int(13,C_SIZE_T), int(13,C_SIZE_T), A, C, V, W, P, K )

  !! Update

  !dx = Ax+Bu
  call aa_tf_qvel2diff( XX(1:4), XX(11:13), dx(1:4) )
  dx(5:7) = XX(8:10)
  dx(8:13) = real(0,C_DOUBLE)
  dx = dx+UU

  ! innovate: e = z - Cx
  call innovate_r( XX(1:4), ZZ(1:4), zh(1:4) )
  zh(5:7) = ZZ(5:7) - XX(5:7)
  zh(8:13) = ZZ(8:13) - XX(8:13)
  dxh = matmul(K, zh)

  dx = dx + dxh

  !! Integrate
  call aa_tf_qutr_sdiff( XX(1:7), dx(1:7), dt, XX2(1:7) )
  XX2(8:13) = XX(8:13) + dt*dx(8:13)

  XX = XX2
  call aa_tf_qnormalize( XX(1:4) )

  !! TODO: actually check that things worked out
  info = 0
contains

  subroutine innovate_r( r_est, r_obs, rh )
    real(C_DOUBLE), intent(in), dimension(4) :: r_est, r_obs
    real(C_DOUBLE), intent(out), dimension(4) :: rh
    real(C_DOUBLE), dimension(4) :: r_rel, w_2
    ! rh = log( r_obs * conj(r_est) ) * r_est
    call aa_tf_qmulc( r_obs, r_est, r_rel )
    call aa_tf_qln( r_rel, w_2)
    call aa_tf_qmul( w_2, r_est, rh )
  end subroutine innovate_r

end function rfx_tf_filter_update_work
# 63 "src/reflex_mod.F90" 2

end module reflex
