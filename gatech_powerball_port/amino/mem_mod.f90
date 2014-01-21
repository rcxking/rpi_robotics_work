# 1 "src/mem_mod.F90"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/mem_mod.F90"
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

# 1 "./include/amino/mangle.h" 1
# 41 "src/mem_mod.F90" 2

module amino_mem
  use ISO_C_BINDING
  implicit none

  interface
     function aa_mem_region_local_alloc_c( n ) result(p) &
          bind(C,name="aa_mem_region_local_alloc")
       use ISO_C_BINDING
       integer(c_size_t), intent(in), value :: n
       type(c_ptr) :: p
     end function aa_mem_region_local_alloc_c
  end interface

  interface
     subroutine aa_mem_region_local_pop_c( p ) &
          bind(C,name="aa_mem_region_local_pop")
       use ISO_C_BINDING
       type(c_ptr), intent(in), value :: p
     end subroutine aa_mem_region_local_pop_c
  end interface

  interface aa_mem_region_alloc
     module procedure &
          aa_mem_mod_d_array1_4, &
          aa_mem_mod_s_array1_4, &
          aa_mem_mod_i32_array1_4, &
          aa_mem_mod_i64_array1_4, &
          aa_mem_mod_l8_array1_4, &
          aa_mem_mod_l32_array1_4, &
          aa_mem_mod_d_array2_4, &
          aa_mem_mod_s_array2_4, &
          aa_mem_mod_i64_array2_4, &
          aa_mem_mod_i32_array2_4, &
          aa_mem_mod_l8_array2_4, &
          aa_mem_mod_l32_array2_4, &
          aa_mem_mod_d_array1_8, &
          aa_mem_mod_s_array1_8, &
          aa_mem_mod_i32_array1_8, &
          aa_mem_mod_i64_array1_8, &
          aa_mem_mod_l8_array1_8, &
          aa_mem_mod_l32_array1_8, &
          aa_mem_mod_d_array2_8, &
          aa_mem_mod_s_array2_8, &
          aa_mem_mod_i64_array2_8, &
          aa_mem_mod_i32_array2_8, &
          aa_mem_mod_l8_array2_8, &
          aa_mem_mod_l32_array2_8
  end interface

  interface aa_mem_region_pop
     module procedure &
          aa_mem_mod_d_pop1, &
          aa_mem_mod_s_pop1, &
          aa_mem_mod_i32_pop1, &
          aa_mem_mod_i64_pop1, &
          aa_mem_mod_l8_pop1, &
          aa_mem_mod_l32_pop1, &
          aa_mem_mod_d_pop2, &
          aa_mem_mod_s_pop2, &
          aa_mem_mod_i32_pop2, &
          aa_mem_mod_i64_pop2, &
          aa_mem_mod_l8_pop2, &
          aa_mem_mod_l32_pop2
  end interface

contains


# 1 "src/mem_impl.F90" 1
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


# 1 "./include/amino/def.F90" 1

# 1 "./include/amino/def.h" 1
# 3 "./include/amino/def.F90" 2
# 42 "src/mem_impl.F90" 2


subroutine aa_mem_mod_d_array1_4(n,a)
  integer(4), intent(in) :: n
  real(C_DOUBLE), intent(out), pointer :: a(:)
  integer(4) :: s(1)
  type(c_ptr) :: p
  p = aa_mem_region_local_alloc_c(int(n*C_DOUBLE,c_size_t))
  s(1) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_d_array1_4

subroutine aa_mem_mod_d_array2_4(m,n,a)
  integer(4), intent(in) :: m,n
  real(C_DOUBLE), intent(out), pointer :: a(:,:)
  type(c_ptr) :: p
  integer(4) :: s(2)
  p = aa_mem_region_local_alloc_c(int(m*n*C_DOUBLE,c_size_t))
  s(1) = m
  s(2) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_d_array2_4

subroutine aa_mem_mod_d_array1_8(n,a)
  integer(8), intent(in) :: n
  real(C_DOUBLE), intent(out), pointer :: a(:)
  type(c_ptr) :: p
  integer(8) :: s(1)
  p = aa_mem_region_local_alloc_c(int(n*int(C_DOUBLE,8),c_size_t))
  s(1) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_d_array1_8

subroutine aa_mem_mod_d_array2_8(m,n,a)
  integer(8), intent(in) :: m,n
  real(C_DOUBLE), intent(out), pointer :: a(:,:)
  type(c_ptr) :: p
  integer(8) :: s(2)
  p = aa_mem_region_local_alloc_c(int(m*n*int(C_DOUBLE,8),c_size_t))
  s(1) = m
  s(2) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_d_array2_8

