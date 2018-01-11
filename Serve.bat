@echo off

:: Use this script to serve the jekyll page locally for testing.
:: Make sure to run 'bundle install' before running the first time.


:: The port we will run jekyll's webserver on
set port=4444
:: The local hostname/IP to run jekyll's webserver on
set host=127.0.0.1

:: The command used to run jekyll serve
set serve_cmd=jekyll serve
:: Additional args to pass in
set args=


:: -------------------------------------------------
:: Don't touch below

set run_cmd=bundle exec %serve_cmd% --port=%port% --host=%host% %args%

:: Open website first so we can block on jekyll serve
:: NOTE: this will 404 temporarily until jekyll is up
start http://%host%:%port%

:: If run with double click, run in persistent window
:: If run from cmd just run normally
IF %0 == "%~0" (
    start "JEKYLL" echo %run_cmd% ^& %run_cmd%
) ELSE (                         
                   echo %run_cmd% && %run_cmd%
)

