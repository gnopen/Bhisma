*** Settings ***
Documentation       Template robot main suite.

Library             Collections
Library             MyLibrary
Variables           dataPDP.py
Resource            homepage.robot
Resource            common.robot
Resource            pdp.robot
Resource            plp.robot
Resource            cart.robot
Resource            login.robot
Variables           variables.py

Test Setup          Initialize
Test Template       Search Function Product


*** Tasks ***

Invalid Product                ${PRODUCT}[0]      ${SUBTOTAL}[0]   ${PENGIRIMAN}[0]  ${HEMAT}[0]    ${TOTAL}[0]  
    [Tags]  Full Testing

*** Keywords ***

Search Function Product
    [Arguments]     ${productname}   ${subtotal}   ${pengiriman}   ${hemat}  ${qty}
    Login Front End
    Input Text on Search Function   ${productname}
    Click Product Name PLP        ${productname}
    Add to Cart 
    Continue to Cart
    Check Subtotal                ${subtotal}
    Check Pengiriman             ${pengiriman}
    Check Hemat                    ${hemat}
    Check Grand Total            ${qty}
    Continue to Payment
