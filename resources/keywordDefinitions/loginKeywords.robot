*** Settings ***
Documentation     Login page
...
...               This test has a workflow that is created using keywords in
...               the imported resource files.
Variables         ../locators/locators.py

*** Keywords ***
Input Username
    Input Text    ${EmailInput}    ${USERNAME}

Input Password
    Input Text    ${PasswordInput}    ${PASSWORD}

Click Login
    Click Button    ${LoginButton}

Login Page
    Input Username
    Input Password
    Click Login


