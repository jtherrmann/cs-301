int len = 3;
long * arr = (long *)malloc(len * sizeof(long));

arr[0] = 5;
arr[1] = 7;
arr[2] = 11;

larray_print(arr, len);
free(arr);

return 0;
