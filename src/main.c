#include "hash_table.h"
#include <stdio.h>

int main() {
    ht_hash_table* ht = ht_new();

    ht_insert(ht, "key1", "val1");
    printf("key1 value is %s\n", ht_search(ht, "key1"));

    ht_delete(ht, "key1");
    printf("key1 value is %s\n", ht_search(ht, "key1"));

    ht_del_hash_table(ht);
}