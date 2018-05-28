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


#include "../App.h"
#include "Enclave_u.h"
#define GREEN "\033[32m"
#define RED "\033[31m"
#define END "\033[0m"

/* edger8r_array_attributes:
 *   Invokes ECALLs declared with array attributes.
 */
void log_error(bool *pexececall, sgx_status_t ret, const char *testcase) {
    char *err_msg = NULL;
    *pexececall = false;
    get_error_message(ret, err_msg);
    if (NULL == err_msg) {
        printf("  %s %sFAIL%s with error message: %s\n", testcase, RED, END, err_msg);
    }
}

void edger8r_array_attributes(void)
{
    sgx_status_t ret = SGX_ERROR_UNEXPECTED;
    bool exececall = true;
    bool execd = true;

    /* user_check */
    int arr1[4] = {0, 1, 2, 3};
    printf("%s+%s [user_check] ecall_array_user_check\n", GREEN, END);   
    ret = ecall_array_user_check(global_eid, arr1);
    if (ret != SGX_SUCCESS) {
        log_error(&exececall, ret, "[user_check] ecall_array_user_check");
    }

    if (exececall) {
        printf("\t%s+%s checking array value\n", GREEN, END);
        /* make sure arr1 is changed */
        for (int i = 0; i < 4; i++) {
            //assert(arr1[i] == (3 - i));
            if (arr1[i] != (3 - i)) {
                printf("\t  array value check %sFAIL%s\n", RED, END);
                execd = false;
                break;
            }
        }
        if (execd) {
            printf("\t  %sPASS%s\n", GREEN, END);
            printf("  %sPASS%s\n", GREEN, END);

        } else {
            printf("\t  array value check %sFAIL%s\n", RED, END);
            printf("  [user_check] ecall_array_user_check %sFAIL%s\n", RED, END);
        }
    }
    exececall = true;
    execd = true;

    /* in */
    int arr2[4] = {0, 1, 2, 3};
    printf("%s+%s [in] ecall_array_in\n", GREEN, END);
    ret = ecall_array_in(global_eid, arr2);
    if (ret != SGX_SUCCESS) {
        log_error(&exececall, ret, "[in] ecall_array_in");
    }

    if (exececall) { 
        printf("\t%s+%s checking array value\n", GREEN, END);
        /* arr2 is not changed */
        for (int i = 0; i < 4; i++) {
            //assert(arr2[i] == i);
            if (arr2[i] != i) {
                printf("\t  array value check %sFAIL%s\n", RED, END);
                execd = false;
                break;
            }
        }
        if (execd) {
            printf("\t  %sPASS%s\n", GREEN, END);
            printf("  %sPASS%s\n", GREEN, END);
        } else {
            printf("\t  array value check %sFAIL%s\n", RED, END);
            printf("  [in] ecall_array_in %sFAIL%s\n", RED, END);
        }
    }
    exececall = true;
    execd = true;
    
    /* out */
    int arr3[4] = {0, 1, 2, 3};
    printf("%s+%s [out] ecall_array_out\n", GREEN, END);
    ret = ecall_array_out(global_eid, arr3);
    if (ret != SGX_SUCCESS) {
        log_error(&exececall, ret, "[out] ecall_array_out");
    }
    
    if (exececall) {
        printf("\t%s+%s checking array value\n", GREEN, END);
        /* arr3 is changed */
        for (int i = 0; i < 4; i++) {
            //assert(arr3[i] == (3 - i));
            if (arr3[i] != (3 - i)) {
                printf("\t  array value check %sFAIL%s\n", GREEN, END);
                execd = false;
                break;
            }
        } 
        if (execd) {
            printf("\t  %sPASS%s\n", GREEN, END);
            printf("  %sPASS%s\n", GREEN, END);
        } else {
            printf("\t  array value check %sFAIL%s\n", RED, END);
            printf("  [out] ecall_array_out %sFAIL%s\n", RED, END);
        }
    }
    exececall = true;
    execd = true;

    /* in, out */
    int arr4[4] = {0, 1, 2, 3};
    printf("%s+%s [in, out] ecall_array_in_out\n", GREEN, END);
    ret = ecall_array_in_out(global_eid, arr4);
    if (ret != SGX_SUCCESS) {
        log_error(&exececall, ret, "[in, out] ecall_array_in_out");
    }
    
    if (exececall) {
        printf("\t%s+%s checking array value\n", GREEN, END); 
        /* arr4 is changed */
        for (int i = 0; i < 4; i++) {
            //assert(arr4[i] == (3 - i));
            if (arr4[i] != (3 - i)) {
                printf("\t  array value check %sFAIL%s\n", GREEN, END);
                execd = false;
                break;
            }
        }
        if (execd) {
            printf("\t  %sPASS%s\n", GREEN, END);
            printf("  %sPASS%s\n", GREEN, END);
        } else {
            printf("\t  array value check %sFAIL%s\n", RED, END);
            printf("  [in, out] ecall_array_in_out %sFAIL%s\n", RED, END);
        }
    }
    exececall = true;
    execd = true;

    
    /* isary */
    array_t arr5 = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    printf("%s+%s [user_check, isary] ecall_array_isary\n", GREEN, END);
    ret = ecall_array_isary(global_eid, arr5);
    if (ret != SGX_SUCCESS) {
        log_error(&exececall, ret, "[user_check, isary] ecall_array_isary");
    }

    if (exececall) {
        printf("\t%s+%s checking array value\n", GREEN, END);
        /* arr5 is changed */
        for (int i = 0; i < 10; i++) {
            //assert(arr5[i] == (9 - i));
            if (arr5[i] != (9 - i)) {
                printf("\t  array value check %sFAIL%s\n", GREEN, END);
                execd = false;
                break;
            }
        }
        if (execd) {
            printf("\t  %sPASS%s\n", GREEN, END);
            printf("  %sPASS%s\n", GREEN, END);
        } else {
            printf("\t  array value check %sFAIL%s\n", RED, END);
            printf("  [user_check, isary] ecall_array_isary %sFAIL%s\n", RED, END);
        }
    }
}
