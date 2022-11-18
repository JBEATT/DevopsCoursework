#! /bin/bash
echo "Start of test 2, Running with all lower case, ALL CAPS , Capitalised"

input1="1 dollars"
input2="1 euros"
input3="1 pounds"
input4="1 DOLLARS"
input5="1 EUROS"
input6="1 POUNDS"
input7="1 Dollars"
input8="1 Euros"
input9="1 Pounds"


errorOutput="Thank you for using the converter."

echo "Testing the input '1 dollars'"

actualOut1=$(java CurrencyConverter.java $input1)

if [ "$actualOut1" != "$errorOutput" ]; then
        echo "The test has passed"
else
        echo "The test has failed"
        exit 1
fi

echo "Testing the input '1 euros'"

actualOut2=$(java CurrencyConverter $input2)


if [ $"actualOut2" != "$errorOutput" ]; then
        echo "The test has passed"
else
        echo "The test has failed"
        exit 1
fi

echo "Testing the input '1 pounds'"

actualOut3=$(java CurrencyConverter $input3)


if [ $"actualOut3" != "$errorOutput" ]; then
        echo "The test has passed"
else
        echo "The test has failed"
        exit 1
fi

echo "Testing the input '1 DOLLARS'"

actualOut4=$(java CurrencyConverter $input4)


if [ "$actualOut4" != "$errorOutput" ]; then
        echo "The test has passed"
else
        echo "The test has failed"
        exit 1
fi

echo "Testing the input '1 EUROS'"

actualOut5=$(java CurrencyConverter $input5)


if [ $"actualOut5" != "$errorOutput" ]; then
        echo "The test has passed"
else
        echo "The test has failed"
        exit 1
fi

echo "Testing the input '1 POUNDS'"

actualOut6=$(java CurrencyConverter $input6)

if [ $"actualOut6" != "$errorOutput" ]; then
        echo "The test has passed"
else
        echo "The test has failed"
        exit 1
fi

echo "Testing the input '1 Dollars'"

actualOut7=$(java CurrencyConverter $input7)


if [ $"actualOut7" != "$errorOutput" ]; then
        echo "The test has passed"
else
        echo "The test has failed"
        exit 1
fi

echo "Testing the input '1 Euros'"

actualOut8=$(java CurrencyConverter $input8)

if [ $"actualOut8" != "$errorOutput" ]; then
        echo "The test has passed"
else
        echo "The test has failed"
        exit 1
fi

echo "Testing the input '1 Pounds'"

actualOut9=$(java CurrencyConverter $input9)


if [ $"actualOut9" != "$errorOutput" ]; then
        echo "The test has passed"
else
        echo "The test has failed"
        exit 1
fi

