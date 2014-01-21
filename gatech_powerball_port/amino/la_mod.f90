# 1 "src/la_mod.F90"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/la_mod.F90"
!! -*- mode: F90; -*-
!!
!! Copyright (c) 2012, Georgia Tech Research Corporation
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


!> \file la_mod.f90
!! \brief Linear Algebra Module
!! \author Neil T. Dantam
!!
!! This file is preprocessed to produce functions for various types.
!! Since gfortran's proprocessor doesn't support token pasting, we
!! need to explicitly preprocess the file with the C preprocessor. It
!! should be sufficient, then, to include the preprocessed source file
!! in the tarball to sidestep preprocessing compatibilities with,
!! ie. ifort.
!!

!! To bind the fortran definitions to C, we need to touch three things:
!! - The fortran function definition
!! - A fortran wrapper function using the C calling convention
!! - A C header file to declare the wrapper function to cc

# 1 "./include/amino/mangle.h" 1
# 59 "src/la_mod.F90" 2

module amino_la
  use ISO_C_BINDING
  implicit none

  !> Linear Least Squares
  interface aa_la_lls
     !> Double float linear least squares
     subroutine aa_la_d_lls(m,n,p,A,lda,b,ldb,x,ldx) &
          bind(C,name="aa_la_d_lls")
       use ISO_C_BINDING
       integer(c_size_t), intent(in), value :: m,n,p,lda,ldb,ldx
       real(c_double), intent(in) :: A(lda,n), b(ldb,p)
       real(c_double), intent(out) :: x(ldx,p)
     end subroutine aa_la_d_lls
     !> Single float linear least squares
     subroutine aa_la_s_lls(m,n,p,A,lda,b,ldb,x,ldx) &
          bind(C,name="aa_la_s_lls")
       use ISO_C_BINDING
       integer(c_size_t), intent(in), value :: m,n,p,lda,ldb,ldx
       real(c_float), intent(in) :: A(lda,n), b(ldb,p)
       real(c_float), intent(out) :: x(ldx,p)
     end subroutine aa_la_s_lls
  end interface

  !> Singular Value Decomposition
  interface aa_la_svd
     !> Double float SVD
     subroutine aa_la_d_svd(m,n,A,lda,U,ldu,S,Vt,ldvt) &
          bind(C,name="aa_la_d_svd")
       use ISO_C_BINDING
       integer(c_size_t), intent(in), value :: m,n,lda,ldu,ldvt
       real(c_double), intent(in) :: A(lda,n)
       real(c_double), intent(out) :: U(ldu,m), S(min(m,n)), Vt(ldvt,n)
     end subroutine aa_la_d_svd
     !> Single float SVD
     subroutine aa_la_s_svd(m,n,A,lda,U,ldu,S,Vt,ldvt) &
          bind(C,name="aa_la_s_svd")
       use ISO_C_BINDING
       integer(c_size_t), intent(in), value :: m,n,lda,ldu,ldvt
       real(c_float), intent(in) :: A(lda,n)
       real(c_float), intent(out) :: U(ldu,m), S(min(m,n)), Vt(ldvt,n)
     end subroutine aa_la_s_svd
  end interface

  !! interface to inversion function (via lapack) in amino
  Interface
     Function aa_la_inv( n, A ) result(info)
       use ISO_C_BINDING
       integer(C_SIZE_T), intent(in), value :: n
       real(C_DOUBLE), intent(inout) :: A(n,n)
       integer :: info
     End Function aa_la_inv
  End Interface

  Interface
     Function aa_la_care_laub( m, n, p, A, B, C, X ) result(info)
       use ISO_C_BINDING
       integer(C_SIZE_T), intent(in), value :: m, n, p
       real(C_DOUBLE), intent(in) :: A(m,m), B(m,n), C(p,m)
       real(C_DOUBLE), intent(out) :: X(m,m)
       integer :: info
     End Function aa_la_care_laub
  End Interface

  !> Cross product
  interface aa_la_cross_sub
     module procedure &
          aa_la_mod_d_cross_sub, aa_la_mod_s_cross_sub
  end interface

  !> Cross product
  interface aa_la_cross
     module procedure &
          aa_la_mod_d_cross_fun, aa_la_mod_s_cross_fun
  end interface

  !> Sum Squared Differences
  interface aa_la_ssd
     module procedure aa_la_mod_d_ssd, aa_la_mod_s_ssd
  end interface

  !> Sum Squared Differences of matrix columns
  interface aa_la_colssd
     module procedure aa_la_mod_d_colssd, aa_la_mod_s_colssd
  end interface

  !> Angle between vectors
  interface aa_la_angle
     module procedure aa_la_mod_d_angle, aa_la_mod_s_angle
  end interface

  !> Norm-2 of a vector
  interface aa_la_norm2
     module procedure aa_la_mod_d_norm2, aa_la_mod_s_norm2
  end interface

  !> Make a unit vector
  interface aa_la_unit_sub
     module procedure aa_la_mod_d_unit_sub1, aa_la_mod_s_unit_sub1, &
          aa_la_mod_d_unit_sub2, aa_la_mod_s_unit_sub2
  end interface

  !> Make a unit vector
  interface aa_la_unit
     module procedure aa_la_mod_d_unit_fun, aa_la_mod_s_unit_fun
  end interface

  !> Linear Interpolation of vectors
  interface aa_la_lerp
     module procedure aa_la_mod_d_lerp, aa_la_mod_s_lerp
  end interface


  interface aa_la_3spline_param
     module procedure aa_la_mod_d_3spline_param, aa_la_mod_s_3spline_param
  end interface

  interface aa_la_3spline
     module procedure aa_la_mod_d_3spline, aa_la_mod_s_3spline
  end interface

  interface aa_la_5spline_param
     module procedure aa_la_mod_d_5spline_param, aa_la_mod_s_5spline_param
  end interface

  interface aa_la_5spline
     module procedure aa_la_mod_d_5spline, aa_la_mod_s_5spline
  end interface


  !> Vector projection
  interface aa_la_proj_sub
     module procedure aa_la_mod_d_proj_sub, aa_la_mod_s_proj_sub
  end interface

  !> Vector projection
  interface aa_la_proj
     module procedure aa_la_mod_d_proj_fun, aa_la_mod_s_proj_fun
  end interface

  !> Vector orthogonal projection
  interface aa_la_orth_sub
     module procedure aa_la_mod_d_orth_sub, aa_la_mod_s_orth_sub
  end interface

  !> Vector orthogonal projection
  interface aa_la_orth
     module procedure aa_la_mod_d_orth_fun, aa_la_mod_s_orth_fun
  end interface

  !> Standard deviation
  interface aa_la_std
     module procedure aa_la_mod_d_vecstd, aa_la_mod_s_vecstd
  end interface

  !> Mean of matrix columns
  interface aa_la_colmean
     module procedure aa_la_mod_d_colmean, aa_la_mod_s_colmean
  end interface

  !> Mean of matrix rows
  interface aa_la_rowmean
     module procedure aa_la_mod_d_rowmean, aa_la_mod_s_rowmean
  end interface

  !> Covariance of matrix columns
  interface aa_la_colcov
     module procedure aa_la_mod_d_colcov, aa_la_mod_s_colcov
  end interface

  !> Fit hyperplane to matrix columns
  interface aa_la_colfit
     module procedure aa_la_mod_d_colfit, aa_la_mod_s_colfit
  end interface

  !> Solve assignment problem
  interface aa_la_assign_hungarian
     module procedure aa_la_mod_d_assign_hungarian, aa_la_mod_s_assign_hungarian
  end interface

contains

  !! Preprocessor type generics hack


# 1 "src/la_implf.F90" 1
!! -*- mode: F90; -*-
!!
!! Copyright (c) 2012, Georgia Tech Research Corporation
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

!! FILE: la_float.F90
!! BRIEF: Linear Algebra Functions
!! AUTHOR: Neil T. Dantam
!!
!! This file is included multiple times with macros defined for
!! different types


# 1 "./include/amino/def.F90" 1

# 1 "./include/amino/def.h" 1
# 3 "./include/amino/def.F90" 2
# 49 "src/la_implf.F90" 2

!!------------------!!
!! FLOATING and INT !!
!!------------------!!

!> Cross product
!!
!! \param[in] x first vector
!! \param[in] y second vector
!! \param[out] z result
pure subroutine aa_la_mod_d_cross_sub(x, y, z)
  real(C_DOUBLE), intent(out) :: z(:)
  real(C_DOUBLE), intent(in) :: x(:),y(:)
  !integer, dimension(3), parameter :: yzx = [2,3,1], zxy = [3,1,2]
  !z = x(yzx)*y(zxy) - x(zxy)*y(yzx)
  z(1) = x(2)*y(3) - y(2)*x(3)
  z(2) = y(1)*x(3) - x(1)*y(3)
  z(3) = x(1)*y(2) - y(1)*x(2)
