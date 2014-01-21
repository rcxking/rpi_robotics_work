subroutine aa_tf_eulerxyz2rotmat(e1, e2, e3, R) &
  bind( C, name="aa_tf_eulerxyz2rotmat" )
  real(C_DOUBLE), value, intent(in)  :: e1,e2,e3 
  real(C_DOUBLE), intent(out) :: R(3,3) 
R(1,1) = cos(e2)*cos(e3)
R(1,2) = -cos(e2)*sin(e3)
R(1,3) = sin(e2)
R(2,1) = cos(e1)*sin(e3)+sin(e1)*sin(e2)*cos(e3)
R(2,2) = cos(e1)*cos(e3)-sin(e1)*sin(e2)*sin(e3)
R(2,3) = -sin(e1)*cos(e2)
R(3,1) = sin(e1)*sin(e3)-cos(e1)*sin(e2)*cos(e3)
R(3,2) = cos(e1)*sin(e2)*sin(e3)+sin(e1)*cos(e3)
R(3,3) = cos(e1)*cos(e2)
End subroutine aa_tf_eulerxyz2rotmat
subroutine aa_tf_eulerxyz2quat(e1, e2, e3, q) &
  bind( C, name="aa_tf_eulerxyz2quat" )
  real(C_DOUBLE), value, intent(in)  :: e1, e2, e3 
  real(C_DOUBLE), intent(out) :: q(4) 
