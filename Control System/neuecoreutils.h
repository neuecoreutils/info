/*
 * cutils - main coreutilsCTL file
 * 
 */

#include <stdio.h>
#include <curl/curl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <stdlib.h>
#include <unistd.h>

int download(char iweb, char *ofile) {
    CURL *curl;
    FILE *fp;
    int result;

    fp = fopen(ofile, "wb");

    curl = curl_easy_init();

    curl_easy_setopt(curl, CURLOPT_URL, iweb);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, fp);
    curl_easy_setopt(curl, CURLOPT_FAILONERROR, 1L);

    result = curl_easy_perform(curl);

    if (result == CURLE_OK)
    {
        printf("Download Successful.\n");
        return 0;
    }
    else
    {
        printf("Error: %s\n", curl_easy_strerror(result));
        return 1;
    }
    
    fclose(fp);
    curl_easy_cleanup(curl);
}

int md(char *folder) {
    mkdir(folder, 0777);
    return 0;
}

int nf(char *file) {
    FILE *fpt;
    fpt = fopen(file, "wb");
    fclose(fpt);
    return 0;
}

int lnk(char *ifile, char *olnk) {
    link(ifile, olnk);
}

int lswd() {
    char cwd[1024];
    getcwd(cwd, sizeof(cwd));
    printf("Current working dir: %s\n", cwd);
}

int chwd(char *dir) {
    chdir(dir);
}