*** Settings ***
Library  SeleniumLibrary
Resource    Config/variables.robot
#Resource    Pages/login_page.robot



*** Variables ***
${Product_btn}        //*[@href='/products']
${Add_Product}        //*[@data-product-id='8']
${Continue_Sopping_btn}    //*[@data-dismiss='modal']
${Search_text}            //*[@id='search_product']
${Search_dress}            Stylish Dress
${Search_btn}            //*[@id='submit_search']
${Add_dress}            //*[@data-product-id='4']




*** Keywords ***
Product btn
    Wait And Click    ${Product_btn}
    Sleep    2s
    Execute JavaScript    window.scrollBy(0, 500)
    Sleep    2s
    Execute JavaScript    window.scrollBy(0, 800)
    Wait And Click    ${Add_Product}
    Sleep    2s
    Wait And Click    ${Continue_Sopping_btn}
    Sleep    2s
    Execute JavaScript    window.scrollBy(0, -1100)
    Sleep    2s
    Wait And Input Text    ${Search_text}    ${Search_dress}
    Sleep    2s
    Wait And Click         ${Search_btn}
    Sleep    2s
    Wait And Click         ${Add_dress}
    Sleep    2s
    Wait And Click    ${Continue_Sopping_btn}
    Sleep    2s



    



    