end subroutine aa_la_mod_d_cross_sub

!> Cross product
!!
!! \param[in] x first vector
!! \param[in] y second vector
pure function aa_la_mod_d_cross_fun(x, y) result(z)
  real(C_DOUBLE), intent(in) :: x(:),y(:)
  real(C_DOUBLE) :: z(3)
  call aa_la_mod_d_cross_sub(x,y,z)
end function aa_la_mod_d_cross_fun

!> Cross product, C interface
!!
!! \param[in] x first vector
!! \param[in] y second vector
!! \param[out] z result
pure subroutine aa_la_mod_d_cross_c (x, y, z) bind( C, name="aa_la_d_cross" )
  real(C_DOUBLE), intent(out) :: z(3)
  real(C_DOUBLE), intent(in) :: x(3), y(3)
  call aa_la_mod_d_cross_sub(x,y,z)
end subroutine aa_la_mod_d_cross_c

!! SSD

!> Sum of squared differences
!!
!! \param[in] x first vector
!! \param[in] y second vector
pure function aa_la_mod_d_ssd(x, y) result(a)
  real(C_DOUBLE), intent(in) :: x(:), y(:)
  real(C_DOUBLE) :: a
  !a = dot_product(x-y,x-y)
  a = sum( (x-y)**2 )
end function aa_la_mod_d_ssd

!> Sum of squared differences, C interface
!!
!! \param[in] n vector sizes
!! \param[in] x first vector
!! \param[in] incx stepsize of x
!! \param[in] y second vector
!! \param[in] incy stepsize of y
pure function aa_la_mod_d_ssd_c (n, x, incx, y, incy) bind( C, name="aa_la_d_ssd" ) result(a)
  integer (c_size_t), intent(in), value :: n, incx, incy
  real(C_DOUBLE), intent(in) :: x(n*incx), y(n*incy)
  real(C_DOUBLE) :: a
  a = aa_la_mod_d_ssd(x(1:n*incx:incx),y(1:n*incy:incy))
end function aa_la_mod_d_ssd_c

!> Sum of squared differences of columns
!!
!! \param[in] A first data matrix
!! \param[in] B second data matrix
!! \param[out] C SSD between colums of A and B,
!! row of C is index to col of A and
!! col of C is index to col of B
pure subroutine aa_la_mod_d_colssd(A, B, C)
  real(C_DOUBLE), intent(in) :: A(:,:), B(:,:)
  real(C_DOUBLE), intent(out) :: C(:,:)
  integer :: i,j
  forall (i=1:size(C,1))
     forall (j=1:size(C,2))
        C(i,j) = aa_la_mod_d_ssd(A(:,i), B(:,j))
     end forall
  end forall
end subroutine aa_la_mod_d_colssd

!> Sum of squared differences of columns, C interface
!!
!! \param[in] m rows of A and B
!! \param[in] n cols of A and rows of C
!! \param[in] p cols of B and cols of C
!! \param[in] A first data matrix
!! \param[in] lda leading dimension of A
!! \param[in] B second data matrix
!! \param[in] ldb leading dimension of B
!! \param[out] C SSD between colums of A and B,
!! row of C is index to col of A and
!! col of C is index to col of B
!! \param[in] ldc leading dimension of C
pure subroutine aa_la_mod_d_colssd_c(m,n,p,A,lda,B,ldb,C,ldc)
  integer(c_size_t),intent(in),value :: m,n,p,lda,ldb,ldc
  real(C_DOUBLE), intent(in) :: A(lda,n),B(ldb,n)
  real(C_DOUBLE), intent(out) :: C(ldc,p)
  call aa_la_mod_d_colssd( A(1:m,:), B(1:m,:), C(1:n,:) )
end subroutine aa_la_mod_d_colssd_c


!!---------------------!!
!! FLOATING POINT ONLY !!
!!---------------------!!



!! Angle

!> Angle between vectors
!!
!! Method from: Kahan, Willliam. How futile are mindless assessments
!! of roundoff in floating-point computation. 2006
!!
!! \param[in] x first vector
!! \param[in] y second vector
pure function aa_la_mod_d_angle( x, y ) result(r)
  real(C_DOUBLE), intent(in) :: x(:),y(:)
  real(C_DOUBLE) :: r, nx, ny, s, c
  integer i
  nx = sqrt(dot_product(x,x))
  ny = sqrt(dot_product(y,y))
  s = real(0, C_DOUBLE)
  c = real(0, C_DOUBLE)
  do i=1,size(x)
     s = s + (ny*x(i) - nx*y(i))**2
     c = c + (ny*x(i) + nx*y(i))**2
  end do
  r = real(2,C_DOUBLE)*atan2(sqrt(s),sqrt(c))
end function aa_la_mod_d_angle

!> Angle between vectors, C interface
!!
!! \param[in] n length of vectors
!! \param[in] x first vector
!! \param[in] incx stepsize of x
!! \param[in] y second vector
!! \param[in] incy stepsize of y
pure function aa_la_mod_d_angle_c (n, x, incx, y, incy) bind( C, name="aa_la_d_angle" ) result(a)
  integer(C_SIZE_T), intent(in), value :: n, incx, incy
  real(C_DOUBLE), intent(in) :: x(n*incx),y(n*incy)
  real(C_DOUBLE) :: a
  a = aa_la_mod_d_angle( x(1:n:incx), y(1:n:incy) )
end function aa_la_mod_d_angle_c


!! Norm2

!> Norm-2 of vector
!!
!! \param[in] x input vector
pure function aa_la_mod_d_norm2( x ) result(a)
  real(C_DOUBLE), intent(in) :: x(:)
  real(C_DOUBLE) :: a
  real(C_DOUBLE) :: scl, ssq
  integer :: i
  ssq = real(1,C_DOUBLE)
  scl = real(0,C_DOUBLE)
  do i=1,size(x)
     if ( real(0,C_DOUBLE) /= x(i) ) then
        if( scl < abs(x(i)) ) then
           ssq = real(1,C_DOUBLE) + ssq * (scl/abs(x(i)))**2
           scl = abs(x(i))
        else
           ssq = ssq + (abs(x(i))/scl)**2
        end if
     end if
  end do
  a = scl * sqrt(ssq)
end function aa_la_mod_d_norm2

!> Make unit vector
!!
!! \param[inout] y vector to make unit
pure subroutine aa_la_mod_d_unit_sub1( y )
  real(C_DOUBLE), intent(inout) :: y(:)
  y = y / aa_la_mod_d_norm2(y)
end subroutine aa_la_mod_d_unit_sub1

!> Make unit vector
!!
!! \param[in] x input vector
!! \param[out] y unit vector with same direction as x
pure subroutine aa_la_mod_d_unit_sub2( x, y )
  real(C_DOUBLE), intent(in) :: x(:)
  real(C_DOUBLE), intent(out) :: y(:)
  y = x / aa_la_mod_d_norm2(x)
end subroutine aa_la_mod_d_unit_sub2

!> Make unit vector
!!
!! \param[in] x input vector
pure function aa_la_mod_d_unit_fun( x ) result(y)
  real(C_DOUBLE), intent(in) :: x(:)
  real(C_DOUBLE) :: y(size(x))
  call aa_la_mod_d_unit_sub2(x,y)
end function aa_la_mod_d_unit_fun

!! Proj

!> Vector projection
pure subroutine aa_la_mod_d_proj_sub( a, b, r )
  real(C_DOUBLE), intent(in) :: a(:),b(:)
  real(C_DOUBLE), intent(out) :: r(:)
  r = (dot_product(a,b) * b) / dot_product(b,b)
end subroutine aa_la_mod_d_proj_sub

!> Vector projection
pure function aa_la_mod_d_proj_fun( a, b ) result(r)
  real(C_DOUBLE), intent(in) :: a(:),b(:)
  real(C_DOUBLE) :: r(size(a))
  call aa_la_mod_d_proj_sub(a,b,r)
end function aa_la_mod_d_proj_fun

!! Orth

!> Vector orthogonal projection
pure subroutine aa_la_mod_d_orth_sub( a, b, r )
  real(C_DOUBLE), intent(in) :: a(:),b(:)
  real(C_DOUBLE), intent(out) :: r(:)
  r = a - (dot_product(a,b) * b) / dot_product(b,b)
end subroutine aa_la_mod_d_orth_sub

!> Vector orthogonal projection
pure function aa_la_mod_d_orth_fun( a, b ) result(r)
  real(C_DOUBLE), intent(in) :: a(:),b(:)
  real(C_DOUBLE) :: r(size(a))
  call aa_la_mod_d_orth_sub(a,b,r)
end function aa_la_mod_d_orth_fun


