/*
 *  uname.c - A program that prints system information
 *
 *  Part of neueCoreutils.
 *
 *  This software is freely distributable under the MIT License.
 *  Check <LICENSE> for more information.
 * 
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <sys/utsname.h>

int main(int argc, char *argv[]) {
   struct utsname buffer;

   errno = 0;
   if (uname(&buffer) < 0) {
      perror("uname");
      exit(EXIT_FAILURE);
   }

   
   if(argc > 1 && strcmp("-s", argv[1]) == 0) {
      printf("%s\n", buffer.sysname);
   }
   else if (argc > 1 && strcmp("-n", argv[1]) == 0) {
      printf("%s\n", buffer.nodename);
   }
   else if (argc > 1 && strcmp("-r", argv[1]) == 0) {
      printf("%s\n", buffer.release);
   }
   else if (argc > 1 && strcmp("-v", argv[1]) == 0) {
      printf("%s\n", buffer.version);
   }
   else if (argc > 1 && strcmp("-m", argv[1]) == 0) {
      printf("%s\n", buffer.machine);
   }
   else if (argc == 1){
      printf("%s\n", buffer.sysname);
   }
   else {
      printf("uname: invalid option -- '%s'\n", argv[1]);
   }

   return EXIT_SUCCESS;
}