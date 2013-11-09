/*
 * powerball_inverse_kinematics.c
 *
 * Code generation for function 'powerball_inverse_kinematics'
 *
 * C source code generated on: Thu Nov 07 07:37:25 2013
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "powerball_inverse_kinematics.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
static real_T norm(const real_T x[3]);
static real_T rt_atan2d_snf(real_T u0, real_T u1);
static real_T rt_powd_snf(real_T u0, real_T u1);
static real_T subproblem1(real_T k[3], const real_T p[3], const real_T q[3]);
static void subproblem2(const real_T k1[3], const real_T k2[3], const real_T p[3],
  const real_T q[3], real_T theta1[2], real_T theta2[2]);

/* Function Definitions */
static real_T norm(const real_T x[3])
{
  real_T y;
  real_T scale;
  int32_T k;
  real_T absxk;
  real_T t;
  y = 0.0;
  scale = 2.2250738585072014E-308;
  for (k = 0; k < 3; k++) {
    absxk = fabs(x[k]);
    if (absxk > scale) {
      t = scale / absxk;
      y = 1.0 + y * t * t;
      scale = absxk;
    } else {
      t = absxk / scale;
      y += t * t;
    }
  }

  return scale * sqrt(y);
}

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

static void subproblem2(const real_T k1[3], const real_T k2[3], const real_T p[3],
  const real_T q[3], real_T theta1[2], real_T theta2[2])
{
  real_T k12;
  real_T pk;
  real_T qk;
  int32_T k;
  real_T absxk;
  real_T b_k12[4];
  real_T b_pk[2];
  real_T a[2];
  int32_T i2;
  real_T t;
  real_T b_k1[3];
  real_T c_k1[3];
  real_T d_k1[9];
  real_T b_a[3];
  real_T e_k1[3];
  real_T f_k1[9];
  real_T c1[3];
  real_T b_k2[3];
  real_T c2[3];

  /*  Finds theta1 & theta2 where two vectors p & q intersect when rotated about vectors k1 and k2 */
  k12 = 0.0;
  pk = 0.0;
  qk = 0.0;
  for (k = 0; k < 3; k++) {
    k12 += k1[k] * k2[k];
    pk += p[k] * k2[k];
    qk += q[k] * k1[k];
  }

  /*  check if solution exists */
  if (fabs(rt_powd_snf(k12, 2.0) - 1.0) < 2.2204460492503131E-16) {
    for (k = 0; k < 2; k++) {
      theta1[k] = rtNaN;
      theta2[k] = rtNaN;
    }
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
      for (i2 = 0; i2 < 2; i2++) {
        pk += b_k12[k + (i2 << 1)] * b_pk[i2];
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
      for (k = 0; k < 2; k++) {
        theta1[k] = rtNaN;
        theta2[k] = rtNaN;
      }
    } else {
      /*  check if there is only 1 solution */
      b_k1[0] = k1[1] * k2[2] - k1[2] * k2[1];
      b_k1[1] = k1[2] * k2[0] - k1[0] * k2[2];
      b_k1[2] = k1[0] * k2[1] - k1[1] * k2[0];
      pk = sqrt(pk) / norm(b_k1);

      /*  general case: 2 solutions */
      c_k1[0] = k1[1] * k2[2] - k1[2] * k2[1];
      c_k1[1] = k1[2] * k2[0] - k1[0] * k2[2];
      c_k1[2] = k1[0] * k2[1] - k1[1] * k2[0];
      for (k = 0; k < 3; k++) {
        d_k1[k] = k1[k];
        d_k1[3 + k] = k2[k];
        d_k1[6 + k] = c_k1[k];
      }

      for (k = 0; k < 2; k++) {
        b_a[k] = a[k];
      }

      b_a[2] = pk;
      e_k1[0] = k1[1] * k2[2] - k1[2] * k2[1];
      e_k1[1] = k1[2] * k2[0] - k1[0] * k2[2];
      e_k1[2] = k1[0] * k2[1] - k1[1] * k2[0];
      for (k = 0; k < 3; k++) {
        c1[k] = 0.0;
        for (i2 = 0; i2 < 3; i2++) {
          c1[k] += d_k1[k + 3 * i2] * b_a[i2];
        }

        f_k1[k] = k1[k];
        f_k1[3 + k] = k2[k];
        f_k1[6 + k] = e_k1[k];
      }

      for (k = 0; k < 2; k++) {
        b_a[k] = a[k];
      }

      b_a[2] = -pk;
      for (k = 0; k < 3; k++) {
        c2[k] = 0.0;
        for (i2 = 0; i2 < 3; i2++) {
          c2[k] += f_k1[k + 3 * i2] * b_a[i2];
        }

        e_k1[k] = k2[k];
        b_k2[k] = k2[k];
        b_k1[k] = k1[k];
        c_k1[k] = k1[k];
      }

      theta2[0] = subproblem1(e_k1, p, c1);
      theta2[1] = subproblem1(b_k2, p, c2);
      theta1[0] = -subproblem1(b_k1, q, c1);
      theta1[1] = -subproblem1(c_k1, q, c2);
    }
  }
}

