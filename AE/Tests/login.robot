*** Settings ***
Resource    Config/variables.robot
Resource    Pages/login_page.robot
Resource    Pages/Prodects_Page.robot
Resource    Pages/Cheskout.robot

Library  SeleniumLibrary
Library  CSVLibrary

*** Test Cases ***

open browser test
    Open Browser    ${URL}    ${BROWSER}
    Sleep    2s
    signup and login page
    Product btn
    Sleep    2s
    Cart to Checkout




Perform Login Test Case
   Open Browser    ${URL}    ${BROWSER}
    Perform Login Test Cases

*** Keywords ***


 Perform Login Test Cases
    ${data}=    Read CSV File To List     ${CSV_File}
    Log    ${data}
    # Valid Login
    Perform Login    ${data}[1][0]    ${data}[1][1]
    # Invalid Login
    Perform Login    ${data}[2][0]    ${data}[2][1]

Perform Login
    [Arguments]    ${username}    ${password}
    Wait And Click        ${signup_login}
    Wait And Input Text       ${email_text}    ${username}
    Wait And Input Text       ${Password_text}    ${password}
    Wait And Click      ${Login_btn}


*** Variables ***
${CSV_File}      Config/data/login_data.csv
