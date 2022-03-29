#include <stdio.h>
#include <curl/curl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/utsname.h>
#include "NCCoreFunctions.h"

int printAbout() {
    printf("coreutilsctl - part of neuecoreutils\n");
    printf("Copyright (c) 2022 WDXP.\n\n");
    printf("This program is free software, licensed under the MIT License.\n");
    printf("Want help? Try `coreutilsctl --help`!\n");
}

int getOperatingSystemName() {
    struct utsname uts;

    if(uname(&uts) < 0)
        perror("Error: Cannot get OS.");
    else {
        printf("Detected OS as %s.\n", uts.sysname);
    }
}