q(1) = cos(e1/2.0)*sin(e2/2.0)*sin(e3/2.0)+sin(e1/2.0)*cos(e2/2.0&
)*cos(e3/2.0)
q(2) = cos(e1/2.0)*sin(e2/2.0)*cos(e3/2.0)-sin(e1/2.0)*cos(e2/2.0&
)*sin(e3/2.0)
q(3) = cos(e1/2.0)*cos(e2/2.0)*sin(e3/2.0)+sin(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(4) = cos(e1/2.0)*cos(e2/2.0)*cos(e3/2.0)-sin(e1/2.0)*sin(e2/2.0&
)*sin(e3/2.0)
end subroutine aa_tf_eulerxyz2quat
subroutine aa_tf_eulerxzy2rotmat(e1, e2, e3, R) &
  bind( C, name="aa_tf_eulerxzy2rotmat" )
  real(C_DOUBLE), value, intent(in)  :: e1,e2,e3 
  real(C_DOUBLE), intent(out) :: R(3,3) 
R(1,1) = cos(e2)*cos(e3)
R(1,2) = -sin(e2)
R(1,3) = cos(e2)*sin(e3)
R(2,1) = sin(e1)*sin(e3)+cos(e1)*sin(e2)*cos(e3)
R(2,2) = cos(e1)*cos(e2)
R(2,3) = cos(e1)*sin(e2)*sin(e3)-sin(e1)*cos(e3)
R(3,1) = sin(e1)*sin(e2)*cos(e3)-cos(e1)*sin(e3)
R(3,2) = sin(e1)*cos(e2)
R(3,3) = sin(e1)*sin(e2)*sin(e3)+cos(e1)*cos(e3)
End subroutine aa_tf_eulerxzy2rotmat
subroutine aa_tf_eulerxzy2quat(e1, e2, e3, q) &
  bind( C, name="aa_tf_eulerxzy2quat" )
  real(C_DOUBLE), value, intent(in)  :: e1, e2, e3 
  real(C_DOUBLE), intent(out) :: q(4) 
q(1) = sin(e1/2.0)*cos(e2/2.0)*cos(e3/2.0)-cos(e1/2.0)*sin(e2/2.0&
)*sin(e3/2.0)
q(2) = cos(e1/2.0)*cos(e2/2.0)*sin(e3/2.0)-sin(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(3) = sin(e1/2.0)*cos(e2/2.0)*sin(e3/2.0)+cos(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(4) = sin(e1/2.0)*sin(e2/2.0)*sin(e3/2.0)+cos(e1/2.0)*cos(e2/2.0&
)*cos(e3/2.0)
end subroutine aa_tf_eulerxzy2quat
subroutine aa_tf_euleryxz2rotmat(e1, e2, e3, R) &
  bind( C, name="aa_tf_euleryxz2rotmat" )
  real(C_DOUBLE), value, intent(in)  :: e1,e2,e3 
  real(C_DOUBLE), intent(out) :: R(3,3) 
R(1,1) = sin(e1)*sin(e2)*sin(e3)+cos(e1)*cos(e3)
R(1,2) = sin(e1)*sin(e2)*cos(e3)-cos(e1)*sin(e3)
R(1,3) = sin(e1)*cos(e2)
R(2,1) = cos(e2)*sin(e3)
R(2,2) = cos(e2)*cos(e3)
R(2,3) = -sin(e2)
R(3,1) = cos(e1)*sin(e2)*sin(e3)-sin(e1)*cos(e3)
R(3,2) = sin(e1)*sin(e3)+cos(e1)*sin(e2)*cos(e3)
R(3,3) = cos(e1)*cos(e2)
End subroutine aa_tf_euleryxz2rotmat
subroutine aa_tf_euleryxz2quat(e1, e2, e3, q) &
  bind( C, name="aa_tf_euleryxz2quat" )
  real(C_DOUBLE), value, intent(in)  :: e1, e2, e3 
  real(C_DOUBLE), intent(out) :: q(4) 
q(1) = sin(e1/2.0)*cos(e2/2.0)*sin(e3/2.0)+cos(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(2) = sin(e1/2.0)*cos(e2/2.0)*cos(e3/2.0)-cos(e1/2.0)*sin(e2/2.0&
)*sin(e3/2.0)
q(3) = cos(e1/2.0)*cos(e2/2.0)*sin(e3/2.0)-sin(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(4) = sin(e1/2.0)*sin(e2/2.0)*sin(e3/2.0)+cos(e1/2.0)*cos(e2/2.0&
)*cos(e3/2.0)
end subroutine aa_tf_euleryxz2quat
subroutine aa_tf_euleryzx2rotmat(e1, e2, e3, R) &
  bind( C, name="aa_tf_euleryzx2rotmat" )
  real(C_DOUBLE), value, intent(in)  :: e1,e2,e3 
  real(C_DOUBLE), intent(out) :: R(3,3) 
R(1,1) = cos(e1)*cos(e2)
R(1,2) = sin(e1)*sin(e3)-cos(e1)*sin(e2)*cos(e3)
R(1,3) = cos(e1)*sin(e2)*sin(e3)+sin(e1)*cos(e3)
R(2,1) = sin(e2)
R(2,2) = cos(e2)*cos(e3)
R(2,3) = -cos(e2)*sin(e3)
R(3,1) = -sin(e1)*cos(e2)
R(3,2) = cos(e1)*sin(e3)+sin(e1)*sin(e2)*cos(e3)
R(3,3) = cos(e1)*cos(e3)-sin(e1)*sin(e2)*sin(e3)
End subroutine aa_tf_euleryzx2rotmat
subroutine aa_tf_euleryzx2quat(e1, e2, e3, q) &
  bind( C, name="aa_tf_euleryzx2quat" )
  real(C_DOUBLE), value, intent(in)  :: e1, e2, e3 
  real(C_DOUBLE), intent(out) :: q(4) 
q(1) = cos(e1/2.0)*cos(e2/2.0)*sin(e3/2.0)+sin(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(2) = cos(e1/2.0)*sin(e2/2.0)*sin(e3/2.0)+sin(e1/2.0)*cos(e2/2.0&
)*cos(e3/2.0)
q(3) = cos(e1/2.0)*sin(e2/2.0)*cos(e3/2.0)-sin(e1/2.0)*cos(e2/2.0&
)*sin(e3/2.0)
q(4) = cos(e1/2.0)*cos(e2/2.0)*cos(e3/2.0)-sin(e1/2.0)*sin(e2/2.0&
)*sin(e3/2.0)
end subroutine aa_tf_euleryzx2quat
subroutine aa_tf_eulerzxy2rotmat(e1, e2, e3, R) &
  bind( C, name="aa_tf_eulerzxy2rotmat" )
  real(C_DOUBLE), value, intent(in)  :: e1,e2,e3 
  real(C_DOUBLE), intent(out) :: R(3,3) 
R(1,1) = cos(e1)*cos(e3)-sin(e1)*sin(e2)*sin(e3)
R(1,2) = -sin(e1)*cos(e2)
R(1,3) = cos(e1)*sin(e3)+sin(e1)*sin(e2)*cos(e3)
R(2,1) = cos(e1)*sin(e2)*sin(e3)+sin(e1)*cos(e3)
R(2,2) = cos(e1)*cos(e2)
R(2,3) = sin(e1)*sin(e3)-cos(e1)*sin(e2)*cos(e3)
R(3,1) = -cos(e2)*sin(e3)
R(3,2) = sin(e2)
R(3,3) = cos(e2)*cos(e3)
End subroutine aa_tf_eulerzxy2rotmat
subroutine aa_tf_eulerzxy2quat(e1, e2, e3, q) &
  bind( C, name="aa_tf_eulerzxy2quat" )
  real(C_DOUBLE), value, intent(in)  :: e1, e2, e3 
  real(C_DOUBLE), intent(out) :: q(4) 
q(1) = cos(e1/2.0)*sin(e2/2.0)*cos(e3/2.0)-sin(e1/2.0)*cos(e2/2.0&
)*sin(e3/2.0)
q(2) = cos(e1/2.0)*cos(e2/2.0)*sin(e3/2.0)+sin(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(3) = cos(e1/2.0)*sin(e2/2.0)*sin(e3/2.0)+sin(e1/2.0)*cos(e2/2.0&
)*cos(e3/2.0)
q(4) = cos(e1/2.0)*cos(e2/2.0)*cos(e3/2.0)-sin(e1/2.0)*sin(e2/2.0&
)*sin(e3/2.0)
end subroutine aa_tf_eulerzxy2quat
subroutine aa_tf_eulerzyx2rotmat(e1, e2, e3, R) &
  bind( C, name="aa_tf_eulerzyx2rotmat" )
  real(C_DOUBLE), value, intent(in)  :: e1,e2,e3 
  real(C_DOUBLE), intent(out) :: R(3,3) 
R(1,1) = cos(e1)*cos(e2)
R(1,2) = cos(e1)*sin(e2)*sin(e3)-sin(e1)*cos(e3)
R(1,3) = sin(e1)*sin(e3)+cos(e1)*sin(e2)*cos(e3)
R(2,1) = sin(e1)*cos(e2)
R(2,2) = sin(e1)*sin(e2)*sin(e3)+cos(e1)*cos(e3)
R(2,3) = sin(e1)*sin(e2)*cos(e3)-cos(e1)*sin(e3)
R(3,1) = -sin(e2)
R(3,2) = cos(e2)*sin(e3)
R(3,3) = cos(e2)*cos(e3)
End subroutine aa_tf_eulerzyx2rotmat
subroutine aa_tf_eulerzyx2quat(e1, e2, e3, q) &
  bind( C, name="aa_tf_eulerzyx2quat" )
  real(C_DOUBLE), value, intent(in)  :: e1, e2, e3 
  real(C_DOUBLE), intent(out) :: q(4) 
q(1) = cos(e1/2.0)*cos(e2/2.0)*sin(e3/2.0)-sin(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(2) = sin(e1/2.0)*cos(e2/2.0)*sin(e3/2.0)+cos(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(3) = sin(e1/2.0)*cos(e2/2.0)*cos(e3/2.0)-cos(e1/2.0)*sin(e2/2.0&
)*sin(e3/2.0)
q(4) = sin(e1/2.0)*sin(e2/2.0)*sin(e3/2.0)+cos(e1/2.0)*cos(e2/2.0&
)*cos(e3/2.0)
end subroutine aa_tf_eulerzyx2quat
subroutine aa_tf_eulerxyx2rotmat(e1, e2, e3, R) &
  bind( C, name="aa_tf_eulerxyx2rotmat" )
  real(C_DOUBLE), value, intent(in)  :: e1,e2,e3 
  real(C_DOUBLE), intent(out) :: R(3,3) 
R(1,1) = cos(e2)
R(1,2) = sin(e2)*sin(e3)
R(1,3) = sin(e2)*cos(e3)
R(2,1) = sin(e1)*sin(e2)
R(2,2) = cos(e1)*cos(e3)-sin(e1)*cos(e2)*sin(e3)
R(2,3) = -cos(e1)*sin(e3)-sin(e1)*cos(e2)*cos(e3)
R(3,1) = -cos(e1)*sin(e2)
R(3,2) = cos(e1)*cos(e2)*sin(e3)+sin(e1)*cos(e3)
R(3,3) = cos(e1)*cos(e2)*cos(e3)-sin(e1)*sin(e3)
End subroutine aa_tf_eulerxyx2rotmat
subroutine aa_tf_eulerxyx2quat(e1, e2, e3, q) &
  bind( C, name="aa_tf_eulerxyx2quat" )
  real(C_DOUBLE), value, intent(in)  :: e1, e2, e3 
  real(C_DOUBLE), intent(out) :: q(4) 
q(1) = cos(e1/2.0)*cos(e2/2.0)*sin(e3/2.0)+sin(e1/2.0)*cos(e2/2.0&
)*cos(e3/2.0)
q(2) = sin(e1/2.0)*sin(e2/2.0)*sin(e3/2.0)+cos(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(3) = sin(e1/2.0)*sin(e2/2.0)*cos(e3/2.0)-cos(e1/2.0)*sin(e2/2.0&
)*sin(e3/2.0)
q(4) = cos(e1/2.0)*cos(e2/2.0)*cos(e3/2.0)-sin(e1/2.0)*cos(e2/2.0&
)*sin(e3/2.0)
end subroutine aa_tf_eulerxyx2quat
subroutine aa_tf_eulerxzx2rotmat(e1, e2, e3, R) &
  bind( C, name="aa_tf_eulerxzx2rotmat" )
  real(C_DOUBLE), value, intent(in)  :: e1,e2,e3 
  real(C_DOUBLE), intent(out) :: R(3,3) 
R(1,1) = cos(e2)
R(1,2) = -sin(e2)*cos(e3)
R(1,3) = sin(e2)*sin(e3)
R(2,1) = cos(e1)*sin(e2)
R(2,2) = cos(e1)*cos(e2)*cos(e3)-sin(e1)*sin(e3)
R(2,3) = -cos(e1)*cos(e2)*sin(e3)-sin(e1)*cos(e3)
R(3,1) = sin(e1)*sin(e2)
R(3,2) = cos(e1)*sin(e3)+sin(e1)*cos(e2)*cos(e3)
R(3,3) = cos(e1)*cos(e3)-sin(e1)*cos(e2)*sin(e3)
End subroutine aa_tf_eulerxzx2rotmat
subroutine aa_tf_eulerxzx2quat(e1, e2, e3, q) &
  bind( C, name="aa_tf_eulerxzx2quat" )
  real(C_DOUBLE), value, intent(in)  :: e1, e2, e3 
  real(C_DOUBLE), intent(out) :: q(4) 
q(1) = cos(e1/2.0)*cos(e2/2.0)*sin(e3/2.0)+sin(e1/2.0)*cos(e2/2.0&
)*cos(e3/2.0)
q(2) = cos(e1/2.0)*sin(e2/2.0)*sin(e3/2.0)-sin(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(3) = sin(e1/2.0)*sin(e2/2.0)*sin(e3/2.0)+cos(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(4) = cos(e1/2.0)*cos(e2/2.0)*cos(e3/2.0)-sin(e1/2.0)*cos(e2/2.0&
)*sin(e3/2.0)
end subroutine aa_tf_eulerxzx2quat
subroutine aa_tf_euleryxy2rotmat(e1, e2, e3, R) &
  bind( C, name="aa_tf_euleryxy2rotmat" )
  real(C_DOUBLE), value, intent(in)  :: e1,e2,e3 
  real(C_DOUBLE), intent(out) :: R(3,3) 
R(1,1) = cos(e1)*cos(e3)-sin(e1)*cos(e2)*sin(e3)
R(1,2) = sin(e1)*sin(e2)
R(1,3) = cos(e1)*sin(e3)+sin(e1)*cos(e2)*cos(e3)
R(2,1) = sin(e2)*sin(e3)
R(2,2) = cos(e2)
R(2,3) = -sin(e2)*cos(e3)
R(3,1) = -cos(e1)*cos(e2)*sin(e3)-sin(e1)*cos(e3)
R(3,2) = cos(e1)*sin(e2)
R(3,3) = cos(e1)*cos(e2)*cos(e3)-sin(e1)*sin(e3)
End subroutine aa_tf_euleryxy2rotmat
subroutine aa_tf_euleryxy2quat(e1, e2, e3, q) &
  bind( C, name="aa_tf_euleryxy2quat" )
  real(C_DOUBLE), value, intent(in)  :: e1, e2, e3 
  real(C_DOUBLE), intent(out) :: q(4) 
q(1) = sin(e1/2.0)*sin(e2/2.0)*sin(e3/2.0)+cos(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(2) = cos(e1/2.0)*cos(e2/2.0)*sin(e3/2.0)+sin(e1/2.0)*cos(e2/2.0&
)*cos(e3/2.0)
q(3) = cos(e1/2.0)*sin(e2/2.0)*sin(e3/2.0)-sin(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(4) = cos(e1/2.0)*cos(e2/2.0)*cos(e3/2.0)-sin(e1/2.0)*cos(e2/2.0&
)*sin(e3/2.0)
end subroutine aa_tf_euleryxy2quat
subroutine aa_tf_euleryzy2rotmat(e1, e2, e3, R) &
  bind( C, name="aa_tf_euleryzy2rotmat" )
  real(C_DOUBLE), value, intent(in)  :: e1,e2,e3 
  real(C_DOUBLE), intent(out) :: R(3,3) 
R(1,1) = cos(e1)*cos(e2)*cos(e3)-sin(e1)*sin(e3)
R(1,2) = -cos(e1)*sin(e2)
R(1,3) = cos(e1)*cos(e2)*sin(e3)+sin(e1)*cos(e3)
R(2,1) = sin(e2)*cos(e3)
R(2,2) = cos(e2)
R(2,3) = sin(e2)*sin(e3)
R(3,1) = -cos(e1)*sin(e3)-sin(e1)*cos(e2)*cos(e3)
R(3,2) = sin(e1)*sin(e2)
R(3,3) = cos(e1)*cos(e3)-sin(e1)*cos(e2)*sin(e3)
End subroutine aa_tf_euleryzy2rotmat
subroutine aa_tf_euleryzy2quat(e1, e2, e3, q) &
  bind( C, name="aa_tf_euleryzy2quat" )
  real(C_DOUBLE), value, intent(in)  :: e1, e2, e3 
  real(C_DOUBLE), intent(out) :: q(4) 
q(1) = sin(e1/2.0)*sin(e2/2.0)*cos(e3/2.0)-cos(e1/2.0)*sin(e2/2.0&
)*sin(e3/2.0)
q(2) = cos(e1/2.0)*cos(e2/2.0)*sin(e3/2.0)+sin(e1/2.0)*cos(e2/2.0&
)*cos(e3/2.0)
q(3) = sin(e1/2.0)*sin(e2/2.0)*sin(e3/2.0)+cos(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(4) = cos(e1/2.0)*cos(e2/2.0)*cos(e3/2.0)-sin(e1/2.0)*cos(e2/2.0&
)*sin(e3/2.0)
end subroutine aa_tf_euleryzy2quat
subroutine aa_tf_eulerzxz2rotmat(e1, e2, e3, R) &
  bind( C, name="aa_tf_eulerzxz2rotmat" )
  real(C_DOUBLE), value, intent(in)  :: e1,e2,e3 
  real(C_DOUBLE), intent(out) :: R(3,3) 
R(1,1) = cos(e1)*cos(e3)-sin(e1)*cos(e2)*sin(e3)
R(1,2) = -cos(e1)*sin(e3)-sin(e1)*cos(e2)*cos(e3)
R(1,3) = sin(e1)*sin(e2)
R(2,1) = cos(e1)*cos(e2)*sin(e3)+sin(e1)*cos(e3)
R(2,2) = cos(e1)*cos(e2)*cos(e3)-sin(e1)*sin(e3)
R(2,3) = -cos(e1)*sin(e2)
R(3,1) = sin(e2)*sin(e3)
R(3,2) = sin(e2)*cos(e3)
R(3,3) = cos(e2)
End subroutine aa_tf_eulerzxz2rotmat
subroutine aa_tf_eulerzxz2quat(e1, e2, e3, q) &
  bind( C, name="aa_tf_eulerzxz2quat" )
  real(C_DOUBLE), value, intent(in)  :: e1, e2, e3 
  real(C_DOUBLE), intent(out) :: q(4) 
q(1) = sin(e1/2.0)*sin(e2/2.0)*sin(e3/2.0)+cos(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(2) = sin(e1/2.0)*sin(e2/2.0)*cos(e3/2.0)-cos(e1/2.0)*sin(e2/2.0&
)*sin(e3/2.0)
q(3) = cos(e1/2.0)*cos(e2/2.0)*sin(e3/2.0)+sin(e1/2.0)*cos(e2/2.0&
)*cos(e3/2.0)
q(4) = cos(e1/2.0)*cos(e2/2.0)*cos(e3/2.0)-sin(e1/2.0)*cos(e2/2.0&
)*sin(e3/2.0)
end subroutine aa_tf_eulerzxz2quat
subroutine aa_tf_eulerzyz2rotmat(e1, e2, e3, R) &
  bind( C, name="aa_tf_eulerzyz2rotmat" )
  real(C_DOUBLE), value, intent(in)  :: e1,e2,e3 
  real(C_DOUBLE), intent(out) :: R(3,3) 
R(1,1) = cos(e1)*cos(e2)*cos(e3)-sin(e1)*sin(e3)
R(1,2) = -cos(e1)*cos(e2)*sin(e3)-sin(e1)*cos(e3)
R(1,3) = cos(e1)*sin(e2)
R(2,1) = cos(e1)*sin(e3)+sin(e1)*cos(e2)*cos(e3)
R(2,2) = cos(e1)*cos(e3)-sin(e1)*cos(e2)*sin(e3)
R(2,3) = sin(e1)*sin(e2)
R(3,1) = -sin(e2)*cos(e3)
R(3,2) = sin(e2)*sin(e3)
R(3,3) = cos(e2)
End subroutine aa_tf_eulerzyz2rotmat
subroutine aa_tf_eulerzyz2quat(e1, e2, e3, q) &
  bind( C, name="aa_tf_eulerzyz2quat" )
  real(C_DOUBLE), value, intent(in)  :: e1, e2, e3 
  real(C_DOUBLE), intent(out) :: q(4) 
q(1) = cos(e1/2.0)*sin(e2/2.0)*sin(e3/2.0)-sin(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(2) = sin(e1/2.0)*sin(e2/2.0)*sin(e3/2.0)+cos(e1/2.0)*sin(e2/2.0&
)*cos(e3/2.0)
q(3) = cos(e1/2.0)*cos(e2/2.0)*sin(e3/2.0)+sin(e1/2.0)*cos(e2/2.0&
)*cos(e3/2.0)
q(4) = cos(e1/2.0)*cos(e2/2.0)*cos(e3/2.0)-sin(e1/2.0)*cos(e2/2.0&
)*sin(e3/2.0)
end subroutine aa_tf_eulerzyz2quat
