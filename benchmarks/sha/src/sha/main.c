/* NIST Secure Hash Algorithm */
#include "printf.h"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include "sha.h"
//#include "input.h"
#include "input_small.h"

int main()
{
  SHA_INFO sha_info;

  sha_stream(&sha_info, inputString);
  sha_print(&sha_info);

  return(0);
}