void powerball_inverse_kinematics(const real_T T06[16], const real_T th_p[6],
  real_T th_out_data[56], int32_T th_out_size[2])
{
  real_T th_ik[56];
  real_T d_elbow[3];
  int32_T i0;
  real_T x;
  int32_T i1;
  static const int8_T b[3] = { 0, 0, 75 };

  static const uint8_T uv0[3] = { 0, 0, 205 };

  real_T dv0[3];
  real_T dv1[3];
  static const int16_T iv0[3] = { 0, 0, 350 };

  real_T theta2_1[2];
  real_T theta1_1[2];
  static const real_T dv2[3] = { 0.0, 1.0, 0.0 };

  static const real_T dv3[3] = { 0.0, 0.0, 1.0 };

  real_T dv4[3];
  real_T theta2_2[2];
  real_T theta1_2[2];
  int32_T ixstart;
  real_T T03[16];
  static const int8_T iv1[4] = { 1, 2, 5, 6 };

  real_T dv5[16];
  static const real_T dv6[4] = { 0.0, -1.0, 6.123233995736766E-17, 205.0 };

  static const int8_T iv2[4] = { 0, 0, 0, 1 };

  static const real_T dv7[4] = { 0.0, 1.2246467991473532E-16, -1.0, 0.0 };

  real_T dv8[16];
  real_T dv9[16];
  int32_T j;
  static const real_T dv10[4] = { 0.0, -1.0, 6.123233995736766E-17, 0.0 };

  real_T b_T03[16];
  real_T c_T03[9];
  real_T Twrist[16];
  int32_T counter;
  real_T temp_out[56];
  int32_T k;
  static const real_T th_limit[6] = { 2.9670597283903604, 1.9198621771937625,
    2.7052603405912108, 2.9670597283903604, 2.4434609527920612,
    2.9670597283903604 };

  boolean_T b_x[6];
  int32_T loop_ub;
  real_T y[6];
  boolean_T exitg2;
  real_T min_diff_data[8];
  real_T temp_out_data[56];
  real_T scale;
  real_T absxk;
  real_T t;
  boolean_T exitg1;
  boolean_T x_data[8];
  int32_T y_data[8];

  /* % Inverse Kinematics Schunk Powerball LWA 4.6 */
  /* 	th_out=inverse_kinematics(T06, theta_previous) */
  /*  T06= [4x4] */
  /*  theta_previous= [1x6] */
  memset(&th_ik[0], 0, 56U * sizeof(real_T));

  /*  initialize working solution variable */
  /* Symetric Joint limits Schunk Powerball 4.6 */
  /* base */
  /* upper arm */
  /* forearm */
  /* hand */
  /* % */
  /*  Solve for $\theta_3$ */
  /*  Vector from spherical wrist to tool tip */
  for (i0 = 0; i0 < 3; i0++) {
    x = 0.0;
    for (i1 = 0; i1 < 3; i1++) {
      x += T06[i0 + (i1 << 2)] * (real_T)b[i1];
    }

    d_elbow[i0] = (T06[12 + i0] - x) - (real_T)uv0[i0];
  }

  /*  Vector with the tool tip distance and base distance removed */
  /*  Distance from joints 1&2 to spherical wrist */
  x = acos((215525.0 - rt_powd_snf(norm(d_elbow), 2.0)) / 213500.0);

  /*  Angle of Elbow */
  for (i0 = 0; i0 < 4; i0++) {
    th_ik[2 + 7 * i0] = 3.1415926535897931 - x;
    th_ik[6 + 7 * i0] += 2.0;
  }

  /*  Elbow up   */
  for (i0 = 0; i0 < 4; i0++) {
    th_ik[2 + 7 * (4 + i0)] = -(3.1415926535897931 - x);
  }

  /* th_ik(7,5:8)=th_ik(7,5:8)+0*2^1; % Elbow Down */
  /* % */
  /*  Solve for $\theta_1$ & $\theta_2$ */
  dv0[0] = -305.0 * sin(th_ik[2]);
  dv0[1] = 0.0;
  dv0[2] = 305.0 * cos(th_ik[2]);
  for (i0 = 0; i0 < 3; i0++) {
    dv1[i0] = (real_T)iv0[i0] + dv0[i0];
  }

  subproblem2(dv3, dv2, dv1, d_elbow, theta1_1, theta2_1);

  /*  2 Solutions for theta3(1) Elbow up  */
  dv4[0] = -305.0 * sin(th_ik[30]);
  dv4[1] = 0.0;
  dv4[2] = 305.0 * cos(th_ik[30]);
  for (i0 = 0; i0 < 3; i0++) {
    dv0[i0] = (real_T)iv0[i0] + dv4[i0];
  }

  subproblem2(dv3, dv2, dv0, d_elbow, theta1_2, theta2_2);

  /*  2 Solutions for theta3(2) Elbow down */
  /*  Replace invalid solutions from subproblem2  */
  if (rtIsNaN(theta1_1[0]) || rtIsNaN(theta1_1[1])) {
    theta1_1[0] = th_p[0];
    theta1_1[1] = th_p[0];
  }

  if (rtIsNaN(theta1_2[0]) || rtIsNaN(theta1_2[1])) {
    theta1_2[0] = th_p[0];
    theta1_2[1] = th_p[0];
  }

  if (rtIsNaN(theta2_1[0]) || rtIsNaN(theta2_1[1])) {
    theta2_1[0] = th_p[0];
    theta2_1[1] = th_p[0];
  }

  if (rtIsNaN(theta2_2[0]) || rtIsNaN(theta2_2[1])) {
    theta2_2[0] = th_p[0];
    theta2_2[1] = th_p[0];
  }

  for (i0 = 0; i0 < 2; i0++) {
    th_ik[7 * i0] = theta1_1[i0];
  }

  for (i0 = 0; i0 < 2; i0++) {
    th_ik[7 * (i0 + 2)] = theta1_1[i0];
  }

  for (i0 = 0; i0 < 2; i0++) {
    th_ik[6 + 7 * (i0 << 1)]++;
  }

  /* Shoulder right  */
  for (i0 = 0; i0 < 2; i0++) {
    th_ik[7 * (i0 + 4)] = theta1_2[i0];
  }

  for (i0 = 0; i0 < 2; i0++) {
    th_ik[7 * (i0 + 6)] = theta1_2[i0];
  }

  for (i0 = 0; i0 < 2; i0++) {
    th_ik[6 + 7 * (4 + (i0 << 1))]++;
  }

  /* Shoulder right */
  for (i0 = 0; i0 < 2; i0++) {
    th_ik[1 + 7 * i0] = theta2_1[i0];
  }

  for (i0 = 0; i0 < 2; i0++) {
    th_ik[1 + 7 * (i0 + 2)] = theta2_1[i0];
  }

  for (i0 = 0; i0 < 2; i0++) {
    th_ik[1 + 7 * (i0 + 4)] = theta2_2[i0];
  }

  for (i0 = 0; i0 < 2; i0++) {
    th_ik[1 + 7 * (i0 + 6)] = theta2_2[i0];
  }

  /* % */
  /*  $\theta_4$, $\theta_5$, $\theta_6$ */
  for (ixstart = 0; ixstart < 4; ixstart++) {
    /*  	[th_1,th_2,th_3] */
    /*  homogenous transform matrix from DH parameters */
    /*  Create homogenous transform for joint angle 1 for EACH joint configuration. */
    /*  homogenous transform matrix from DH parameters */
    /*  homogenous transform matrix from DH parameters */
    /*   */
    T03[0] = cos(th_ik[7 * (iv1[ixstart] - 1)]);
    T03[4] = -sin(th_ik[7 * (iv1[ixstart] - 1)]) * 6.123233995736766E-17;
    T03[8] = -sin(th_ik[7 * (iv1[ixstart] - 1)]);
    T03[12] = 0.0 * cos(th_ik[7 * (iv1[ixstart] - 1)]);
    T03[1] = sin(th_ik[7 * (iv1[ixstart] - 1)]);
    T03[5] = cos(th_ik[7 * (iv1[ixstart] - 1)]) * 6.123233995736766E-17;
    T03[9] = -(-cos(th_ik[7 * (iv1[ixstart] - 1)]));
    T03[13] = 0.0 * sin(th_ik[7 * (iv1[ixstart] - 1)]);
    dv5[0] = cos(th_ik[1 + 7 * (iv1[ixstart] - 1)] - 1.5707963267948966);
    dv5[4] = -(-sin(th_ik[1 + 7 * (iv1[ixstart] - 1)] - 1.5707963267948966));
    dv5[8] = sin(th_ik[1 + 7 * (iv1[ixstart] - 1)] - 1.5707963267948966) *
      1.2246467991473532E-16;
    dv5[12] = 350.0 * cos(th_ik[1 + 7 * (iv1[ixstart] - 1)] - 1.5707963267948966);
    dv5[1] = sin(th_ik[1 + 7 * (iv1[ixstart] - 1)] - 1.5707963267948966);
    dv5[5] = -cos(th_ik[1 + 7 * (iv1[ixstart] - 1)] - 1.5707963267948966);
    dv5[9] = -cos(th_ik[1 + 7 * (iv1[ixstart] - 1)] - 1.5707963267948966) *
      1.2246467991473532E-16;
    dv5[13] = 350.0 * sin(th_ik[1 + 7 * (iv1[ixstart] - 1)] - 1.5707963267948966);
    for (i0 = 0; i0 < 4; i0++) {
      T03[2 + (i0 << 2)] = dv6[i0];
      T03[3 + (i0 << 2)] = (real_T)iv2[i0];
      dv5[2 + (i0 << 2)] = dv7[i0];
      dv5[3 + (i0 << 2)] = (real_T)iv2[i0];
    }

    dv9[0] = cos(th_ik[2 + 7 * (iv1[ixstart] - 1)] - 1.5707963267948966);
    dv9[4] = -sin(th_ik[2 + 7 * (iv1[ixstart] - 1)] - 1.5707963267948966) *
      6.123233995736766E-17;
    dv9[8] = -sin(th_ik[2 + 7 * (iv1[ixstart] - 1)] - 1.5707963267948966);
    dv9[12] = 0.0 * cos(th_ik[2 + 7 * (iv1[ixstart] - 1)] - 1.5707963267948966);
    dv9[1] = sin(th_ik[2 + 7 * (iv1[ixstart] - 1)] - 1.5707963267948966);
    dv9[5] = cos(th_ik[2 + 7 * (iv1[ixstart] - 1)] - 1.5707963267948966) *
      6.123233995736766E-17;
    dv9[9] = -(-cos(th_ik[2 + 7 * (iv1[ixstart] - 1)] - 1.5707963267948966));
    dv9[13] = 0.0 * sin(th_ik[2 + 7 * (iv1[ixstart] - 1)] - 1.5707963267948966);
    for (i0 = 0; i0 < 4; i0++) {
      for (i1 = 0; i1 < 4; i1++) {
        dv8[i0 + (i1 << 2)] = 0.0;
        for (j = 0; j < 4; j++) {
          dv8[i0 + (i1 << 2)] += T03[i0 + (j << 2)] * dv5[j + (i1 << 2)];
        }
      }

      dv9[2 + (i0 << 2)] = dv10[i0];
      dv9[3 + (i0 << 2)] = (real_T)iv2[i0];
    }

    for (i0 = 0; i0 < 4; i0++) {
      for (i1 = 0; i1 < 4; i1++) {
        b_T03[i0 + (i1 << 2)] = 0.0;
        for (j = 0; j < 4; j++) {
          b_T03[i0 + (i1 << 2)] += dv8[i0 + (j << 2)] * dv9[j + (i1 << 2)];
        }
      }
    }

    /*  Create homogenous transform for first 3 joint angles for EACH joint configuration. */
    for (i0 = 0; i0 < 3; i0++) {
      for (i1 = 0; i1 < 3; i1++) {
        c_T03[i1 + 3 * i0] = -b_T03[i0 + (i1 << 2)];
      }
    }

    for (i0 = 0; i0 < 3; i0++) {
      d_elbow[i0] = 0.0;
      for (i1 = 0; i1 < 3; i1++) {
        d_elbow[i0] += c_T03[i0 + 3 * i1] * b_T03[12 + i1];
      }

      for (i1 = 0; i1 < 3; i1++) {
        T03[i1 + (i0 << 2)] = b_T03[i0 + (i1 << 2)];
      }
    }

    for (i0 = 0; i0 < 3; i0++) {
      T03[12 + i0] = d_elbow[i0];
    }

    for (i0 = 0; i0 < 4; i0++) {
      T03[3 + (i0 << 2)] = (real_T)iv2[i0];
    }

    for (i0 = 0; i0 < 4; i0++) {
      for (i1 = 0; i1 < 4; i1++) {
        Twrist[i0 + (i1 << 2)] = 0.0;
        for (j = 0; j < 4; j++) {
          Twrist[i0 + (i1 << 2)] += T03[i0 + (j << 2)] * T06[j + (i1 << 2)];
        }
      }
    }

    /*  Remove first 3 joint angles to isolate joints $\theta_4$, $\theta_5$, $\theta_6$ */
    th_ik[3 + 7 * (iv1[ixstart] - 1)] = rt_atan2d_snf(-Twrist[9], -Twrist[8]);
    th_ik[6 + 7 * (iv1[ixstart] - 1)] += 4.0;

    /* Wrist UP */
    th_ik[4 + 7 * (iv1[ixstart] - 1)] = acos(Twrist[10]);

    /*  */
    th_ik[5 + 7 * (iv1[ixstart] - 1)] = rt_atan2d_snf(-Twrist[6], Twrist[2]);
    th_ik[3 + 7 * (iv1[ixstart] + 1)] = rt_atan2d_snf(Twrist[9], Twrist[8]);

    /* th_ik(7,z+2)=th_ik(7,z+2)+0;  %Wrist DOWN */
    th_ik[4 + 7 * (iv1[ixstart] + 1)] = -acos(Twrist[10]);

    /*  */
    th_ik[5 + 7 * (iv1[ixstart] + 1)] = rt_atan2d_snf(Twrist[6], -Twrist[2]);
  }

  /* % */
  /*  Joint limits and find closest to previous */
  counter = -1;
  memset(&temp_out[0], 0, 56U * sizeof(real_T));
  for (ixstart = 0; ixstart < 8; ixstart++) {
    /* Joint limit check */
    for (k = 0; k < 6; k++) {
      b_x[k] = (fabs(th_ik[k + 7 * ixstart]) <= th_limit[k]);
    }

    x = (real_T)b_x[0];
    for (k = 0; k < 5; k++) {
      x += (real_T)b_x[k + 1];
    }

    if (x == 6.0) {
      counter++;
      for (i0 = 0; i0 < 7; i0++) {
        temp_out[i0 + 7 * counter] = th_ik[i0 + 7 * ixstart];
      }
    }
  }

  if (1 > counter + 1) {
    loop_ub = 0;
  } else {
    loop_ub = counter + 1;
  }

  /*  Keep solutions within Joint limits */
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
    /*  Check for existance of th_p (theta previous) */
    for (i0 = 0; i0 <= counter; i0++) {
      min_diff_data[i0] = 0.0;
    }

    for (ixstart = 0; ixstart <= counter; ixstart++) {
      /* Find closest solution to th_p (theta previous) */
      for (i0 = 0; i0 < 7; i0++) {
        for (i1 = 0; i1 < loop_ub; i1++) {
          temp_out_data[i1 + loop_ub * i0] = temp_out[i0 + 7 * i1];
        }
      }

      for (i0 = 0; i0 < 6; i0++) {
        y[i0] = temp_out_data[ixstart + loop_ub * i0] - th_p[i0];
      }

      x = 0.0;
      scale = 2.2250738585072014E-308;
      for (k = 0; k < 6; k++) {
        absxk = fabs(y[k]);
        if (absxk > scale) {
          t = scale / absxk;
          x = 1.0 + x * t * t;
          scale = absxk;
        } else {
          t = absxk / scale;
          x += t * t;
        }
      }

      x = scale * sqrt(x);
      min_diff_data[ixstart] = x;

      /*  Distance of each solution */
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
      for (i1 = 0; i1 < 7; i1++) {
        temp_out_data[i1 + 7 * i0] = temp_out[i1 + 7 * i0];
      }
    }

    th_out_size[0] = 7;
    th_out_size[1] = k;
    for (i0 = 0; i0 < k; i0++) {
      for (i1 = 0; i1 < 7; i1++) {
        th_out_data[i1 + 7 * i0] = temp_out_data[i1 + 7 * (y_data[i0] - 1)];
      }
    }

    /*  Use closest solution */
  } else {
    th_out_size[0] = 7;
    th_out_size[1] = loop_ub;
    for (i0 = 0; i0 < loop_ub; i0++) {
      for (i1 = 0; i1 < 7; i1++) {
        th_out_data[i1 + 7 * i0] = temp_out[i1 + 7 * i0];
      }
    }

    /*  Use all solutions with joint limits */
  }
}

void powerball_inverse_kinematics_initialize(void)
{
  rt_InitInfAndNaN(8U);
}

void powerball_inverse_kinematics_terminate(void)
{
  /* (no terminate code required) */
}

/* End of code generation (powerball_inverse_kinematics.c) */