subroutine aa_mem_mod_d_pop1(a)
  real(C_DOUBLE), intent(inout), pointer :: a(:)
  call aa_mem_region_local_pop_c( c_loc(a(1)) )
  nullify(a)
end subroutine aa_mem_mod_d_pop1

subroutine aa_mem_mod_d_pop2(a)
  real(C_DOUBLE), intent(inout), pointer :: a(:,:)
  call aa_mem_region_local_pop_c( c_loc(a(1,1)) )
  nullify(a)
end subroutine aa_mem_mod_d_pop2

# 1 "./include/amino/undef.F90" 1


# 1 "./include/amino/undef.h" 1
# 4 "./include/amino/undef.F90" 2
# 98 "src/mem_impl.F90" 2
# 111 "src/mem_mod.F90" 2


# 1 "src/mem_impl.F90" 1
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


# 1 "./include/amino/def.F90" 1

# 1 "./include/amino/def.h" 1
# 3 "./include/amino/def.F90" 2
# 42 "src/mem_impl.F90" 2


subroutine aa_mem_mod_s_array1_4(n,a)
  integer(4), intent(in) :: n
  real(C_FLOAT), intent(out), pointer :: a(:)
  integer(4) :: s(1)
  type(c_ptr) :: p
  p = aa_mem_region_local_alloc_c(int(n*C_FLOAT,c_size_t))
  s(1) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_s_array1_4

subroutine aa_mem_mod_s_array2_4(m,n,a)
  integer(4), intent(in) :: m,n
  real(C_FLOAT), intent(out), pointer :: a(:,:)
  type(c_ptr) :: p
  integer(4) :: s(2)
  p = aa_mem_region_local_alloc_c(int(m*n*C_FLOAT,c_size_t))
  s(1) = m
  s(2) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_s_array2_4

subroutine aa_mem_mod_s_array1_8(n,a)
  integer(8), intent(in) :: n
  real(C_FLOAT), intent(out), pointer :: a(:)
  type(c_ptr) :: p
  integer(8) :: s(1)
  p = aa_mem_region_local_alloc_c(int(n*int(C_FLOAT,8),c_size_t))
  s(1) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_s_array1_8

subroutine aa_mem_mod_s_array2_8(m,n,a)
  integer(8), intent(in) :: m,n
  real(C_FLOAT), intent(out), pointer :: a(:,:)
  type(c_ptr) :: p
  integer(8) :: s(2)
  p = aa_mem_region_local_alloc_c(int(m*n*int(C_FLOAT,8),c_size_t))
  s(1) = m
  s(2) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_s_array2_8

subroutine aa_mem_mod_s_pop1(a)
  real(C_FLOAT), intent(inout), pointer :: a(:)
  call aa_mem_region_local_pop_c( c_loc(a(1)) )
  nullify(a)
end subroutine aa_mem_mod_s_pop1

subroutine aa_mem_mod_s_pop2(a)
  real(C_FLOAT), intent(inout), pointer :: a(:,:)
  call aa_mem_region_local_pop_c( c_loc(a(1,1)) )
  nullify(a)
end subroutine aa_mem_mod_s_pop2

# 1 "./include/amino/undef.F90" 1


# 1 "./include/amino/undef.h" 1
# 4 "./include/amino/undef.F90" 2
# 98 "src/mem_impl.F90" 2
# 114 "src/mem_mod.F90" 2


# 1 "src/mem_impl.F90" 1
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


# 1 "./include/amino/def.F90" 1

# 1 "./include/amino/def.h" 1
# 3 "./include/amino/def.F90" 2
# 42 "src/mem_impl.F90" 2


subroutine aa_mem_mod_i32_array1_4(n,a)
  integer(4), intent(in) :: n
  integer(4), intent(out), pointer :: a(:)
  integer(4) :: s(1)
  type(c_ptr) :: p
  p = aa_mem_region_local_alloc_c(int(n*4,c_size_t))
  s(1) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_i32_array1_4

subroutine aa_mem_mod_i32_array2_4(m,n,a)
  integer(4), intent(in) :: m,n
  integer(4), intent(out), pointer :: a(:,:)
  type(c_ptr) :: p
  integer(4) :: s(2)
  p = aa_mem_region_local_alloc_c(int(m*n*4,c_size_t))
  s(1) = m
  s(2) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_i32_array2_4

