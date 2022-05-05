*** Settings ***
Documentation     Suite for logging into LibreView
...
...               This test has a workflow that is created using keywords in
...               the imported resource files.
Variables         ../variables.yaml
Variables          ../resources/locators/locators.py

Resource          ../resources/resource.robot
Resource          ../resources/keywordDefinitions/localeKeywords.robot
Resource          ../resources/keywordDefinitions/loginKeywords.robot
Resource          ../resources/keywordDefinitions/sendCodeKeywords.robot

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
    Wait Until Element Is Visible   ${LoginButton}

Wait SendCode Page
    Wait Until Element Is Visible   ${TwoFactorFirstButton}
