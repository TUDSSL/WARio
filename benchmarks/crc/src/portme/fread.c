#include <stdlib.h>

// return how many where read
size_t fread_(void *ptr, size_t size, size_t nmemb, char *stream) {
    char *dst = ptr;
    size_t cnt;
    for (cnt=0; cnt<size*nmemb; cnt++) {
        char c = stream[cnt];
        if (c == '\0') break;
        dst[cnt] = c;
    }
    return cnt;
}