subroutine aa_mem_mod_i32_array1_8(n,a)
  integer(8), intent(in) :: n
  integer(4), intent(out), pointer :: a(:)
  type(c_ptr) :: p
  integer(8) :: s(1)
  p = aa_mem_region_local_alloc_c(int(n*int(4,8),c_size_t))
  s(1) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_i32_array1_8

subroutine aa_mem_mod_i32_array2_8(m,n,a)
  integer(8), intent(in) :: m,n
  integer(4), intent(out), pointer :: a(:,:)
  type(c_ptr) :: p
  integer(8) :: s(2)
  p = aa_mem_region_local_alloc_c(int(m*n*int(4,8),c_size_t))
  s(1) = m
  s(2) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_i32_array2_8

subroutine aa_mem_mod_i32_pop1(a)
  integer(4), intent(inout), pointer :: a(:)
  call aa_mem_region_local_pop_c( c_loc(a(1)) )
  nullify(a)
end subroutine aa_mem_mod_i32_pop1

subroutine aa_mem_mod_i32_pop2(a)
  integer(4), intent(inout), pointer :: a(:,:)
  call aa_mem_region_local_pop_c( c_loc(a(1,1)) )
  nullify(a)
end subroutine aa_mem_mod_i32_pop2

# 1 "./include/amino/undef.F90" 1


# 1 "./include/amino/undef.h" 1
# 4 "./include/amino/undef.F90" 2
# 98 "src/mem_impl.F90" 2
# 117 "src/mem_mod.F90" 2


# 1 "src/mem_impl.F90" 1
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


# 1 "./include/amino/def.F90" 1

# 1 "./include/amino/def.h" 1
# 3 "./include/amino/def.F90" 2
# 42 "src/mem_impl.F90" 2


subroutine aa_mem_mod_i64_array1_4(n,a)
  integer(4), intent(in) :: n
  integer(8), intent(out), pointer :: a(:)
  integer(4) :: s(1)
  type(c_ptr) :: p
  p = aa_mem_region_local_alloc_c(int(n*8,c_size_t))
  s(1) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_i64_array1_4

subroutine aa_mem_mod_i64_array2_4(m,n,a)
  integer(4), intent(in) :: m,n
  integer(8), intent(out), pointer :: a(:,:)
  type(c_ptr) :: p
  integer(4) :: s(2)
  p = aa_mem_region_local_alloc_c(int(m*n*8,c_size_t))
  s(1) = m
  s(2) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_i64_array2_4

subroutine aa_mem_mod_i64_array1_8(n,a)
  integer(8), intent(in) :: n
  integer(8), intent(out), pointer :: a(:)
  type(c_ptr) :: p
  integer(8) :: s(1)
  p = aa_mem_region_local_alloc_c(int(n*int(8,8),c_size_t))
  s(1) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_i64_array1_8

subroutine aa_mem_mod_i64_array2_8(m,n,a)
  integer(8), intent(in) :: m,n
  integer(8), intent(out), pointer :: a(:,:)
  type(c_ptr) :: p
  integer(8) :: s(2)
  p = aa_mem_region_local_alloc_c(int(m*n*int(8,8),c_size_t))
  s(1) = m
  s(2) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_i64_array2_8

subroutine aa_mem_mod_i64_pop1(a)
  integer(8), intent(inout), pointer :: a(:)
  call aa_mem_region_local_pop_c( c_loc(a(1)) )
  nullify(a)
end subroutine aa_mem_mod_i64_pop1

subroutine aa_mem_mod_i64_pop2(a)
  integer(8), intent(inout), pointer :: a(:,:)
  call aa_mem_region_local_pop_c( c_loc(a(1,1)) )
  nullify(a)
end subroutine aa_mem_mod_i64_pop2

# 1 "./include/amino/undef.F90" 1


# 1 "./include/amino/undef.h" 1
# 4 "./include/amino/undef.F90" 2
# 98 "src/mem_impl.F90" 2
# 120 "src/mem_mod.F90" 2


# 1 "src/mem_impl.F90" 1
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


# 1 "./include/amino/def.F90" 1

# 1 "./include/amino/def.h" 1
# 3 "./include/amino/def.F90" 2
# 42 "src/mem_impl.F90" 2


subroutine aa_mem_mod_l8_array1_4(n,a)
  integer(4), intent(in) :: n
  logical(1), intent(out), pointer :: a(:)
  integer(4) :: s(1)
  type(c_ptr) :: p
  p = aa_mem_region_local_alloc_c(int(n*1,c_size_t))
  s(1) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_l8_array1_4

