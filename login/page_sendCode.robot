*** Settings ***
Documentation     2FA send code page
...
...               This test has a workflow that is created using keywords in
...               the imported resource files.
Resource          resource.robot

*** Keywords ***
Click Send
    Click Button    id:twoFactor-step1-next-button

Verify Button
    Element Should Be Visible   id:twoFactor-step2-next-button

Verify Button Disabled
    Element Should Be Disabled  id:twoFactor-step2-next-button

SendCode Page
    Click Send
    Verify Button
    Verify Button Disabled
