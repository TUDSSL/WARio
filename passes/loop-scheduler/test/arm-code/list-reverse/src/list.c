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

void list_print(list_head *node) {
    int i=0;
    while (node != NULL) {
        printf("Node %d has data %d\n", node->info.idx, node->info.data16);
        node = node->next;
        i++;
    }
}
