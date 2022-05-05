*** Settings ***
Documentation     Suite for logging into LibreView
...
...               This test has a workflow that is created using keywords in
...               the imported resource files.
Variables         variables.yaml

Resource          resource.robot
Resource          page_locale.robot
Resource          page_login.robot
Resource          page_sendCode.robot

Suite Setup       Open Start Page
Suite Teardown    Close Browser

*** Test Cases ***
Valid Login
    Locale Page
    Wait Login Page
    Login Page
    Wait SendCode Page
    SendCode Page
    Screenshot

*** Keywords ***
Open Start Page
    Open Browser    ${BASE URL}     ${BROWSER}
    Title Should Be     LibreView

Wait Login Page
    Wait Until Element Is Visible   id:loginForm-submit-button

Wait SendCode Page
    Wait Until Element Is Visible   id:twoFactor-step1-next-button

