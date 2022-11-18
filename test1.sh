#!/bin/bash
echo "Start of test, No input value "

input1=""

ExpectedOut1="Incorrect Value"

actualOut1=$(java CurrencyConverter $input1 2>&1)

if [ "$actualOut1" = "$ExpectedOut1" ]; then
        echo "The test has passed"
else
        echo "The test has failed"
        echo "Please Enter a value"
fi


echo "Start of test, 'euros 1'"
input3="euros 1"

ExpectedOut3="0.84 Pounds"
ExpectedOut33="1.13 Dollars"

actualOut3=$(java CurrencyConverter $input1 2>&1)
if [[ "$actualOut3" == *"$ExpectedOut3"* && *"$ExpectedOut33"* ]]; then
        echo "The test has passed"
else
        echo "The test has failed"
        echo "Please Enter in the format Amount followed by Currency"
fi