!! Mean/STD
pure function aa_la_mod_d_vecstd(x,mu) result(sigma)
  real(C_DOUBLE), intent(in) :: x(:), mu
  real(C_DOUBLE) :: sigma
  sigma = sqrt( DBLE(1)/(DBLE(size(x)-1)) * sum( (x-mu)**2 ) )
end function aa_la_mod_d_vecstd

pure function aa_la_mod_d_vecstd_c (n,x,incx,mu) bind( C, name="aa_la_d_vecstd" ) result(sigma)
  integer(c_size_t), intent(in), value :: n,incx
  real(C_DOUBLE), intent(in), value :: mu
  real(C_DOUBLE), intent(in) :: x(n*incx)
  real(C_DOUBLE) :: sigma
  sigma = aa_la_std(x(1:n:incx),mu)
end function aa_la_mod_d_vecstd_c

!! Colmean

!> Mean of columns
pure subroutine aa_la_mod_d_colmean( A, x )
  real(C_DOUBLE), intent(in) :: A(:,:)
  real(C_DOUBLE), intent(out) :: x(:)
  integer :: i
  !x = DBLE(0)
  !do i = 1,size(A,2)
     !x = x + A(:,i)
  !end do
  !x = x / DBLE(size(A,2))
  forall (i = 1:size(x))
     x(i) = sum(A(i,:)) / DBLE(size(A,2))
  end forall
end subroutine aa_la_mod_d_colmean

!> Mean of columns, C interface
pure subroutine aa_la_mod_d_colmean_c (m, n, A, lda, x) bind( C, name="aa_la_d_colmean" )
  integer(C_SIZE_T), intent(in), value :: m,n,lda
  real(C_DOUBLE), intent(in) :: A(lda,n)
  real(C_DOUBLE), intent(out) :: x(m)
  call aa_la_mod_d_colmean(A,x)
end subroutine aa_la_mod_d_colmean_c


!> Mean of rows
pure subroutine aa_la_mod_d_rowmean( A, x )
  real(C_DOUBLE), intent(in) :: A(:,:)
  real(C_DOUBLE), intent(out) :: x(:)
  integer :: i
  forall (i = 1:size(x))
     x(i) = sum(A(:,i)) / DBLE(size(A,1))
  end forall
end subroutine aa_la_mod_d_rowmean

!> Mean of rows, C interface
pure subroutine aa_la_mod_d_rowmean_c (m, n, A, lda, x) bind( C, name="aa_la_d_rowmean" )
  integer(C_SIZE_T), intent(in), value :: m,n,lda
  real(C_DOUBLE), intent(in) :: A(lda,n)
  real(C_DOUBLE), intent(out) :: x(m)
  call aa_la_mod_d_rowmean(A,x)
end subroutine aa_la_mod_d_rowmean_c

!! Colcov

!> Covariance of columns
pure subroutine aa_la_mod_d_colcov( A, x, E )
  real(C_DOUBLE), intent(in) :: A(:,:)
  real(C_DOUBLE), intent(in) :: x(:)
  real(C_DOUBLE), intent(out) :: E(:,:)

  integer :: k,i,j
  E = DBLE(0)
  do k = 1,size(A,2)
     forall (i=1:size(x))
        forall (j=1:size(x))
           E(i,j) = E(i,j) + (A(i,k)-x(i)) * (A(j,k)-x(j))
        end forall
     end forall
  end do
  E = E / DBLE(size(A,2)-1)
end subroutine aa_la_mod_d_colcov


!> Covariance of columns, C interface
pure subroutine aa_la_mod_d_colcov_c (m, n, A, lda, x, E, lde) bind( C, name="aa_la_d_colcov" )
  integer(C_SIZE_T), intent(in), value :: m,n,lda,lde
  real(C_DOUBLE), intent(in) :: A(lda,n)
  real(C_DOUBLE), intent(in) :: x(m)
  real(C_DOUBLE), intent(out) :: E(lde,m)
  call aa_la_mod_d_colcov(A,x,E)
end subroutine aa_la_mod_d_colcov_c

!! Fits

!> Fit hyperplane to columns
subroutine aa_la_mod_d_colfit( A, x )
  use amino_mem
  real(C_DOUBLE), intent(in) :: A(:,:)
  real(C_DOUBLE), intent(out) :: x(:)

  real(C_DOUBLE) :: At(size(A,2),size(A,1))
  real(C_DOUBLE) :: b(size(A,2)), xout(size(A,1))
  integer :: m,n,i
  real(C_DOUBLE) :: d
  m = size(A,1) ! space size
  n = size(A,2) ! data points

  ! construct normed A,b matrix
  forall (i=1:n)
     At(i,:) = A(:,i) / aa_la_norm2(A(:,i))
     b(i) = DBLE(-1) / aa_la_norm2(A(:,i))
  end forall
  ! solve
  call aa_la_d_lls( int(n,c_size_t), int(m,c_size_t), int(1,c_size_t), &
       At, int(n,c_size_t), b, int(n,c_size_t), xout, int(m,c_size_t) )
  ! normalize
  d = aa_la_norm2(xout)
  x(1:m) = xout/d
  x(m+1) = DBLE(1)/d
end subroutine aa_la_mod_d_colfit

!> Fit hyperplane to columns, C interface
subroutine aa_la_mod_d_colfit_c (m, n, A, lda, x) bind( C, name="aa_la_d_colfit" )
  integer(c_size_t), intent(in), value :: m,n,lda
  real(C_DOUBLE), intent(out) :: A(lda,n), x(int(m)+1)
  call aa_la_mod_d_colfit( A, x )
end subroutine aa_la_mod_d_colfit_c

pure subroutine aa_la_mod_d_lerp (u, v1, v2, vu)
  real(C_DOUBLE), intent(in) :: v1(:), v2(:)
  real(C_DOUBLE), intent(in) :: u
  real(C_DOUBLE), intent(out) :: vu(:)
  vu = v1 + u * (v2 - v1 )
end subroutine aa_la_mod_d_lerp

subroutine aa_la_mod_d_lerp_c (n, u, v1, inc1, v2, inc2, vu, incu) bind( C, name="aa_la_d_lerp" )
  integer(c_size_t), intent(in), value :: n, inc1, inc2, incu
  real(C_DOUBLE), intent(in) :: v1(n*inc1), v2(n*inc2)
  real(C_DOUBLE), intent(in), value :: u
  real(C_DOUBLE), intent(out) :: vu(n*incu)
  call aa_la_lerp( u, v1(1:size(v1):inc1), v2(1:size(v2):inc2), vu(1:size(vu):incu) )
end subroutine aa_la_mod_d_lerp_c

!> Compute cubic spline parameters for time from x1 to x2
!> Note, a0 = x1 and a1 = dx1
pure subroutine aa_la_mod_d_3spline_param (tf, x1, dx1, x2, dx2, a2, a3)
  real(C_DOUBLE), intent(in) :: tf
  real(C_DOUBLE), dimension(:), intent(in) :: x1, x2, dx1, dx2
  real(C_DOUBLE), dimension(:), intent(out) :: a2, a3
  a2 = 3/tf**2 * (x2-x1) - 2/tf * dx1 - 1/tf * dx2
  a3 = -2/tf**3 * (x2-x1) + 1/tf**2 * (dx2+dx1)
end subroutine aa_la_mod_d_3spline_param

!> Compute cubic spline values
pure subroutine aa_la_mod_d_3spline (t, x1, dx1, a2, a3, x, dx, ddx)
  real(C_DOUBLE), dimension(:), intent(in) :: x1, dx1, a2, a3
  real(C_DOUBLE), intent(in) :: t
  real(C_DOUBLE), dimension(:), intent(out) :: x, dx, ddx
  x = x1 + t*dx1 + t**2*a2 + t**3*a3
  dx = dx1 + 2*t*a2 + 3*t**2*a3
  ddx = 2*a2 + 6*t*a3
end subroutine aa_la_mod_d_3spline

subroutine aa_la_mod_d_3spline_param_c (n, tf, x1, incx1, dx1, incdx1, x2, incx2, dx2, incdx2, a2, a3) bind( C, name="aa_la_d_3spline_param" )
  integer(c_size_t), intent(in), value :: n, incx1, incdx1, incx2, incdx2
  real(C_DOUBLE), value :: tf
  real(C_DOUBLE), intent(in) :: x1(n*incx1), x2(n*incx2), dx1(n*incdx1), dx2(n*incdx2)
  real(C_DOUBLE), intent(out) :: a2(n), a3(n)
  call aa_la_3spline_param(tf, &
       x1(1:size(x1):incx1), dx1(1:size(dx1):incdx1), &
       x2(1:size(x2):incx2), dx2(1:size(dx2):incdx2), &
       a2, a3 )
end subroutine aa_la_mod_d_3spline_param_c

