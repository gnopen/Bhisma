*** Settings ***
Documentation       Template robot main suite.

Library             Collections
Library             MyLibrary
Variables            dataPDP.py
Resource            homepage.robot
Resource            common.robot
Resource            pdp.robot
Resource            plp.robot
Variables           variables.py

Test Setup          Initialize
Test Template       Search Function Product


*** Tasks ***
Invalid Product                 ${PRODUCT}[0]               ${DESCRIPTION}[0]             Sony               100                 Serpong
    [Tags]  Full Testing

Product Name Special Character   ${PRODUCT}[1]                ${DESCRIPTION}[1]             Belia              100                Serpong
    [Tags]  Full Testing

Product Vendor is Inactive      ${PRODUCT}[2]                 ${DESCRIPTION}[2]             Belia              100                Serpong
    [Tags]  Full Testing

Product Stock is Empty          ${PRODUCT}[3]                 ${DESCRIPTION}[3]             Belia              100                 Serpong
    [Tags]  Full Testing        

SKU Search                      ${PRODUCT}[4]                 ${DESCRIPTION}[4]            Belia               100                 Serpong
    [Tags]  Full Testing         

Normal Product                  ${PRODUCT}[5]                 ${DESCRIPTION}[5]             Belia                 100                 Serpong
    [Tags]  Full Testing

*** Keywords ***

Search Function Product
    [Arguments]    ${product}   ${description}   ${vendor}   ${stock}   ${warehouse}
    
    Input Text on Search Function   ${product}
    Click Product Name PLP        ${product}
    Check Product Name            ${product}
    Check Description             ${description}
    Check Brand Name              ${vendor}
    Check Stock                   ${stock}
    Check Warehouse               ${warehouse}

