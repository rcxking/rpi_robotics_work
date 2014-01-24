/*
 * powerball_inverse_kinematics.c
 *
 * Code generation for function 'powerball_inverse_kinematics'
 *
 * C source code generated on: Mon Oct 14 13:43:42 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "powerball_inverse_kinematics.h"
#include "norm.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
static real_T rt_atan2d_snf(real_T u0, real_T u1);
static real_T rt_powd_snf(real_T u0, real_T u1);
static real_T subproblem1(real_T k[3], const real_T p[3], const real_T q[3]);
static void subproblem2(const real_T p[3], const real_T q[3], real_T
  theta1_data[2], int32_T theta1_size[2], real_T theta2_data[2], int32_T
  theta2_size[2]);

/* Function Definitions */
static real_T rt_atan2d_snf(real_T u0, real_T u1)
{
  real_T y;
  int32_T b_u0;
  int32_T b_u1;
  if (rtIsNaN(u0) || rtIsNaN(u1)) {
    y = rtNaN;
  } else if (rtIsInf(u0) && rtIsInf(u1)) {
    if (u0 > 0.0) {
      b_u0 = 1;
    } else {
      b_u0 = -1;
    }

    if (u1 > 0.0) {
      b_u1 = 1;
    } else {
      b_u1 = -1;
    }

    y = atan2((real_T)b_u0, (real_T)b_u1);
  } else if (u1 == 0.0) {
    if (u0 > 0.0) {
      y = RT_PI / 2.0;
    } else if (u0 < 0.0) {
      y = -(RT_PI / 2.0);
    } else {
      y = 0.0;
    }
  } else {
    y = atan2(u0, u1);
  }

  return y;
}

static real_T rt_powd_snf(real_T u0, real_T u1)
{
  real_T y;
  real_T d0;
  real_T d1;
  if (rtIsNaN(u0) || rtIsNaN(u1)) {
    y = rtNaN;
  } else {
    d0 = fabs(u0);
    d1 = fabs(u1);
    if (rtIsInf(u1)) {
      if (d0 == 1.0) {
        y = rtNaN;
      } else if (d0 > 1.0) {
        if (u1 > 0.0) {
          y = rtInf;
        } else {
          y = 0.0;
        }
      } else if (u1 > 0.0) {
        y = 0.0;
      } else {
        y = rtInf;
      }
    } else if (d1 == 0.0) {
      y = 1.0;
    } else if (d1 == 1.0) {
      if (u1 > 0.0) {
        y = u0;
      } else {
        y = 1.0 / u0;
      }
    } else if (u1 == 2.0) {
      y = u0 * u0;
    } else if ((u1 == 0.5) && (u0 >= 0.0)) {
      y = sqrt(u0);
    } else if ((u0 < 0.0) && (u1 > floor(u1))) {
      y = rtNaN;
    } else {
      y = pow(u0, u1);
    }
  }

  return y;
}

static real_T subproblem1(real_T k[3], const real_T p[3], const real_T q[3])
{
  real_T theta;
  real_T B;
  real_T y;
  int32_T i;
  real_T b_y;
  real_T pp[3];
  real_T qp[3];
  real_T b_pp[3];
  real_T c_pp[3];
  real_T d_pp[3];

  /*  [theta]=subproblem1(k,p,q) */
  /*  1 unique solution */
  B = norm(k);
  y = 0.0;
  for (i = 0; i < 3; i++) {
    b_y = k[i] / B;
    y += p[i] * b_y;
    k[i] = b_y;
  }

  b_y = 0.0;
  for (i = 0; i < 3; i++) {
    pp[i] = p[i] - y * k[i];
    b_y += q[i] * k[i];
  }

  B = norm(pp);
  for (i = 0; i < 3; i++) {
    qp[i] = q[i] - b_y * k[i];
    pp[i] /= B;
  }

  B = norm(qp);

  /*  [theta]=subproblem0(p,q,k) */
  /*  1 unique solution */
  b_y = norm(pp);
  for (i = 0; i < 3; i++) {
    b_pp[i] = pp[i] / b_y;
    qp[i] /= B;
  }

  B = norm(qp);
  for (i = 0; i < 3; i++) {
    b_y = qp[i] / B;
    c_pp[i] = b_pp[i] - b_y;
    d_pp[i] = b_pp[i] + b_y;
  }

  theta = 2.0 * rt_atan2d_snf(norm(c_pp), norm(d_pp));
  b_pp[0] = pp[1] * qp[2] - pp[2] * qp[1];
  b_pp[1] = pp[2] * qp[0] - pp[0] * qp[2];
  b_pp[2] = pp[0] * qp[1] - pp[1] * qp[0];
  y = 0.0;
  for (i = 0; i < 3; i++) {
    y += k[i] * b_pp[i];
  }

  if (y < 0.0) {
    theta = -theta;
  }

  return theta;
}