subroutine aa_la_mod_d_3spline_c (n, tf, x1, incx1, dx1, incdx1, a2, a3, x, incx, dx, incdx, ddx, incddx) bind( C, name="aa_la_d_3spline" )
  integer(c_size_t), intent(in), value :: n, incx1, incdx1, incx, incdx, incddx
  real(C_DOUBLE), value :: tf
  real(C_DOUBLE), intent(in) :: x1(n*incx1), dx1(n*incdx1), a2(n), a3(n)
  real(C_DOUBLE), intent(out) :: x(n*incx), dx(n*incdx), ddx(n*incddx)
  call aa_la_3spline(tf, &
       x1(1:size(x1):incx1), dx1(1:size(dx1):incdx1), a2, a3, &
       x(1:size(x):incx), dx(1:size(dx):incdx), ddx(1:size(ddx):incddx) )
end subroutine aa_la_mod_d_3spline_c

!> Compute quintic spline parameters for time from x1 to x2
!> Note, a0 = x1, a1 = dx1, and a2 = ddx1/2
pure subroutine aa_la_mod_d_5spline_param (tf, x1, dx1, ddx1, x2, dx2, ddx2, a3, a4, a5)
  real(C_DOUBLE), intent(in) :: tf
  real(C_DOUBLE), dimension(:), intent(in) :: x1, x2, dx1, dx2, ddx1, ddx2
  real(C_DOUBLE), dimension(:), intent(out) :: a3, a4, a5
  a3 = ( 20*x2 - 20*x1 - (8*dx2 + 12*dx1)*tf - (3*ddx1-ddx2)*tf**2 ) / (2*tf**3)
  a4 = ( 30*x1 - 30*x2 + (14*dx2 + 16*dx1)*tf + (3*ddx1 - 2*ddx2)*tf**2 ) / (2*tf**4)
  a5 = ( 12*x2 - 12*x1 - (6*dx2 + 6*dx1)*tf - (ddx1 - ddx2)*tf**2 ) / (2*tf**5)
end subroutine aa_la_mod_d_5spline_param

pure subroutine aa_la_mod_d_5spline (t, x1, dx1, ddx1, a3, a4, a5, x, dx, ddx)
  real(C_DOUBLE), dimension(:), intent(in) :: x1, dx1, ddx1, a3, a4, a5
  real(C_DOUBLE), intent(in) :: t
  real(C_DOUBLE), dimension(:), intent(out) :: x, dx, ddx
  x = x1 + t*dx1 + 0.5*t**2*ddx1 + t**3*a3 + t**4*a4 + t**5*a5
  dx = dx1 + t*ddx1 + 3*t**2*a3 + 4*t**3*a4 + 5*t**4*a5
  ddx = ddx1 + 6*t*a3 + 12*t**2*a4 + 20*t**3*a5
end subroutine aa_la_mod_d_5spline

subroutine aa_la_mod_d_5spline_param_c (n, tf, x1, incx1, dx1, incdx1, ddx1, incddx1, x2, incx2, dx2, incdx2, ddx2, incddx2, a3, a4, a5) bind( C, name="aa_la_d_5spline_param" )
  integer(c_size_t), intent(in), value :: n, incx1, incdx1, incx2, incdx2, incddx1, incddx2
  real(C_DOUBLE), value :: tf
  real(C_DOUBLE), intent(in) :: x1(n*incx1), x2(n*incx2), dx1(n*incdx1), dx2(n*incdx2), ddx1(n*incddx1), ddx2(n*incddx2)
  real(C_DOUBLE), intent(out) :: a3(n), a4(n), a5(n)
  call aa_la_5spline_param(tf, &
       x1(1:size(x1):incx1), dx1(1:size(dx1):incdx1), ddx1(1:size(ddx1):incddx1), &
       x2(1:size(x2):incx2), dx2(1:size(dx2):incdx2), ddx2(1:size(ddx2):incddx2), &
       a3, a4, a5 )
end subroutine aa_la_mod_d_5spline_param_c

subroutine aa_la_mod_d_5spline_c (n, tf, x1, incx1, dx1, incdx1, ddx1, incddx1, a3, a4, a5, x, incx, dx, incdx, ddx, incddx) bind( C, name="aa_la_d_5spline" )
  integer(c_size_t), intent(in), value :: n, incx1, incdx1, incx, incdx, incddx1, incddx
  real(C_DOUBLE), value :: tf
  real(C_DOUBLE), intent(in) :: x1(n*incx1), dx1(n*incdx1), ddx1(n*incddx1)
  real(C_DOUBLE), intent(in) :: a3(n), a4(n), a5(n)
  real(C_DOUBLE), intent(out) :: x(n*incx), dx(n*incdx), ddx(n*incddx)
  call aa_la_5spline(tf, &
       x1(1:size(x1):incx1), dx1(1:size(dx1):incdx1), ddx1(1:size(ddx1):incddx1), &
       a3, a4, a5, &
       x(1:size(x):incx), dx(1:size(dx):incdx), ddx(1:size(ddx):incddx) )
end subroutine aa_la_mod_d_5spline_c

subroutine aa_la_mod_d_assign_hungarian_c (m, n, A, lda, row, col) bind( C, name="aa_la_d_assign_hungarian" )
  use amino_mem
  integer(c_size_t), intent(in), value :: m,n,lda
  real(C_DOUBLE),intent(in) :: A(lda,n)
  integer(c_size_t),intent(out) :: row(m),col(n)

  integer, pointer :: rowi(:), coli(:)
  call aa_mem_region_alloc( m, rowi )
  call aa_mem_region_alloc( m, coli )

  call aa_la_mod_d_assign_hungarian(A(1:m,1:n),rowi,coli)
  ! convert to C indices
  row = int(rowi-1,c_size_t)
  col = int(coli-1,c_size_t)

  call aa_mem_region_pop( rowi )
end subroutine aa_la_mod_d_assign_hungarian_c


!> Solve assignment problem via Hungarian algorithm, padding if necessary
subroutine aa_la_mod_d_assign_hungarian(A,row_assign,col_assign)
  use amino_mem
  real(C_DOUBLE), intent(in) :: A(:,:)
  integer, intent(out) :: row_assign(:),col_assign(:)

  integer :: m,n,p
  integer, pointer :: alt_assign( : )
  real(C_DOUBLE), pointer :: B(:,:)

  m = size(A,1)
  n = size(A,2)
  p = max(m,n)

  call aa_mem_region_alloc( p, p, b)
  B = real(0,C_DOUBLE)
  B(1:m,1:n) = A

  if ( m > n ) then
     ! more rows
     call aa_mem_region_alloc( p, alt_assign )
     call aa_la_mod_d_assign_hungarian_square(B,row_assign,alt_assign)
     col_assign = alt_assign(1:n)
     where (row_assign > n)
        row_assign = -1
     end where
  elseif ( m < n ) then
     ! more cols
     call aa_mem_region_alloc( p, alt_assign )
     call aa_la_mod_d_assign_hungarian_square(B,alt_assign,col_assign)
     row_assign = alt_assign(1:m)
     where (col_assign > m)
        col_assign = -1
     end where
  else
     ! equal rows / cols
     call aa_la_mod_d_assign_hungarian_square(B,row_assign,col_assign)
  end if

  call aa_mem_region_pop(B)

end subroutine aa_la_mod_d_assign_hungarian

