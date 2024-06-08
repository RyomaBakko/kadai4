#!/bin/bash


SCRIPT="~/kadai4/great_common_devisor.sh"

error_exit() {
    echo  $1
    exit 1
}


run_test() {
    input1=$1
    input2=$2
    expected_output=$3

   
    actual_output=$(SCRIPT $input1 $input2 2>&1)

    if [[ "$actual_output" != *"$expected_output"* ]]; then
        error_exit "入力: $input1, $input2 - 期待値: '$expected_output', 実際値: '$actual_output'"
	else echo "成功"
    fi
}

run_test 9 6 "入力1と入力2の最大公約数: 3"
run_test 12 15 "入力1と入力2の最大公約数: 3"
run_test 100 25 "入力1と入力2の最大公約数: 25"


run_test "a" "b" "2つの整数を入力してください。"
run_test 1.5 2.5 "2つの整数を入力してください。"
run_test 9  "2つの整数を入力してください。"

