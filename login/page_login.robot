*** Settings ***
Documentation     Login page
...
...               This test has a workflow that is created using keywords in
...               the imported resource files.
Resource          resource.robot

*** Keywords ***
Input Username
    Input Text    id:loginForm-email-input    ${USERNAME}

Input Password
    Input Text    id:loginForm-password-input    ${PASSWORD}

Click Login
    Click Button    id:loginForm-submit-button

Login Page
    Input Username
    Input Password
    Click Login


