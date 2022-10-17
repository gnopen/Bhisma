*** Settings ***
Documentation       Template keyword resource.

Variables           variables.py
Library             RPA.Browser.Selenium


*** Keywords ***

Check Product Name PLP
    [Arguments]   ${expected}
    ${productname}  Get Text   //p[@id='email-alert']

Click Product Name PLP
    [Arguments]   ${expected}
    Sleep    ${DELAY}
    ${locator} =  Catenate  //span[@title ='${expected}']
    Click Element   ${locator}