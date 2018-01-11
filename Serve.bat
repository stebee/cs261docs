@echo off

REM Use this script to serve the jekyll page locally for testing.
REM Make sure to run 'bundle install' before running the first time.


set jekyll_cmd=bundle exec jekyll serve --port=4444

REM If run with double click, run in persistent window
REM If run from cmd just run normally
IF %0 == "%~0" (
    start "JEKYLL" echo %jekyll_cmd% ^& %jekyll_cmd%
) ELSE (                         
                   echo %jekyll_cmd% && %jekyll_cmd%
)



