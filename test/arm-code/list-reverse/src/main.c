#include "printf.h"
#include "list.h"

#define POOL_SIZE 25

int main(void)
{
    list_head list_pool[POOL_SIZE];

    list_head root;
    list_head *head_ptr = &root;
    root.info.data16 = 42;

    list_init(list_pool, POOL_SIZE, &root);
    list_increment_data(head_ptr);

    printf("Initial list\n");
    list_print(head_ptr);

    head_ptr = list_reverse(head_ptr);
    printf("Reversed order\n");
    list_print(head_ptr);
}
