*** Settings ***
Library  SeleniumLibrary
Resource    Config/variables.robot


*** Variables ***
${signup_login}         //*[@href='/login']
${Email_Address}        john.doe@automation.com
${Password}             SecurePassword123
${email_text}           //*[@data-qa='login-email']
${Password_text}        //*[@data-qa='login-password']
${Login_btn}            //*[@data-qa='login-button']
${CSV_FILE}             Data.csv





*** Keywords ***
signup and login page
  Wait And Click    ${signup_login}
  Sleep    2s
  Wait And Input Text    ${email_text}       ${Email_Address}
  Sleep    2s
  Wait And Input Text    ${Password_text}    ${Email_Address}
  Sleep    2s
  Wait And Click         ${Login_btn}
  Sleep    2s





  