!> Solve square assignment problem via Hungarian algorithm
subroutine aa_la_mod_d_assign_hungarian_square(A,row_assign,col_assign)
  use amino_mem
  real(C_DOUBLE), intent(inout) :: A(:,:)
  integer, intent(out) :: row_assign(:),col_assign(:)

  integer, pointer :: path(:,:)
  logical(4), pointer :: star(:,:)
  logical(4), pointer :: prime(:,:)
  logical(4), pointer :: row(:),col(:)

  integer :: i,j,k,n
  real(C_DOUBLE) :: mv

  n = size(A,1)
  call aa_mem_region_alloc(2,n**2,path)
  call aa_mem_region_alloc(n,n,star)
  call aa_mem_region_alloc(n,n,prime)
  call aa_mem_region_alloc(n,row)
  call aa_mem_region_alloc(n,col)

  ! --- Step 1 ---
  ! subtract smallest from each col
  forall (j=1:n)
     A(:,j) = A(:,j) - minval(A(:,j))
  end forall
  ! subtract smallest from each row
  forall (i=1:n)
     A(i,:) = A(i,:) - minval(A(i,:))
  end forall

  ! --- Step 2 ---
  ! Star each zero in A
  star = .false.
  row = .false.
  do j=1,n
     do i=1,n
        if ( real(0,C_DOUBLE) >= A(i,j) .and. &
             .not. row(i) ) then
           row(i) = .true.
           star(i,j) = .true.
           exit ! one mark per column
        end if
     end do
  end do

  ! --- Step 3 ---
  ! Cover starred columns
  step3: do
     forall (j=1:n)
       col(j) = any(star(:,j))
    end forall
     ! check if all covered
     if ( count(col) == n ) then
        exit step3
     end if

     ! --- Step 4 ---
     ! Find uncovered zero and prime it or goto 6.
     ! If star in row, cover row, uncover stars column,
     ! repeat for all uncovered zeros. Otherwise, goto 5.
     prime = .false.
     row = .false.
     step4: do
        do j=1,n
           if ( .not. col(j) ) then
              do i=1,n
                 if ( real(0,C_DOUBLE) >= A(i,j) .and. &
                      .not. row(i) ) then
                    ! prime the uncovered zero
                    prime(i,j) = .true.
                    do k=1,n
                       if ( star(i,k) ) then
                          row(i) = .true. ! cover star row
                          col(k) = .false. ! uncover stars column
                          cycle step4
                       end if
                    end do
                    ! nothing starred in row
                    path(1,1) = i
                    path(2,1) = j
                    call make_path() ! step5
                    cycle step3
                 end if
              end do
           end if
        end do

        ! no uncovered zeros

        ! --- Step 6 ---
        mv = HUGE(A(1,1))
        ! find smallest uncovered value in A
        row = .not. row
        do j=1,n
           if ( .not. col(j) ) then
              mv = min( mv, minval( A(:,j), row ) )
           end if
        end do
        row = .not. row

        ! add minval to covered rows
        ! subtract minval from uncovered cols
        do j=1,n
           if( col(j) ) then
              where (row) A(:,j) = A(:,j) + mv
           else
              where (.not. row) A(:,j) = A(:,j) - mv
           end if
        end do
     end do step4
  end do step3

  ! --- Step 7 (The End) ---
  ! Compute assignments
  do j=1,n
     do i=1,n
        if ( star(i,j) ) then
           row_assign(i) = j
           col_assign(j) = i
           exit ! one assignment per row/col
        end if
     end do
  end do

  ! deallocate
  call aa_mem_region_pop(path)

  contains

    ! --- Step 5 ---
    !! construct series of alternating primes and stars
    subroutine make_path()
      integer :: k,i,j,c
      c = 1
      ! loop till no starred column
      do k=1,n
         ! find starred column
         do i=1,n
            if ( star(i, path(2,c)) ) then
               c = c+1
               path(1,c) = i ! row of starred zero
               path(2,c) = path(2,c-1) ! col of starred zero
               do j=1,n
                  if ( prime( path(1,c), j ) ) then
                     c = c+1
                     path(1,c) = path(1,c-1) ! row of primed zero
                     path(2,c) = j ! col of primed zero
                     exit
                  end if
               end do
               exit
            end if
         end do
      end do
      ! convert path
      ! forall (k=1:c)
      ! star( path(1,k), path(2,k) ) = &
      ! .not. star( path(1,k), path(2,k) )
      ! end forall
      do k=1,c
         star( path(1,k), path(2,k) ) = &
              .not. star( path(1,k), path(2,k) )
      end do
    end subroutine make_path
end subroutine aa_la_mod_d_assign_hungarian_square

subroutine aa_la_mod_d_assign_hungarian_max2min(A)
  real(C_DOUBLE), intent(inout) :: A(:,:)
  A = maxval(A) - A
end subroutine aa_la_mod_d_assign_hungarian_max2min

subroutine aa_la_mod_d_assign_hungarian_max2min_c (m, n, A, lda) bind( C, name="aa_la_d_assign_hungarian_max2min" )
  integer(c_size_t), intent(in), value :: m,n,lda
  real(C_DOUBLE),intent(inout) :: A(lda,n)
  call aa_la_mod_d_assign_hungarian_max2min( A(1:m,1:n) )
end subroutine aa_la_mod_d_assign_hungarian_max2min_c







# 1 "./include/amino/undef.F90" 1


# 1 "./include/amino/undef.h" 1
# 4 "./include/amino/undef.F90" 2
# 756 "src/la_implf.F90" 2
# 246 "src/la_mod.F90" 2


# 1 "src/la_implf.F90" 1
!! -*- mode: F90; -*-
!!
!! Copyright (c) 2012, Georgia Tech Research Corporation
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

!! FILE: la_float.F90
!! BRIEF: Linear Algebra Functions
!! AUTHOR: Neil T. Dantam
!!
!! This file is included multiple times with macros defined for
!! different types


# 1 "./include/amino/def.F90" 1

# 1 "./include/amino/def.h" 1
# 3 "./include/amino/def.F90" 2
# 49 "src/la_implf.F90" 2

!!------------------!!
!! FLOATING and INT !!
!!------------------!!

!> Cross product
!!
!! \param[in] x first vector
!! \param[in] y second vector
!! \param[out] z result
pure subroutine aa_la_mod_s_cross_sub(x, y, z)
  real(C_FLOAT), intent(out) :: z(:)
  real(C_FLOAT), intent(in) :: x(:),y(:)
  !integer, dimension(3), parameter :: yzx = [2,3,1], zxy = [3,1,2]
  !z = x(yzx)*y(zxy) - x(zxy)*y(yzx)
  z(1) = x(2)*y(3) - y(2)*x(3)
  z(2) = y(1)*x(3) - x(1)*y(3)
  z(3) = x(1)*y(2) - y(1)*x(2)
end subroutine aa_la_mod_s_cross_sub

!> Cross product
!!
!! \param[in] x first vector
!! \param[in] y second vector
pure function aa_la_mod_s_cross_fun(x, y) result(z)
  real(C_FLOAT), intent(in) :: x(:),y(:)
  real(C_FLOAT) :: z(3)
  call aa_la_mod_s_cross_sub(x,y,z)
end function aa_la_mod_s_cross_fun

!> Cross product, C interface
!!
!! \param[in] x first vector
!! \param[in] y second vector
!! \param[out] z result
pure subroutine aa_la_mod_s_cross_c (x, y, z) bind( C, name="aa_la_s_cross" )
  real(C_FLOAT), intent(out) :: z(3)
  real(C_FLOAT), intent(in) :: x(3), y(3)
  call aa_la_mod_s_cross_sub(x,y,z)
end subroutine aa_la_mod_s_cross_c

!! SSD

!> Sum of squared differences
!!
!! \param[in] x first vector
!! \param[in] y second vector
pure function aa_la_mod_s_ssd(x, y) result(a)
  real(C_FLOAT), intent(in) :: x(:), y(:)
  real(C_FLOAT) :: a
  !a = dot_product(x-y,x-y)
  a = sum( (x-y)**2 )
end function aa_la_mod_s_ssd

!> Sum of squared differences, C interface
!!
!! \param[in] n vector sizes
!! \param[in] x first vector
!! \param[in] incx stepsize of x
!! \param[in] y second vector
!! \param[in] incy stepsize of y
pure function aa_la_mod_s_ssd_c (n, x, incx, y, incy) bind( C, name="aa_la_s_ssd" ) result(a)
  integer (c_size_t), intent(in), value :: n, incx, incy
  real(C_FLOAT), intent(in) :: x(n*incx), y(n*incy)
  real(C_FLOAT) :: a
  a = aa_la_mod_s_ssd(x(1:n*incx:incx),y(1:n*incy:incy))
end function aa_la_mod_s_ssd_c

!> Sum of squared differences of columns
!!
!! \param[in] A first data matrix
!! \param[in] B second data matrix
!! \param[out] C SSD between colums of A and B,
!! row of C is index to col of A and
!! col of C is index to col of B
pure subroutine aa_la_mod_s_colssd(A, B, C)
  real(C_FLOAT), intent(in) :: A(:,:), B(:,:)
  real(C_FLOAT), intent(out) :: C(:,:)
  integer :: i,j
  forall (i=1:size(C,1))
     forall (j=1:size(C,2))
        C(i,j) = aa_la_mod_s_ssd(A(:,i), B(:,j))
     end forall
  end forall
end subroutine aa_la_mod_s_colssd

!> Sum of squared differences of columns, C interface
!!
!! \param[in] m rows of A and B
!! \param[in] n cols of A and rows of C
!! \param[in] p cols of B and cols of C
!! \param[in] A first data matrix
!! \param[in] lda leading dimension of A
!! \param[in] B second data matrix
!! \param[in] ldb leading dimension of B
!! \param[out] C SSD between colums of A and B,
!! row of C is index to col of A and
!! col of C is index to col of B
!! \param[in] ldc leading dimension of C
pure subroutine aa_la_mod_s_colssd_c(m,n,p,A,lda,B,ldb,C,ldc)
  integer(c_size_t),intent(in),value :: m,n,p,lda,ldb,ldc
  real(C_FLOAT), intent(in) :: A(lda,n),B(ldb,n)
  real(C_FLOAT), intent(out) :: C(ldc,p)
  call aa_la_mod_s_colssd( A(1:m,:), B(1:m,:), C(1:n,:) )
