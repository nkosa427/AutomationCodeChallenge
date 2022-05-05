*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary
Library           Screenshot

*** Variables ***
${SERVER}         www.libreview.com
# ${BROWSER}        Firefox
# ${USERNAME}     codechallengeadc@outlook.com
# ${PASSWORD}    P@ssword$12
${BASE URL}      http://${SERVER}/

*** Keywords ***
Screenshot
    Sleep   2s
    Take Screenshot
