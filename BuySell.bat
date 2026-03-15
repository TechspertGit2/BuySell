@echo off
cls
set /p useronbuysell=Enter your name:
:start
cls
echo Welcome %useronbuysell% to the BuySell System!
set /p buyorsell=Input what you want to do (buy/sell):
if %buyorsell%==buy goto buy
if %buyorsell%==sell goto sell
:buy
cls
echo Checking available items to buy...
timeout /t 10 /nobreak >nul
echo 1. %item1% - %price1%
echo 2. %item2% - %price2%
echo 3. %item3% - %price3%
set /p buychoice=Select the item number you want to buy:
cls
if %buychoice%==1 echo You have chosen to buy %item1% for %price1% from %seller1%. You need to give %price1% to %seller1%. & echo Show this message to %seller1% to receive your item. & set item1=OutOfStock
if %buychoice%==2 echo You have chosen to buy %item2% for %price2% from %seller2%. You need to give %price2% to %seller2%. & echo Show this message to %seller2% to receive your item. & set item2=OutOfStock
if %buychoice%==3 echo You have chosen to buy %item3% for %price3% from %seller3%. You need to give %price3% to %seller3%. & echo Show this message to %seller3% to receive your item. & set item3=OutOfStock
timeout /t 120
goto start
:sell
cls
set /p itemnumber=Enter the number of the item you want to sell (1, 2, or 3):
set /p item%itemnumber%=Enter the name of the item you want to sell:
set /p price%itemnumber%=Enter the price you want to sell the item for:
echo This is the last step.
set /p seller%itemnumber%=Enter your name to be displayed as the seller:
cls
echo Thank you %seller% for listing your item %item% for %price%!
timeout /t 5 /nobreak >nul
goto start