static void subproblem2(const real_T p[3], const real_T q[3], real_T
  theta1_data[2], int32_T theta1_size[2], real_T theta2_data[2], int32_T
  theta2_size[2])
{
  real_T k12;
  real_T pk;
  real_T qk;
  int32_T k;
  static const int8_T b[3] = { 0, -1, 0 };

  static const int8_T b_b[3] = { 0, 0, 1 };

  real_T absxk;
  real_T b_k12[4];
  real_T b_pk[2];
  real_T a[2];
  int32_T i1;
  real_T t;
  real_T b_a[3];
  real_T c1[3];
  static const int8_T c_a[9] = { 0, 0, 1, 0, -1, 0, 1, 0, 0 };

  real_T c_b[3];
  real_T d_b[3];
  real_T e_b[3];
  real_T f_b[3];
  real_T c2[3];
  k12 = 0.0;
  pk = 0.0;
  qk = 0.0;
  for (k = 0; k < 3; k++) {
    k12 += (real_T)(b_b[k] * b[k]);
    pk += p[k] * (real_T)b[k];
    qk += q[k] * (real_T)b_b[k];
  }

  /*  check if solution exists */
  if (fabs(rt_powd_snf(k12, 2.0) - 1.0) < 2.2204460492503131E-16) {
    theta1_size[0] = 0;
    theta1_size[1] = 0;
    theta2_size[0] = 0;
    theta2_size[1] = 0;
  } else {
    absxk = rt_powd_snf(k12, 2.0);
    b_k12[0] = k12;
    b_k12[2] = -1.0;
    b_k12[1] = -1.0;
    b_k12[3] = k12;
    b_pk[0] = pk;
    b_pk[1] = qk;
    for (k = 0; k < 2; k++) {
      pk = 0.0;
      for (i1 = 0; i1 < 2; i1++) {
        pk += b_k12[k + (i1 << 1)] * b_pk[i1];
      }

      a[k] = pk / (absxk - 1.0);
    }

    pk = 0.0;
    qk = 2.2250738585072014E-308;
    for (k = 0; k < 2; k++) {
      absxk = fabs(a[k]);
      if (absxk > qk) {
        t = qk / absxk;
        pk = 1.0 + pk * t * t;
        qk = absxk;
      } else {
        t = absxk / qk;
        pk += t * t;
      }
    }

    pk = qk * sqrt(pk);
    pk = (rt_powd_snf(norm(p), 2.0) - rt_powd_snf(pk, 2.0)) - 2.0 * a[0] * a[1] *
      k12;
    if (fabs(pk) < 2.2204460492503131E-16) {
      pk = 0.0;
    }

    if (pk < 0.0) {
      theta1_size[0] = 1;
      theta1_size[1] = 2;
      theta2_size[0] = 1;
      theta2_size[1] = 2;
      for (k = 0; k < 2; k++) {
        theta1_data[k] = rtNaN;
        theta2_data[k] = rtNaN;
      }
    } else {
      /*  check if there is only 1 solution */
      pk = sqrt(pk);

      /*  general case: 2 solutions */
      theta1_size[0] = 1;
      theta1_size[1] = 2;
      theta2_size[0] = 1;
      theta2_size[1] = 2;
      for (k = 0; k < 2; k++) {
        b_a[k] = a[k];
      }

      b_a[2] = pk;
      for (k = 0; k < 3; k++) {
        c1[k] = 0.0;
        for (i1 = 0; i1 < 3; i1++) {
          c1[k] += (real_T)c_a[k + 3 * i1] * b_a[i1];
        }
      }

      for (k = 0; k < 2; k++) {
        b_a[k] = a[k];
      }

      b_a[2] = -pk;
      for (k = 0; k < 3; k++) {
        c2[k] = 0.0;
        for (i1 = 0; i1 < 3; i1++) {
          c2[k] += (real_T)c_a[k + 3 * i1] * b_a[i1];
        }

        c_b[k] = (real_T)b[k];
        d_b[k] = (real_T)b[k];
        e_b[k] = (real_T)b_b[k];
        f_b[k] = (real_T)b_b[k];
      }

      theta2_data[0] = subproblem1(c_b, p, c1);
      theta2_data[1] = subproblem1(d_b, p, c2);
      theta1_data[0] = -subproblem1(e_b, q, c1);
      theta1_data[1] = -subproblem1(f_b, q, c2);
    }
  }
}

