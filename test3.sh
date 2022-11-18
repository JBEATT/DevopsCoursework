#!/bin/bash

echo "Start of test 3, check correct currency conversion "
echo "--------------------------------------------------------------"
echo "checking with input '1 dollars'"

input1="1 dollars"

ExpectedOut1="0.74 Pounds"
ExpectedOut11="0.88 Euros"

actualOut1=$(java CurrencyConverter $input1 2>&1)
if [[ "$actualOut1" == *"$ExpectedOut1"* && *"$ExpectedOut11"* ]]; then
        echo "The test has passed"
else
        echo "The test has failed"
        exit 1
fi
echo "----------------------------------------------------------------"

echo "checking with input '1 pounds'"
input2="1 pounds"

ExpectedOut2="1.36 Dollars"
ExpectedOut22="1.19 Euros"

actualOut2=$(java CurrencyConverter $input2 2>&1)
if [[ "$actualOut2" == *"$ExpectedOut2"* && *"$ExpectedOut22"* ]]; then
        echo "The test has passed"
else
        echo "The test has failed"
        exit 1
fi

echo "--------------------------------------------------------------"
echo "checking with input '1 euros'"

input3="1 euros"

ExpectedOut3="1.13 Dollars"
ExpectedOut33="0.84 Pounds"

actualOut3=$(java CurrencyConverter $input3 2>&1)
if [[ "$actualOut3" == *"$ExpectedOut3"* && *"$ExpectedOut33"* ]]; then
        echo "The test has passed"
else
        echo "The test has failed"
        exit 1
fi

echo "------------------------------------------------------------------"

