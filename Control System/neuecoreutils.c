#include <stdio.h>
#include <curl/curl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <stdlib.h>
#include <unistd.h>
#include "NCFunctions.h"


int main(int argc, char *argv) {
    printAbout();
    getOperatingSystemName();
}