end subroutine aa_la_mod_s_colssd_c


!!---------------------!!
!! FLOATING POINT ONLY !!
!!---------------------!!



!! Angle

!> Angle between vectors
!!
!! Method from: Kahan, Willliam. How futile are mindless assessments
!! of roundoff in floating-point computation. 2006
!!
!! \param[in] x first vector
!! \param[in] y second vector
pure function aa_la_mod_s_angle( x, y ) result(r)
  real(C_FLOAT), intent(in) :: x(:),y(:)
  real(C_FLOAT) :: r, nx, ny, s, c
  integer i
  nx = sqrt(dot_product(x,x))
  ny = sqrt(dot_product(y,y))
  s = real(0, C_FLOAT)
  c = real(0, C_FLOAT)
  do i=1,size(x)
     s = s + (ny*x(i) - nx*y(i))**2
     c = c + (ny*x(i) + nx*y(i))**2
  end do
  r = real(2,C_FLOAT)*atan2(sqrt(s),sqrt(c))
end function aa_la_mod_s_angle

!> Angle between vectors, C interface
!!
!! \param[in] n length of vectors
!! \param[in] x first vector
!! \param[in] incx stepsize of x
!! \param[in] y second vector
!! \param[in] incy stepsize of y
pure function aa_la_mod_s_angle_c (n, x, incx, y, incy) bind( C, name="aa_la_s_angle" ) result(a)
  integer(C_SIZE_T), intent(in), value :: n, incx, incy
  real(C_FLOAT), intent(in) :: x(n*incx),y(n*incy)
  real(C_FLOAT) :: a
  a = aa_la_mod_s_angle( x(1:n:incx), y(1:n:incy) )
end function aa_la_mod_s_angle_c


!! Norm2

!> Norm-2 of vector
!!
!! \param[in] x input vector
pure function aa_la_mod_s_norm2( x ) result(a)
  real(C_FLOAT), intent(in) :: x(:)
  real(C_FLOAT) :: a
  real(C_FLOAT) :: scl, ssq
  integer :: i
  ssq = real(1,C_FLOAT)
  scl = real(0,C_FLOAT)
  do i=1,size(x)
     if ( real(0,C_FLOAT) /= x(i) ) then
        if( scl < abs(x(i)) ) then
           ssq = real(1,C_FLOAT) + ssq * (scl/abs(x(i)))**2
           scl = abs(x(i))
        else
           ssq = ssq + (abs(x(i))/scl)**2
        end if
     end if
  end do
  a = scl * sqrt(ssq)
end function aa_la_mod_s_norm2

!> Make unit vector
!!
!! \param[inout] y vector to make unit
pure subroutine aa_la_mod_s_unit_sub1( y )
  real(C_FLOAT), intent(inout) :: y(:)
  y = y / aa_la_mod_s_norm2(y)
end subroutine aa_la_mod_s_unit_sub1

!> Make unit vector
!!
!! \param[in] x input vector
!! \param[out] y unit vector with same direction as x
pure subroutine aa_la_mod_s_unit_sub2( x, y )
  real(C_FLOAT), intent(in) :: x(:)
  real(C_FLOAT), intent(out) :: y(:)
  y = x / aa_la_mod_s_norm2(x)
end subroutine aa_la_mod_s_unit_sub2

!> Make unit vector
!!
!! \param[in] x input vector
pure function aa_la_mod_s_unit_fun( x ) result(y)
  real(C_FLOAT), intent(in) :: x(:)
  real(C_FLOAT) :: y(size(x))
  call aa_la_mod_s_unit_sub2(x,y)
end function aa_la_mod_s_unit_fun

!! Proj

!> Vector projection
pure subroutine aa_la_mod_s_proj_sub( a, b, r )
  real(C_FLOAT), intent(in) :: a(:),b(:)
  real(C_FLOAT), intent(out) :: r(:)
  r = (dot_product(a,b) * b) / dot_product(b,b)
end subroutine aa_la_mod_s_proj_sub

!> Vector projection
pure function aa_la_mod_s_proj_fun( a, b ) result(r)
  real(C_FLOAT), intent(in) :: a(:),b(:)
  real(C_FLOAT) :: r(size(a))
  call aa_la_mod_s_proj_sub(a,b,r)
end function aa_la_mod_s_proj_fun

!! Orth

!> Vector orthogonal projection
pure subroutine aa_la_mod_s_orth_sub( a, b, r )
  real(C_FLOAT), intent(in) :: a(:),b(:)
  real(C_FLOAT), intent(out) :: r(:)
  r = a - (dot_product(a,b) * b) / dot_product(b,b)
end subroutine aa_la_mod_s_orth_sub

!> Vector orthogonal projection
pure function aa_la_mod_s_orth_fun( a, b ) result(r)
  real(C_FLOAT), intent(in) :: a(:),b(:)
  real(C_FLOAT) :: r(size(a))
  call aa_la_mod_s_orth_sub(a,b,r)
end function aa_la_mod_s_orth_fun


!! Mean/STD
pure function aa_la_mod_s_vecstd(x,mu) result(sigma)
  real(C_FLOAT), intent(in) :: x(:), mu
  real(C_FLOAT) :: sigma
  sigma = sqrt( REAL(1)/(REAL(size(x)-1)) * sum( (x-mu)**2 ) )
end function aa_la_mod_s_vecstd

pure function aa_la_mod_s_vecstd_c (n,x,incx,mu) bind( C, name="aa_la_s_vecstd" ) result(sigma)
  integer(c_size_t), intent(in), value :: n,incx
  real(C_FLOAT), intent(in), value :: mu
  real(C_FLOAT), intent(in) :: x(n*incx)
  real(C_FLOAT) :: sigma
  sigma = aa_la_std(x(1:n:incx),mu)
end function aa_la_mod_s_vecstd_c

!! Colmean

!> Mean of columns
pure subroutine aa_la_mod_s_colmean( A, x )
  real(C_FLOAT), intent(in) :: A(:,:)
  real(C_FLOAT), intent(out) :: x(:)
  integer :: i
  !x = REAL(0)
  !do i = 1,size(A,2)
     !x = x + A(:,i)
  !end do
  !x = x / REAL(size(A,2))
  forall (i = 1:size(x))
     x(i) = sum(A(i,:)) / REAL(size(A,2))
  end forall
end subroutine aa_la_mod_s_colmean

!> Mean of columns, C interface
pure subroutine aa_la_mod_s_colmean_c (m, n, A, lda, x) bind( C, name="aa_la_s_colmean" )
  integer(C_SIZE_T), intent(in), value :: m,n,lda
  real(C_FLOAT), intent(in) :: A(lda,n)
  real(C_FLOAT), intent(out) :: x(m)
  call aa_la_mod_s_colmean(A,x)
end subroutine aa_la_mod_s_colmean_c


!> Mean of rows
pure subroutine aa_la_mod_s_rowmean( A, x )
  real(C_FLOAT), intent(in) :: A(:,:)
  real(C_FLOAT), intent(out) :: x(:)
  integer :: i
  forall (i = 1:size(x))
     x(i) = sum(A(:,i)) / REAL(size(A,1))
  end forall
end subroutine aa_la_mod_s_rowmean

!> Mean of rows, C interface
pure subroutine aa_la_mod_s_rowmean_c (m, n, A, lda, x) bind( C, name="aa_la_s_rowmean" )
  integer(C_SIZE_T), intent(in), value :: m,n,lda
  real(C_FLOAT), intent(in) :: A(lda,n)
  real(C_FLOAT), intent(out) :: x(m)
  call aa_la_mod_s_rowmean(A,x)
end subroutine aa_la_mod_s_rowmean_c

!! Colcov

!> Covariance of columns
pure subroutine aa_la_mod_s_colcov( A, x, E )
  real(C_FLOAT), intent(in) :: A(:,:)
  real(C_FLOAT), intent(in) :: x(:)
  real(C_FLOAT), intent(out) :: E(:,:)

  integer :: k,i,j
  E = REAL(0)
  do k = 1,size(A,2)
     forall (i=1:size(x))
        forall (j=1:size(x))
           E(i,j) = E(i,j) + (A(i,k)-x(i)) * (A(j,k)-x(j))
        end forall
     end forall
  end do
  E = E / REAL(size(A,2)-1)
end subroutine aa_la_mod_s_colcov


!> Covariance of columns, C interface
pure subroutine aa_la_mod_s_colcov_c (m, n, A, lda, x, E, lde) bind( C, name="aa_la_s_colcov" )
  integer(C_SIZE_T), intent(in), value :: m,n,lda,lde
  real(C_FLOAT), intent(in) :: A(lda,n)
  real(C_FLOAT), intent(in) :: x(m)
  real(C_FLOAT), intent(out) :: E(lde,m)
  call aa_la_mod_s_colcov(A,x,E)
