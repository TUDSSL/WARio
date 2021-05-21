#include <stddef.h>

#if defined(__clang__)
#define NO_OPT __attribute__((optnone))
#else
#define NO_OPT __attribute__((optimize("O0")))
#endif

NO_OPT
int putc(int character, void *stream)
{
    (void)stream;
    return character;
}

NO_OPT
void _putchar(char character) {
    putc(character, &character);
}

//#pragma GCC push_options
