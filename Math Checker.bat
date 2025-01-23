@echo off
title Math Calculator with Puns

:: Display intro with pun
echo Welcome to the Math Calculator!
echo Let's "add" some fun to your day while we "subtract" your doubts!
echo I'll confirm the math fact you provide.

:: Ask user for first number
set /p num1=Enter the first number: 

:: Ask user for the operation
echo Choose your operation wisely. This could be "multiply"-ing your fun!
echo 1. Addition
echo 2. Subtraction
echo 3. Multiplication
echo 4. Division
set /p operation=Enter the number of the operation (1-4): 

:: Ask user for second number
set /p num2=Enter the second number: 

:: Perform the selected operation with puns
if %operation%==1 (
    set /a result=%num1% + %num2%
    set operationText=addition
    set punResult=Sum of success!
) else if %operation%==2 (
    set /a result=%num1% - %num2%
    set operationText=subtraction
    set punResult=You’ve "subtracted" your doubts!
) else if %operation%==3 (
    set /a result=%num1% * %num2%
    set operationText=multiplication
    set punResult=It’s a "multiplying" success!
) else if %operation%==4 (
    if %num2%==0 (
        echo Oops! You can’t divide by zero! That’s a real "no division" zone!
        goto exit
    )
    set /a result=%num1% / %num2%
    set operationText=division
    set punResult=That's how you "divide" your efforts for success!
) else (
    echo Whoops! You didn't choose a valid operation. Looks like your choices were a bit "irrational."
    goto exit
)

:: Confirm the math fact with a pun
echo You asked me to confirm the result of %num1% %operationText% %num2%.
echo The result is %result%. It’s "a fact" that you’re doing great!

:: Ask if the result is correct
set /p confirm=Is the result correct (yes/no)? 

if /i "%confirm%"=="yes" (
    echo Awesome! You've "nailed" this one! The math fact is correct. Keep up the "calculation" work!
) else (
    echo Oops! Something went wrong... You might be having some "math anxiety." Try again!
)

:exit
echo Thanks for using the Math Calculator. Remember, you’re always "number one" in our book!
echo Press any key to exit...
pause >nul
exit /b
