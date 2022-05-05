*** Settings ***
Documentation     Locale page
...
...               This test has a workflow that is created using keywords in
...               the imported resource files.
Resource          resource.robot

*** Keywords ***
Check Cookie Banner
    ${bannerPresent}=   Run Keyword And Return Status   Page Should Contain Element     id:truste-consent-track
    Run Keyword If      ${bannerPresent}    Dismiss Cookie Banner

Dismiss Cookie Banner
    Wait Until Element Is Not Visible   class:pg-loading-center-middle
    Click Element     class:trustarc-reject-btn
    Wait Until Element Is Not Visible   id:truste-consent-track

Select Country
    Select From List By Label    id:country-select   ${COUNTRY}

Select Language
    Select From List By Label    id:language-select   ${LANGUAGE}

Submit
    Click Button    id:submit-button

Locale Page
    Check Cookie Banner
    Select Country
    Select Language
    Submit


