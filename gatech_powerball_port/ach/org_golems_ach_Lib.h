/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class org_golems_ach_Lib */

#ifndef _Included_org_golems_ach_Lib
#define _Included_org_golems_ach_Lib
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     org_golems_ach_Lib
 * Method:    open
 * Signature: (Ljava/lang/String;[J)I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_open
  (JNIEnv *, jclass, jstring, jlongArray);

/*
 * Class:     org_golems_ach_Lib
 * Method:    close
 * Signature: (J)I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_close
  (JNIEnv *, jclass, jlong);

/*
 * Class:     org_golems_ach_Lib
 * Method:    flush
 * Signature: (J)I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_flush
  (JNIEnv *, jclass, jlong);

/*
 * Class:     org_golems_ach_Lib
 * Method:    put
 * Signature: (J[B)I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_put
  (JNIEnv *, jclass, jlong, jbyteArray);

/*
 * Class:     org_golems_ach_Lib
 * Method:    get
 * Signature: (J[B[JI)I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_get__J_3B_3JI
  (JNIEnv *, jclass, jlong, jbyteArray, jlongArray, jint);

/*
 * Class:     org_golems_ach_Lib
 * Method:    get
 * Signature: (J[B[JJII)I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_get__J_3B_3JJII
  (JNIEnv *, jclass, jlong, jbyteArray, jlongArray, jlong, jint, jint);

/*
 * Class:     org_golems_ach_Lib
 * Method:    time
 * Signature: ([J)I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_time
  (JNIEnv *, jclass, jlongArray);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_OK
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1OK
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_OVERFLOW
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1OVERFLOW
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_INVALID_NAME
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1INVALID_1NAME
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_BAD_SHM_FILE
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1BAD_1SHM_1FILE
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_FAILED_SYSCALL
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1FAILED_1SYSCALL
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_STALE_FRAMES
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1STALE_1FRAMES
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_MISSED_FRAME
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1MISSED_1FRAME
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_TIMEOUT
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1TIMEOUT
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_EEXIST
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1EEXIST
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_ENOENT
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1ENOENT
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_CLOSED
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1CLOSED
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_BUG
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1BUG
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_EINVAL
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1EINVAL
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_CORRUPT
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1CORRUPT
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_BAD_HEADER
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1BAD_1HEADER
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_EACCES
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1EACCES
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_CANCELED
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1CANCELED
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_O_WAIT
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1O_1WAIT
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_O_LAST
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1O_1LAST
  (JNIEnv *, jclass);

/*
 * Class:     org_golems_ach_Lib
 * Method:    ACH_O_COPY
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_org_golems_ach_Lib_ACH_1O_1COPY
  (JNIEnv *, jclass);

#ifdef __cplusplus
}
#endif
#endif