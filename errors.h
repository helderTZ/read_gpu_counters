// Taken and modified from https://stackoverflow.com/questions/24326432/convenient-way-to-show-opencl-error-codes

#ifndef __ERRORS_H__
#define __ERRORS_H__


#include <stdio.h>

#define KNRM  "\x1B[0m"
#define KRED  "\x1B[31m"
#define KGRN  "\x1B[32m"
#define KYEL  "\x1B[33m"
#define KBLU  "\x1B[34m"
#define KMAG  "\x1B[35m"
#define KCYN  "\x1B[36m"
#define KWHT  "\x1B[37m"

/*
 * Given a cl code and return a string represenation
 */
const char* clGetErrorString(int errorCode);

/*
 * check cl error, if not CL_SUCCESS, print to stderr
 */
int clCheckError(int errorCode, int line);






#endif
