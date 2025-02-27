*** Settings ***
Library  SeleniumLibrary
Resource    Config/variables.robot


*** Variables ***
${cart_text}        //*[@href='/view_cart']
${Proceed To Checkout}        //*[@class='btn btn-default check_out']

*** Keywords ***
Cart to Checkout
    Wait And Click    ${cart_text}
    Sleep    3s
    Wait And Click    ${Proceed To Checkout}
    Execute JavaScript    window.scrollBy(0, 1000)
    Sleep    5s


