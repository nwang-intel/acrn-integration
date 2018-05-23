/*
 * Copyright (C) 2011-2018 Intel Corporation. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in
 *     the documentation and/or other materials provided with the
 *     distribution.
 *   * Neither the name of Intel Corporation nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

/* Test Array Attributes */

#include "sgx_trts.h"
#include "../Enclave.h"
#include "Enclave_t.h"
#define GREEN "\033[32m"
#define RED "\033[31m"
#define END "\033[0m"

/* ecall_array_user_check:
 *   [user_check] parameter does not perfrom copy operations.
 */
void ecall_array_user_check(int arr[4])
{
    printf("\t%s+%s checking array location\n", GREEN, END); 
    if (sgx_is_outside_enclave(arr, 4 * sizeof(int)) != 1) {
        printf("\t%s  FAIL%s: array is not outside enclave\n", RED, END);
        abort();
    }
    printf("\t  array location check %sPASS%s\n", GREEN, END);
    
    for (int i = 0; i < 4; i++) {
        assert(arr[i] == i);
        printf("\t%s+%s modifing memory outside arr[%d]\n", GREEN, END, i);
        arr[i] = 3 - i;
        assert(arr[i] == 3 - i);
    }
}

/* ecall_array_in:
 *   arr[] is copied to trusted domain, but modified 
 *   results will not be reflected to the untrusted side.
 */
void ecall_array_in(int arr[4])
{
    printf("\t%s+%s checking array location\n", GREEN, END);
    if (sgx_is_within_enclave(arr, 4 * sizeof(int)) != 1) {
        printf("\t%s  FAIL%s: array is not within enclave\n", RED, END);
        abort();
    }
    printf("\t  array location check %sPASS%s\n", GREEN, END);

    for (int i = 0; i < 4; i++) {
        assert(arr[i] == i);
        printf("\t%s+%s modifing memory internal arr[%d]\n", GREEN, END, i);
        arr[i] = (3 - i);
    }
}

/* ecall_array_out:
 *   arr[] is allocated inside the enclave, and it will be copied
 *   to the untrusted side
 */
void ecall_array_out(int arr[4])
{
    printf("\t%s+%s checking array location\n", GREEN, END);
    if (sgx_is_within_enclave(arr, 4 * sizeof(int)) != 1) {
        printf("\t%s  FAIL%s: array is not within enclave\n", RED, END);
        abort();
    }
    printf("\t  array location check %sPASS%s\n", GREEN, END);
    for (int i = 0; i < 4; i++) {
        /* arr is not copied from App */
        assert(arr[i] == 0);
        printf("\t%s+%s modifing memory internal arr[%d]\n", GREEN, END, i);
        arr[i] = (3 - i);
    }
}

/* ecall_array_in_out:
 *   arr[] will be allocated inside the enclave, content of arr[] will be copied either.
 *   After ECALL returns, the results will be copied to the outside.
 */
void ecall_array_in_out(int arr[4])
{
    printf("\t%s+%s checking array location\n", GREEN, END);
    if (sgx_is_within_enclave(arr, 10 * sizeof(int)) != 1) {
        printf("\t%s  FAIL%s: array is not within enclave\n", RED, END);
        abort();
    }
    printf("\t  array location check %sPASS%s\n", GREEN, END);
    for (int i = 0; i < 4; i++) {
        assert(arr[i] == i);
        printf("\t%s+%s modifing memory internal arr[%d]\n", GREEN, END, i);
        arr[i] = (3 - i);
    }
}

/* ecall_array_isary:
 *   [isary] tells Edger8r that user defined 'array_t' is an array type.
 */
void ecall_array_isary(array_t arr)
{
    printf("\t%s+%s checking array location\n", GREEN, END);
    if (sgx_is_outside_enclave(arr, sizeof(array_t)) != 1) {
        printf("\t%s FAIL%s: array is not outside enclave\n", RED, END);
        abort();
    }
    printf("\t  array location check %sPASS%s\n", GREEN, END);
    int n = sizeof(array_t)/sizeof(arr[0]);
    printf("\t%s+%s checking array size\n", GREEN, END);
    if (10 != n) {
        printf("\t%s FAIL%s: array size is not 10\n", RED, END);
        abort();
    }
    printf("\t  array size check %sPASS%s\n", GREEN, END);
    for (int i = 0; i < n; i++) {
        assert(arr[i] == i);
        printf("\t%s+%s modifing memory outside enclave\n", GREEN, END);
        arr[i] = (n - 1 - i);
    }
}
