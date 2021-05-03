#ifndef LIST_H_
#define LIST_H_

#include <stdlib.h>

typedef signed short   ee_s16;
typedef unsigned short ee_u16;
typedef signed int     ee_s32;
typedef double         ee_f32;
typedef unsigned char  ee_u8;
typedef unsigned int   ee_u32;
typedef ee_u32         ee_ptr_int;
typedef size_t         ee_size_t;

typedef struct list_data_s
{
    ee_s16 data16;
    ee_s16 idx;
} list_data;

typedef struct list_head_s
{
    struct list_head_s *next;
    struct list_data_s info;
} list_head;

void list_init(list_head *pool, size_t pool_size, list_head *root);
void list_increment_data(list_head *node);
void list_print(list_head *node);
list_head *list_reverse(list_head *list);
list_head *list_reverse_pass(list_head *list);
list_head *list_reverse_unrolled(list_head *list);

#endif /* LIST_H_ & */
