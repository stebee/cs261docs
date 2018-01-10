@echo off

REM Use this script to serve the jekyll page locally for testing.
REM Make sure to run 'bundle install' before running the first time.


start "JEKYLL" bundle exec jekyll serve --port=4444
