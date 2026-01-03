#include <stdio.h>
#include "vector_utils.h"

void vector_print_int(void* elem)
{
    printf("%d\n", *(int*)elem);
}

void vector_print_float(void* elem)
{
    printf("%f\n", *(float*)elem);
}

void vector_print_cstr(void* elem)
{
    printf("%s\n", *(char**)elem);
}