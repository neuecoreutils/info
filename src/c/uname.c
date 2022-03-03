/*
 *  uname.c - A program to tell you what kind of Unix you are running
 *
 *  Part of neueCoreutils.
 *
 *  This software is freely distributable under the MIT License.
 *  Check <LICENSE> for more information.
 * 
 */

#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <sys/utsname.h>

int main(void) {

   struct utsname buffer;

   errno = 0;
   if (uname(&buffer) < 0) {
      perror("uname");
      exit(EXIT_FAILURE);
   }

   printf("System:       %s\n", buffer.sysname);
   printf("Hostname:     %s\n", buffer.nodename);
   printf("Release:      %s\n", buffer.release);
   printf("Version:      %s\n", buffer.version);
   printf("Architecture: %s\n", buffer.machine);

   #ifdef _GNU_SOURCE
     printf("Domain name:  %s\n", buffer.domainname);
   #endif

   return EXIT_SUCCESS;
}