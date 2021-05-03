#include "printf.h"
#include "list.h"

void list_init(list_head *pool, size_t pool_size, list_head *root) {
    for (size_t i = 0; i<pool_size; i++) {
        root->next = &pool[i];

        root = root->next;
        root->info.data16 = 1;
        root->info.idx = i;
        root->next = NULL;
    }
}

void list_increment_data(list_head *node) {
    while (node != NULL) {
        node->info.data16 += 1;
        node = node->next;
    }
}

list_head *list_reverse(list_head *list) {

    list_head *next = NULL, *tmp;
    while (list) {
        tmp        = list->next; // read
        list->next = next; // write
        next       = list;
        list       = tmp;
    }
    return next;
}

#if 0
list_head *list_reverse_pass(list_head *list) {

    list_head *next = NULL, *tmp;

    while (list) {
        tmp        = list->next; // read
        list->next = next; // write
        next       = list;
        list       = tmp;
    }
    return next;
}
#endif

#if 0
list_head *list_reverse_unrolled(list_head *list) {

    list_head *list_0 = list;
    list_head *list_1;

    list_head *next_0 = NULL, *next_1 = NULL;
    list_head *tmp;

    list_head *ret;
loop:

    // Loop 1
    if (list_0 == NULL) {
        ret  = next_0;
        goto end;
    }
    tmp        = list_0->next; // read
    next_1     = list_0;
    list_1     = tmp;

    // Loop 2
    if (list_1 == NULL) {
        // write prev away
        list_0->next = next_0; // write

        ret  = next_1;
        goto end;
    }
    tmp        = list_1->next; // read

    // Grouped write
    list_0->next = next_0; // write
    list_1->next = next_1; // write

    next_0       = list_1;
    list_0       = tmp;

    goto loop;

end:
    return ret;
}
#endif

#if 0
void list_print(list_head *node) {
    int i=0;
    while (node != NULL) {
        printf("Node %d has data %d\n", node->info.idx, node->info.data16);
        node = node->next;
        i++;
    }
}
#endif
