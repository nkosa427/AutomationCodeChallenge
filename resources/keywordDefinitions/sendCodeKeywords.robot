*** Settings ***
Documentation     2FA send code page
...
...               This test has a workflow that is created using keywords in
...               the imported resource files.
Variables         ../locators/locators.py

*** Keywords ***
Click Send
    Click Button    ${TwoFactorFirstButton}

Verify Button
    Element Should Be Visible   ${TwoFactorSecondButton}

Verify Button Disabled
    Element Should Be Disabled  ${TwoFactorSecondButton}

SendCode Page
    Click Send
    Verify Button
    Verify Button Disabled