void powerball_inverse_kinematics(const real_T T06[16], const real_T th_p[6],
  real_T th_out_data[48], int32_T th_out_size[2])
{
  real_T th_ik[48];
  real_T d_elbow[3];
  int32_T i0;
  real_T x;
  int32_T counter;
  static const int8_T b[3] = { 0, 0, 75 };

  static const uint8_T uv0[3] = { 0, 0, 205 };

  real_T dv0[3];
  real_T dv1[3];
  static const int16_T iv0[3] = { 0, 0, 350 };

  int32_T theta2_1_size[2];
  real_T theta2_1_data[2];
  int32_T theta1_1_size[2];
  real_T theta1_1_data[2];
  int32_T loop_ub;
  real_T b_theta1_1_data[4];
  real_T b_theta2_1_data[4];
  real_T dv2[3];
  real_T theta2_2_data[2];
  real_T theta1_2_data[2];
  real_T b_theta1_2_data[4];
  real_T b_theta2_2_data[4];
  real_T b_th_p[2];
  real_T c_th_p[2];
  real_T d_th_p[2];
  real_T e_th_p[2];
  int32_T ixstart;
  real_T T03[16];
  static const int8_T iv1[4] = { 1, 2, 5, 6 };

  real_T dv3[16];
  static const real_T dv4[4] = { 0.0, 1.0, 6.123233995736766E-17, 205.0 };

  static const int8_T iv2[4] = { 0, 0, 0, 1 };

  static const int8_T iv3[4] = { 0, 0, 1, 0 };

  real_T dv5[16];
  real_T dv6[16];
  int32_T j;
  static const real_T dv7[4] = { 0.0, -1.0, 6.123233995736766E-17, 0.0 };

  real_T b_T03[16];
  real_T c_T03[9];
  real_T Twrist[16];
  real_T temp_out[48];
  int32_T k;
  static const real_T th_limit[6] = { 2.9670597283903604, 1.9198621771937625,
    2.7052603405912108, 2.9670597283903604, 2.4434609527920612,
    2.9670597283903604 };

  boolean_T b_x[6];
  real_T y[6];
  boolean_T exitg2;
  real_T min_diff_data[8];
  boolean_T exitg1;
  boolean_T x_data[8];
  int32_T y_data[8];
  real_T temp_out_data[48];

  /* % Inverse Kinematics Schunk Powerball LWA 4.6 */
  /* 	th_out=inverse_kinematics(T06, theta_previous) */
  /*  T06= [4x4] */
  /*  theta_previous= [6x1] */
  /*  T06=zeros(4,4); */
  /*  th_p=[0;0;0;0;0;0]; */
  /*   */
  /*  switch nargin */
  /*  	case 1 */
  /*  		T06=varargin{1}; */
  /*  	case 2 */
  /*  		T06=varargin{1}; */
  /*  		th_p=varargin{2}; */
  /*  end */
  memset(&th_ik[0], 0, 48U * sizeof(real_T));

  /* Symetric Joint limits Schunk Powerball 4.6 */
  /* base */
  /* upper arm */
  /* forearm */
  /* hand */
  /*  th = sym('th_%d', [6 1]); */
  /* % */
  /*  Solve for $\theta_3$ */
  for (i0 = 0; i0 < 3; i0++) {
    x = 0.0;
    for (counter = 0; counter < 3; counter++) {
      x += T06[i0 + (counter << 2)] * (real_T)b[counter];
    }

    d_elbow[i0] = (T06[12 + i0] - x) - (real_T)uv0[i0];
  }

  x = acos((215525.0 - rt_powd_snf(norm(d_elbow), 2.0)) / 213500.0);
  for (i0 = 0; i0 < 4; i0++) {
    th_ik[2 + 6 * i0] = 3.1415926535897931 - x;
  }

  for (i0 = 0; i0 < 4; i0++) {
    th_ik[2 + 6 * (4 + i0)] = -(3.1415926535897931 - x);
  }

  /* % */
  /*  Solve for $\theta_1$ & $\theta_2$ */
  dv0[0] = -305.0 * sin(th_ik[2]);
  dv0[1] = 0.0;
  dv0[2] = 305.0 * cos(th_ik[2]);
  for (i0 = 0; i0 < 3; i0++) {
    dv1[i0] = (real_T)iv0[i0] + dv0[i0];
  }

  subproblem2(dv1, d_elbow, theta1_1_data, theta1_1_size, theta2_1_data,
              theta2_1_size);
  loop_ub = theta1_1_size[0] * theta1_1_size[1];
  for (i0 = 0; i0 < loop_ub; i0++) {
    b_theta1_1_data[i0] = theta1_1_data[i0];
  }

  loop_ub = theta2_1_size[0] * theta2_1_size[1];
  for (i0 = 0; i0 < loop_ub; i0++) {
    b_theta2_1_data[i0] = theta2_1_data[i0];
  }

  /*  2 Solutions for theta3(1) */
  dv2[0] = -305.0 * sin(th_ik[26]);
  dv2[1] = 0.0;
  dv2[2] = 305.0 * cos(th_ik[26]);
  for (i0 = 0; i0 < 3; i0++) {
    dv0[i0] = (real_T)iv0[i0] + dv2[i0];
  }

  subproblem2(dv0, d_elbow, theta1_2_data, theta1_1_size, theta2_2_data,
              theta2_1_size);
  loop_ub = theta1_1_size[0] * theta1_1_size[1];
  for (i0 = 0; i0 < loop_ub; i0++) {
    b_theta1_2_data[i0] = theta1_2_data[i0];
  }

  loop_ub = theta2_1_size[0] * theta2_1_size[1];
  for (i0 = 0; i0 < loop_ub; i0++) {
    b_theta2_2_data[i0] = theta2_2_data[i0];
  }

  /*  2 Solutions for theta3(2) */
  if (rtIsNaN(theta1_1_data[0]) || rtIsNaN(theta1_1_data[1])) {
    b_th_p[0] = th_p[0];
    b_th_p[1] = th_p[0];
    for (i0 = 0; i0 < 2; i0++) {
      b_theta1_1_data[i0] = b_th_p[i0];
    }
  }

  if (rtIsNaN(theta1_2_data[0]) || rtIsNaN(theta1_2_data[1])) {
    c_th_p[0] = th_p[0];
    c_th_p[1] = th_p[0];
    for (i0 = 0; i0 < 2; i0++) {
      b_theta1_2_data[i0] = c_th_p[i0];
    }
  }

  if (rtIsNaN(theta2_1_data[0]) || rtIsNaN(theta2_1_data[1])) {
    d_th_p[0] = th_p[0];
    d_th_p[1] = th_p[0];
    for (i0 = 0; i0 < 2; i0++) {
      b_theta2_1_data[i0] = d_th_p[i0];
    }
  }

  if (rtIsNaN(theta2_2_data[0]) || rtIsNaN(theta2_2_data[1])) {
    e_th_p[0] = th_p[0];
    e_th_p[1] = th_p[0];
    for (i0 = 0; i0 < 2; i0++) {
      b_theta2_2_data[i0] = e_th_p[i0];
    }
  }

  /* % */
  /*  $\theta_4$, $\theta_5$, $\theta_6$ */
  for (i0 = 0; i0 < 2; i0++) {
    th_ik[6 * i0] = b_theta1_1_data[i0];
  }

  for (i0 = 0; i0 < 2; i0++) {
    th_ik[6 * (i0 + 2)] = b_theta1_1_data[i0];
  }

  for (i0 = 0; i0 < 2; i0++) {
    th_ik[6 * (i0 + 4)] = b_theta1_2_data[i0];
  }

  for (i0 = 0; i0 < 2; i0++) {
    th_ik[6 * (i0 + 6)] = b_theta1_2_data[i0];
  }

  for (i0 = 0; i0 < 2; i0++) {
    th_ik[1 + 6 * i0] = b_theta2_1_data[i0];
  }

  for (i0 = 0; i0 < 2; i0++) {
    th_ik[1 + 6 * (i0 + 2)] = b_theta2_1_data[i0];
  }

  for (i0 = 0; i0 < 2; i0++) {
    th_ik[1 + 6 * (i0 + 4)] = b_theta2_2_data[i0];
  }

  for (i0 = 0; i0 < 2; i0++) {
    th_ik[1 + 6 * (i0 + 6)] = b_theta2_2_data[i0];
  }

  for (ixstart = 0; ixstart < 4; ixstart++) {
    T03[0] = cos(th_ik[6 * (iv1[ixstart] - 1)]);
    T03[4] = -sin(th_ik[6 * (iv1[ixstart] - 1)]) * 6.123233995736766E-17;
    T03[8] = sin(th_ik[6 * (iv1[ixstart] - 1)]);
    T03[12] = 0.0 * cos(th_ik[6 * (iv1[ixstart] - 1)]);
    T03[1] = sin(th_ik[6 * (iv1[ixstart] - 1)]);
    T03[5] = cos(th_ik[6 * (iv1[ixstart] - 1)]) * 6.123233995736766E-17;
    T03[9] = -cos(th_ik[6 * (iv1[ixstart] - 1)]);
    T03[13] = 0.0 * sin(th_ik[6 * (iv1[ixstart] - 1)]);
    dv3[0] = cos(th_ik[1 + 6 * (iv1[ixstart] - 1)] + 1.5707963267948966);
    dv3[4] = -sin(th_ik[1 + 6 * (iv1[ixstart] - 1)] + 1.5707963267948966);
    dv3[8] = sin(th_ik[1 + 6 * (iv1[ixstart] - 1)] + 1.5707963267948966) * 0.0;
    dv3[12] = 350.0 * cos(th_ik[1 + 6 * (iv1[ixstart] - 1)] + 1.5707963267948966);
    dv3[1] = sin(th_ik[1 + 6 * (iv1[ixstart] - 1)] + 1.5707963267948966);
    dv3[5] = cos(th_ik[1 + 6 * (iv1[ixstart] - 1)] + 1.5707963267948966);
    dv3[9] = -cos(th_ik[1 + 6 * (iv1[ixstart] - 1)] + 1.5707963267948966) * 0.0;
    dv3[13] = 350.0 * sin(th_ik[1 + 6 * (iv1[ixstart] - 1)] + 1.5707963267948966);
    for (i0 = 0; i0 < 4; i0++) {
      T03[2 + (i0 << 2)] = dv4[i0];
      T03[3 + (i0 << 2)] = (real_T)iv2[i0];
      dv3[2 + (i0 << 2)] = (real_T)iv3[i0];
      dv3[3 + (i0 << 2)] = (real_T)iv2[i0];
    }

    dv6[0] = cos(th_ik[2 + 6 * (iv1[ixstart] - 1)] - 1.5707963267948966);
    dv6[4] = -sin(th_ik[2 + 6 * (iv1[ixstart] - 1)] - 1.5707963267948966) *
      6.123233995736766E-17;
    dv6[8] = -sin(th_ik[2 + 6 * (iv1[ixstart] - 1)] - 1.5707963267948966);
    dv6[12] = 0.0 * cos(th_ik[2 + 6 * (iv1[ixstart] - 1)] - 1.5707963267948966);
    dv6[1] = sin(th_ik[2 + 6 * (iv1[ixstart] - 1)] - 1.5707963267948966);
    dv6[5] = cos(th_ik[2 + 6 * (iv1[ixstart] - 1)] - 1.5707963267948966) *
      6.123233995736766E-17;
    dv6[9] = -(-cos(th_ik[2 + 6 * (iv1[ixstart] - 1)] - 1.5707963267948966));
    dv6[13] = 0.0 * sin(th_ik[2 + 6 * (iv1[ixstart] - 1)] - 1.5707963267948966);
    for (i0 = 0; i0 < 4; i0++) {
      for (counter = 0; counter < 4; counter++) {
        dv5[i0 + (counter << 2)] = 0.0;
        for (j = 0; j < 4; j++) {
          dv5[i0 + (counter << 2)] += T03[i0 + (j << 2)] * dv3[j + (counter << 2)];
        }
      }

      dv6[2 + (i0 << 2)] = dv7[i0];
      dv6[3 + (i0 << 2)] = (real_T)iv2[i0];
    }

    for (i0 = 0; i0 < 4; i0++) {
      for (counter = 0; counter < 4; counter++) {
        b_T03[i0 + (counter << 2)] = 0.0;
        for (j = 0; j < 4; j++) {
          b_T03[i0 + (counter << 2)] += dv5[i0 + (j << 2)] * dv6[j + (counter <<
            2)];
        }
      }
    }

    for (i0 = 0; i0 < 3; i0++) {
      for (counter = 0; counter < 3; counter++) {
        c_T03[counter + 3 * i0] = -b_T03[i0 + (counter << 2)];
      }
    }

    for (i0 = 0; i0 < 3; i0++) {
      d_elbow[i0] = 0.0;
      for (counter = 0; counter < 3; counter++) {
        d_elbow[i0] += c_T03[i0 + 3 * counter] * b_T03[12 + counter];
      }

      for (counter = 0; counter < 3; counter++) {
        T03[counter + (i0 << 2)] = b_T03[i0 + (counter << 2)];
      }
    }

    for (i0 = 0; i0 < 3; i0++) {
      T03[12 + i0] = d_elbow[i0];
    }

    for (i0 = 0; i0 < 4; i0++) {
      T03[3 + (i0 << 2)] = (real_T)iv2[i0];
    }

    for (i0 = 0; i0 < 4; i0++) {
      for (counter = 0; counter < 4; counter++) {
        Twrist[i0 + (counter << 2)] = 0.0;
        for (j = 0; j < 4; j++) {
          Twrist[i0 + (counter << 2)] += T03[i0 + (j << 2)] * T06[j + (counter <<
            2)];
        }
      }
    }

    th_ik[3 + 6 * (iv1[ixstart] - 1)] = rt_atan2d_snf(-Twrist[9], -Twrist[8]);
    th_ik[4 + 6 * (iv1[ixstart] - 1)] = acos(Twrist[10]);

    /*  */
    th_ik[5 + 6 * (iv1[ixstart] - 1)] = rt_atan2d_snf(-Twrist[6], Twrist[2]);
    th_ik[3 + 6 * (iv1[ixstart] + 1)] = rt_atan2d_snf(Twrist[9], Twrist[8]);
    th_ik[4 + 6 * (iv1[ixstart] + 1)] = -acos(Twrist[10]);

    /*  */
    th_ik[5 + 6 * (iv1[ixstart] + 1)] = rt_atan2d_snf(Twrist[6], -Twrist[2]);
  }

  /* % */
  /*  Joint limits and find closest to previous */
  counter = -1;
  memset(&temp_out[0], 0, 48U * sizeof(real_T));
  for (ixstart = 0; ixstart < 8; ixstart++) {
    for (k = 0; k < 6; k++) {
      b_x[k] = (fabs(th_ik[k + 6 * ixstart]) <= th_limit[k]);
    }

    x = (real_T)b_x[0];
    for (k = 0; k < 5; k++) {
      x += (real_T)b_x[k + 1];
    }

    if (x == 6.0) {
      counter++;
      for (i0 = 0; i0 < 6; i0++) {
        temp_out[i0 + 6 * counter] = th_ik[i0 + 6 * ixstart];
      }
    }
  }

  if (1 > counter + 1) {
    loop_ub = 0;
  } else {
    loop_ub = counter + 1;
  }

  for (k = 0; k < 6; k++) {
    y[k] = fabs(th_p[k]);
  }

  ixstart = 1;
  x = y[0];
  if (rtIsNaN(y[0])) {
    j = 2;
    exitg2 = FALSE;
    while ((exitg2 == FALSE) && (j < 7)) {
      ixstart = j;
      if (!rtIsNaN(y[j - 1])) {
        x = y[j - 1];
        exitg2 = TRUE;
      } else {
        j++;
      }
    }
  }

  if (ixstart < 6) {
    while (ixstart + 1 < 7) {
      if (y[ixstart] > x) {
        x = y[ixstart];
      }

      ixstart++;
    }
  }

  if (x > 0.0) {
    for (i0 = 0; i0 <= counter; i0++) {
      min_diff_data[i0] = 0.0;
    }

    for (ixstart = 0; ixstart <= counter; ixstart++) {
      /*  min_diff(x)=norm(temp_out_lim(:,x).'-th_p); */
      min_diff_data[ixstart] = rt_powd_snf(((((rt_powd_snf(temp_out[6 * ixstart]
        - th_p[0], 2.0) + rt_powd_snf(temp_out[1 + 6 * ixstart] - th_p[1], 2.0))
        + rt_powd_snf(temp_out[2 + 6 * ixstart] - th_p[2], 2.0)) + rt_powd_snf
        (temp_out[3 + 6 * ixstart] - th_p[3], 2.0)) + rt_powd_snf(temp_out[4 + 6
        * ixstart] - th_p[4], 2.0)) + rt_powd_snf(temp_out[5 + 6 * ixstart] -
        th_p[5], 2.0), 0.5);
    }

    ixstart = 1;
    x = min_diff_data[0];
    if (counter + 1 > 1) {
      if (rtIsNaN(min_diff_data[0])) {
        j = 2;
        exitg1 = FALSE;
        while ((exitg1 == FALSE) && (j <= counter + 1)) {
          ixstart = j;
          if (!rtIsNaN(min_diff_data[j - 1])) {
            x = min_diff_data[j - 1];
            exitg1 = TRUE;
          } else {
            j++;
          }
        }
      }

      if (ixstart < counter + 1) {
        while (ixstart + 1 <= counter + 1) {
          if (min_diff_data[ixstart] < x) {
            x = min_diff_data[ixstart];
          }

          ixstart++;
        }
      }
    }

    ixstart = counter + 1;
    for (i0 = 0; i0 < ixstart; i0++) {
      x_data[i0] = (min_diff_data[i0] == x);
    }

    k = 0;
    for (ixstart = 1; ixstart <= counter + 1; ixstart++) {
      if (x_data[ixstart - 1]) {
        k++;
      }
    }

    j = 0;
    for (ixstart = 1; ixstart <= counter + 1; ixstart++) {
      if (x_data[ixstart - 1]) {
        y_data[j] = ixstart;
        j++;
      }
    }

    for (i0 = 0; i0 < loop_ub; i0++) {
      for (counter = 0; counter < 6; counter++) {
        temp_out_data[counter + 6 * i0] = temp_out[counter + 6 * i0];
      }
    }

    th_out_size[0] = 6;
    th_out_size[1] = k;
    for (i0 = 0; i0 < k; i0++) {
      for (counter = 0; counter < 6; counter++) {
        th_out_data[counter + 6 * i0] = temp_out_data[counter + 6 * (y_data[i0]
          - 1)];
      }
    }
  } else {
    th_out_size[0] = 6;
    th_out_size[1] = loop_ub;
    for (i0 = 0; i0 < loop_ub; i0++) {
      for (counter = 0; counter < 6; counter++) {
        th_out_data[counter + 6 * i0] = temp_out[counter + 6 * i0];
      }
    }
  }
}

/* End of code generation (powerball_inverse_kinematics.c) */
