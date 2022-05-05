*** Settings ***
Documentation     Locale page
...
...               This test has a workflow that is created using keywords in
...               the imported resource files.
Variables         ../locators/locators.py

*** Keywords ***
Check Cookie Banner
    ${bannerPresent}=   Run Keyword And Return Status   Page Should Contain Element     ${CookieBanner}
    Run Keyword If      ${bannerPresent}    Dismiss Cookie Banner

Dismiss Cookie Banner
    Wait Until Element Is Not Visible   ${LoadingIndicator}
    Click Element     ${RejectCookieBtn}
    Wait Until Element Is Not Visible   ${CookieBanner}

Select Country
    Select From List By Label    ${CountrySelector}   ${COUNTRY}

Select Language
    Select From List By Label    ${LanauageSelector}   ${LANGUAGE}

Submit
    Click Button    ${SubmitButton}

Locale Page
    Check Cookie Banner
    Select Country
    Select Language
    Submit


