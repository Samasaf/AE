*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}    https://www.automationexercise.com/
#${NAME}    SamaTest
#${EMAIL}    samatest${RANDOM}.test@example.com
#${PASSWORD}    Test@1234


*** Keywords ***

open browser test
    open browser        ${URL}    ${BROWSER}


Wait And Click
    [Arguments]    ${locator}    ${timeout}=10s
    Wait Until Element Is Visible    ${locator}    timeout=${timeout}
    Click Element    ${locator}

Wait And Input Text
    [Arguments]    ${locator}    ${text}    ${timeout}=10s
    Wait Until Element Is Visible    ${locator}    timeout=${timeout}
    Input Text    ${locator}    ${text}

    
    