subroutine aa_mem_mod_l8_array2_4(m,n,a)
  integer(4), intent(in) :: m,n
  logical(1), intent(out), pointer :: a(:,:)
  type(c_ptr) :: p
  integer(4) :: s(2)
  p = aa_mem_region_local_alloc_c(int(m*n*1,c_size_t))
  s(1) = m
  s(2) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_l8_array2_4

subroutine aa_mem_mod_l8_array1_8(n,a)
  integer(8), intent(in) :: n
  logical(1), intent(out), pointer :: a(:)
  type(c_ptr) :: p
  integer(8) :: s(1)
  p = aa_mem_region_local_alloc_c(int(n*int(1,8),c_size_t))
  s(1) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_l8_array1_8

subroutine aa_mem_mod_l8_array2_8(m,n,a)
  integer(8), intent(in) :: m,n
  logical(1), intent(out), pointer :: a(:,:)
  type(c_ptr) :: p
  integer(8) :: s(2)
  p = aa_mem_region_local_alloc_c(int(m*n*int(1,8),c_size_t))
  s(1) = m
  s(2) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_l8_array2_8

subroutine aa_mem_mod_l8_pop1(a)
  logical(1), intent(inout), pointer :: a(:)
  call aa_mem_region_local_pop_c( c_loc(a(1)) )
  nullify(a)
end subroutine aa_mem_mod_l8_pop1

subroutine aa_mem_mod_l8_pop2(a)
  logical(1), intent(inout), pointer :: a(:,:)
  call aa_mem_region_local_pop_c( c_loc(a(1,1)) )
  nullify(a)
end subroutine aa_mem_mod_l8_pop2

# 1 "./include/amino/undef.F90" 1


# 1 "./include/amino/undef.h" 1
# 4 "./include/amino/undef.F90" 2
# 98 "src/mem_impl.F90" 2
# 123 "src/mem_mod.F90" 2


# 1 "src/mem_impl.F90" 1
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


# 1 "./include/amino/def.F90" 1

# 1 "./include/amino/def.h" 1
# 3 "./include/amino/def.F90" 2
# 42 "src/mem_impl.F90" 2


subroutine aa_mem_mod_l32_array1_4(n,a)
  integer(4), intent(in) :: n
  logical(4), intent(out), pointer :: a(:)
  integer(4) :: s(1)
  type(c_ptr) :: p
  p = aa_mem_region_local_alloc_c(int(n*4,c_size_t))
  s(1) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_l32_array1_4

subroutine aa_mem_mod_l32_array2_4(m,n,a)
  integer(4), intent(in) :: m,n
  logical(4), intent(out), pointer :: a(:,:)
  type(c_ptr) :: p
  integer(4) :: s(2)
  p = aa_mem_region_local_alloc_c(int(m*n*4,c_size_t))
  s(1) = m
  s(2) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_l32_array2_4

subroutine aa_mem_mod_l32_array1_8(n,a)
  integer(8), intent(in) :: n
  logical(4), intent(out), pointer :: a(:)
  type(c_ptr) :: p
  integer(8) :: s(1)
  p = aa_mem_region_local_alloc_c(int(n*int(4,8),c_size_t))
  s(1) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_l32_array1_8

subroutine aa_mem_mod_l32_array2_8(m,n,a)
  integer(8), intent(in) :: m,n
  logical(4), intent(out), pointer :: a(:,:)
  type(c_ptr) :: p
  integer(8) :: s(2)
  p = aa_mem_region_local_alloc_c(int(m*n*int(4,8),c_size_t))
  s(1) = m
  s(2) = n
  call c_f_pointer( p, a, s )
end subroutine aa_mem_mod_l32_array2_8

subroutine aa_mem_mod_l32_pop1(a)
  logical(4), intent(inout), pointer :: a(:)
  call aa_mem_region_local_pop_c( c_loc(a(1)) )
  nullify(a)
end subroutine aa_mem_mod_l32_pop1

subroutine aa_mem_mod_l32_pop2(a)
  logical(4), intent(inout), pointer :: a(:,:)
  call aa_mem_region_local_pop_c( c_loc(a(1,1)) )
  nullify(a)
end subroutine aa_mem_mod_l32_pop2

# 1 "./include/amino/undef.F90" 1


# 1 "./include/amino/undef.h" 1
# 4 "./include/amino/undef.F90" 2
# 98 "src/mem_impl.F90" 2
# 126 "src/mem_mod.F90" 2

end module amino_mem