end subroutine aa_la_mod_s_colcov_c

!! Fits

!> Fit hyperplane to columns
subroutine aa_la_mod_s_colfit( A, x )
  use amino_mem
  real(C_FLOAT), intent(in) :: A(:,:)
  real(C_FLOAT), intent(out) :: x(:)

  real(C_FLOAT) :: At(size(A,2),size(A,1))
  real(C_FLOAT) :: b(size(A,2)), xout(size(A,1))
  integer :: m,n,i
  real(C_FLOAT) :: d
  m = size(A,1) ! space size
  n = size(A,2) ! data points

  ! construct normed A,b matrix
  forall (i=1:n)
     At(i,:) = A(:,i) / aa_la_norm2(A(:,i))
     b(i) = REAL(-1) / aa_la_norm2(A(:,i))
  end forall
  ! solve
  call aa_la_s_lls( int(n,c_size_t), int(m,c_size_t), int(1,c_size_t), &
       At, int(n,c_size_t), b, int(n,c_size_t), xout, int(m,c_size_t) )
  ! normalize
  d = aa_la_norm2(xout)
  x(1:m) = xout/d
  x(m+1) = REAL(1)/d
end subroutine aa_la_mod_s_colfit

!> Fit hyperplane to columns, C interface
subroutine aa_la_mod_s_colfit_c (m, n, A, lda, x) bind( C, name="aa_la_s_colfit" )
  integer(c_size_t), intent(in), value :: m,n,lda
  real(C_FLOAT), intent(out) :: A(lda,n), x(int(m)+1)
  call aa_la_mod_s_colfit( A, x )
end subroutine aa_la_mod_s_colfit_c

pure subroutine aa_la_mod_s_lerp (u, v1, v2, vu)
  real(C_FLOAT), intent(in) :: v1(:), v2(:)
  real(C_FLOAT), intent(in) :: u
  real(C_FLOAT), intent(out) :: vu(:)
  vu = v1 + u * (v2 - v1 )
end subroutine aa_la_mod_s_lerp

subroutine aa_la_mod_s_lerp_c (n, u, v1, inc1, v2, inc2, vu, incu) bind( C, name="aa_la_s_lerp" )
  integer(c_size_t), intent(in), value :: n, inc1, inc2, incu
  real(C_FLOAT), intent(in) :: v1(n*inc1), v2(n*inc2)
  real(C_FLOAT), intent(in), value :: u
  real(C_FLOAT), intent(out) :: vu(n*incu)
  call aa_la_lerp( u, v1(1:size(v1):inc1), v2(1:size(v2):inc2), vu(1:size(vu):incu) )
end subroutine aa_la_mod_s_lerp_c

!> Compute cubic spline parameters for time from x1 to x2
!> Note, a0 = x1 and a1 = dx1
pure subroutine aa_la_mod_s_3spline_param (tf, x1, dx1, x2, dx2, a2, a3)
  real(C_FLOAT), intent(in) :: tf
  real(C_FLOAT), dimension(:), intent(in) :: x1, x2, dx1, dx2
  real(C_FLOAT), dimension(:), intent(out) :: a2, a3
  a2 = 3/tf**2 * (x2-x1) - 2/tf * dx1 - 1/tf * dx2
  a3 = -2/tf**3 * (x2-x1) + 1/tf**2 * (dx2+dx1)
end subroutine aa_la_mod_s_3spline_param

!> Compute cubic spline values
pure subroutine aa_la_mod_s_3spline (t, x1, dx1, a2, a3, x, dx, ddx)
  real(C_FLOAT), dimension(:), intent(in) :: x1, dx1, a2, a3
  real(C_FLOAT), intent(in) :: t
  real(C_FLOAT), dimension(:), intent(out) :: x, dx, ddx
  x = x1 + t*dx1 + t**2*a2 + t**3*a3
  dx = dx1 + 2*t*a2 + 3*t**2*a3
  ddx = 2*a2 + 6*t*a3
end subroutine aa_la_mod_s_3spline

subroutine aa_la_mod_s_3spline_param_c (n, tf, x1, incx1, dx1, incdx1, x2, incx2, dx2, incdx2, a2, a3) bind( C, name="aa_la_s_3spline_param" )
  integer(c_size_t), intent(in), value :: n, incx1, incdx1, incx2, incdx2
  real(C_FLOAT), value :: tf
  real(C_FLOAT), intent(in) :: x1(n*incx1), x2(n*incx2), dx1(n*incdx1), dx2(n*incdx2)
  real(C_FLOAT), intent(out) :: a2(n), a3(n)
  call aa_la_3spline_param(tf, &
       x1(1:size(x1):incx1), dx1(1:size(dx1):incdx1), &
       x2(1:size(x2):incx2), dx2(1:size(dx2):incdx2), &
       a2, a3 )
end subroutine aa_la_mod_s_3spline_param_c

subroutine aa_la_mod_s_3spline_c (n, tf, x1, incx1, dx1, incdx1, a2, a3, x, incx, dx, incdx, ddx, incddx) bind( C, name="aa_la_s_3spline" )
  integer(c_size_t), intent(in), value :: n, incx1, incdx1, incx, incdx, incddx
  real(C_FLOAT), value :: tf
  real(C_FLOAT), intent(in) :: x1(n*incx1), dx1(n*incdx1), a2(n), a3(n)
  real(C_FLOAT), intent(out) :: x(n*incx), dx(n*incdx), ddx(n*incddx)
  call aa_la_3spline(tf, &
       x1(1:size(x1):incx1), dx1(1:size(dx1):incdx1), a2, a3, &
       x(1:size(x):incx), dx(1:size(dx):incdx), ddx(1:size(ddx):incddx) )
end subroutine aa_la_mod_s_3spline_c

!> Compute quintic spline parameters for time from x1 to x2
!> Note, a0 = x1, a1 = dx1, and a2 = ddx1/2
pure subroutine aa_la_mod_s_5spline_param (tf, x1, dx1, ddx1, x2, dx2, ddx2, a3, a4, a5)
  real(C_FLOAT), intent(in) :: tf
  real(C_FLOAT), dimension(:), intent(in) :: x1, x2, dx1, dx2, ddx1, ddx2
  real(C_FLOAT), dimension(:), intent(out) :: a3, a4, a5
  a3 = ( 20*x2 - 20*x1 - (8*dx2 + 12*dx1)*tf - (3*ddx1-ddx2)*tf**2 ) / (2*tf**3)
  a4 = ( 30*x1 - 30*x2 + (14*dx2 + 16*dx1)*tf + (3*ddx1 - 2*ddx2)*tf**2 ) / (2*tf**4)
  a5 = ( 12*x2 - 12*x1 - (6*dx2 + 6*dx1)*tf - (ddx1 - ddx2)*tf**2 ) / (2*tf**5)
end subroutine aa_la_mod_s_5spline_param

pure subroutine aa_la_mod_s_5spline (t, x1, dx1, ddx1, a3, a4, a5, x, dx, ddx)
  real(C_FLOAT), dimension(:), intent(in) :: x1, dx1, ddx1, a3, a4, a5
  real(C_FLOAT), intent(in) :: t
  real(C_FLOAT), dimension(:), intent(out) :: x, dx, ddx
  x = x1 + t*dx1 + 0.5*t**2*ddx1 + t**3*a3 + t**4*a4 + t**5*a5
  dx = dx1 + t*ddx1 + 3*t**2*a3 + 4*t**3*a4 + 5*t**4*a5
  ddx = ddx1 + 6*t*a3 + 12*t**2*a4 + 20*t**3*a5
end subroutine aa_la_mod_s_5spline

subroutine aa_la_mod_s_5spline_param_c (n, tf, x1, incx1, dx1, incdx1, ddx1, incddx1, x2, incx2, dx2, incdx2, ddx2, incddx2, a3, a4, a5) bind( C, name="aa_la_s_5spline_param" )
  integer(c_size_t), intent(in), value :: n, incx1, incdx1, incx2, incdx2, incddx1, incddx2
  real(C_FLOAT), value :: tf
  real(C_FLOAT), intent(in) :: x1(n*incx1), x2(n*incx2), dx1(n*incdx1), dx2(n*incdx2), ddx1(n*incddx1), ddx2(n*incddx2)
  real(C_FLOAT), intent(out) :: a3(n), a4(n), a5(n)
  call aa_la_5spline_param(tf, &
       x1(1:size(x1):incx1), dx1(1:size(dx1):incdx1), ddx1(1:size(ddx1):incddx1), &
       x2(1:size(x2):incx2), dx2(1:size(dx2):incdx2), ddx2(1:size(ddx2):incddx2), &
       a3, a4, a5 )
end subroutine aa_la_mod_s_5spline_param_c

subroutine aa_la_mod_s_5spline_c (n, tf, x1, incx1, dx1, incdx1, ddx1, incddx1, a3, a4, a5, x, incx, dx, incdx, ddx, incddx) bind( C, name="aa_la_s_5spline" )
  integer(c_size_t), intent(in), value :: n, incx1, incdx1, incx, incdx, incddx1, incddx
  real(C_FLOAT), value :: tf
  real(C_FLOAT), intent(in) :: x1(n*incx1), dx1(n*incdx1), ddx1(n*incddx1)
  real(C_FLOAT), intent(in) :: a3(n), a4(n), a5(n)
  real(C_FLOAT), intent(out) :: x(n*incx), dx(n*incdx), ddx(n*incddx)
  call aa_la_5spline(tf, &
       x1(1:size(x1):incx1), dx1(1:size(dx1):incdx1), ddx1(1:size(ddx1):incddx1), &
       a3, a4, a5, &
       x(1:size(x):incx), dx(1:size(dx):incdx), ddx(1:size(ddx):incddx) )
end subroutine aa_la_mod_s_5spline_c

subroutine aa_la_mod_s_assign_hungarian_c (m, n, A, lda, row, col) bind( C, name="aa_la_s_assign_hungarian" )
  use amino_mem
  integer(c_size_t), intent(in), value :: m,n,lda
  real(C_FLOAT),intent(in) :: A(lda,n)
  integer(c_size_t),intent(out) :: row(m),col(n)

  integer, pointer :: rowi(:), coli(:)
  call aa_mem_region_alloc( m, rowi )
  call aa_mem_region_alloc( m, coli )

  call aa_la_mod_s_assign_hungarian(A(1:m,1:n),rowi,coli)
  ! convert to C indices
  row = int(rowi-1,c_size_t)
  col = int(coli-1,c_size_t)

  call aa_mem_region_pop( rowi )
end subroutine aa_la_mod_s_assign_hungarian_c


!> Solve assignment problem via Hungarian algorithm, padding if necessary
subroutine aa_la_mod_s_assign_hungarian(A,row_assign,col_assign)
  use amino_mem
  real(C_FLOAT), intent(in) :: A(:,:)
  integer, intent(out) :: row_assign(:),col_assign(:)

  integer :: m,n,p
  integer, pointer :: alt_assign( : )
  real(C_FLOAT), pointer :: B(:,:)

  m = size(A,1)
  n = size(A,2)
  p = max(m,n)

  call aa_mem_region_alloc( p, p, b)
  B = real(0,C_FLOAT)
  B(1:m,1:n) = A

  if ( m > n ) then
     ! more rows
     call aa_mem_region_alloc( p, alt_assign )
     call aa_la_mod_s_assign_hungarian_square(B,row_assign,alt_assign)
     col_assign = alt_assign(1:n)
     where (row_assign > n)
        row_assign = -1
     end where
  elseif ( m < n ) then
     ! more cols
     call aa_mem_region_alloc( p, alt_assign )
     call aa_la_mod_s_assign_hungarian_square(B,alt_assign,col_assign)
     row_assign = alt_assign(1:m)
     where (col_assign > m)
        col_assign = -1
     end where
  else
     ! equal rows / cols
     call aa_la_mod_s_assign_hungarian_square(B,row_assign,col_assign)
  end if

  call aa_mem_region_pop(B)

end subroutine aa_la_mod_s_assign_hungarian

!> Solve square assignment problem via Hungarian algorithm
subroutine aa_la_mod_s_assign_hungarian_square(A,row_assign,col_assign)
  use amino_mem
  real(C_FLOAT), intent(inout) :: A(:,:)
  integer, intent(out) :: row_assign(:),col_assign(:)

  integer, pointer :: path(:,:)
  logical(4), pointer :: star(:,:)
  logical(4), pointer :: prime(:,:)
  logical(4), pointer :: row(:),col(:)

  integer :: i,j,k,n
  real(C_FLOAT) :: mv

  n = size(A,1)
  call aa_mem_region_alloc(2,n**2,path)
  call aa_mem_region_alloc(n,n,star)
  call aa_mem_region_alloc(n,n,prime)
  call aa_mem_region_alloc(n,row)
  call aa_mem_region_alloc(n,col)

  ! --- Step 1 ---
  ! subtract smallest from each col
  forall (j=1:n)
     A(:,j) = A(:,j) - minval(A(:,j))
  end forall
  ! subtract smallest from each row
  forall (i=1:n)
     A(i,:) = A(i,:) - minval(A(i,:))
  end forall

  ! --- Step 2 ---
  ! Star each zero in A
  star = .false.
  row = .false.
  do j=1,n
     do i=1,n
        if ( real(0,C_FLOAT) >= A(i,j) .and. &
             .not. row(i) ) then
           row(i) = .true.
           star(i,j) = .true.
           exit ! one mark per column
        end if
     end do
  end do

  ! --- Step 3 ---
  ! Cover starred columns
  step3: do
     forall (j=1:n)
       col(j) = any(star(:,j))
    end forall
     ! check if all covered
     if ( count(col) == n ) then
        exit step3
     end if

     ! --- Step 4 ---
     ! Find uncovered zero and prime it or goto 6.
     ! If star in row, cover row, uncover stars column,
     ! repeat for all uncovered zeros. Otherwise, goto 5.
     prime = .false.
     row = .false.
     step4: do
        do j=1,n
           if ( .not. col(j) ) then
              do i=1,n
                 if ( real(0,C_FLOAT) >= A(i,j) .and. &
                      .not. row(i) ) then
                    ! prime the uncovered zero
                    prime(i,j) = .true.
                    do k=1,n
                       if ( star(i,k) ) then
                          row(i) = .true. ! cover star row
                          col(k) = .false. ! uncover stars column
                          cycle step4
                       end if
                    end do
                    ! nothing starred in row
                    path(1,1) = i
                    path(2,1) = j
                    call make_path() ! step5
                    cycle step3
                 end if
              end do
           end if
        end do

        ! no uncovered zeros

        ! --- Step 6 ---
        mv = HUGE(A(1,1))
        ! find smallest uncovered value in A
        row = .not. row
        do j=1,n
           if ( .not. col(j) ) then
              mv = min( mv, minval( A(:,j), row ) )
           end if
        end do
        row = .not. row

        ! add minval to covered rows
        ! subtract minval from uncovered cols
        do j=1,n
           if( col(j) ) then
              where (row) A(:,j) = A(:,j) + mv
           else
              where (.not. row) A(:,j) = A(:,j) - mv
           end if
        end do
     end do step4
  end do step3

  ! --- Step 7 (The End) ---
  ! Compute assignments
  do j=1,n
     do i=1,n
        if ( star(i,j) ) then
           row_assign(i) = j
           col_assign(j) = i
           exit ! one assignment per row/col
        end if
     end do
  end do

  ! deallocate
  call aa_mem_region_pop(path)

  contains

    ! --- Step 5 ---
    !! construct series of alternating primes and stars
    subroutine make_path()
      integer :: k,i,j,c
      c = 1
      ! loop till no starred column
      do k=1,n
         ! find starred column
         do i=1,n
            if ( star(i, path(2,c)) ) then
               c = c+1
               path(1,c) = i ! row of starred zero
               path(2,c) = path(2,c-1) ! col of starred zero
               do j=1,n
                  if ( prime( path(1,c), j ) ) then
                     c = c+1
                     path(1,c) = path(1,c-1) ! row of primed zero
                     path(2,c) = j ! col of primed zero
                     exit
                  end if
               end do
               exit
            end if
         end do
      end do
      ! convert path
      ! forall (k=1:c)
      ! star( path(1,k), path(2,k) ) = &
      ! .not. star( path(1,k), path(2,k) )
      ! end forall
      do k=1,c
         star( path(1,k), path(2,k) ) = &
              .not. star( path(1,k), path(2,k) )
      end do
    end subroutine make_path
end subroutine aa_la_mod_s_assign_hungarian_square

subroutine aa_la_mod_s_assign_hungarian_max2min(A)
  real(C_FLOAT), intent(inout) :: A(:,:)
  A = maxval(A) - A
end subroutine aa_la_mod_s_assign_hungarian_max2min

subroutine aa_la_mod_s_assign_hungarian_max2min_c (m, n, A, lda) bind( C, name="aa_la_s_assign_hungarian_max2min" )
  integer(c_size_t), intent(in), value :: m,n,lda
  real(C_FLOAT),intent(inout) :: A(lda,n)
  call aa_la_mod_s_assign_hungarian_max2min( A(1:m,1:n) )
end subroutine aa_la_mod_s_assign_hungarian_max2min_c







# 1 "./include/amino/undef.F90" 1


# 1 "./include/amino/undef.h" 1
# 4 "./include/amino/undef.F90" 2
# 756 "src/la_implf.F90" 2
# 249 "src/la_mod.F90" 2

end module amino_la
