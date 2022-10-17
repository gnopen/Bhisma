*** Settings ***
Documentation       Template keyword resource.

Variables           variables.py
Library             RPA.Browser.Selenium


*** Keywords ***

Check Subtotal
    [Arguments]   ${expected}
    Sleep    ${DELAY}
    ${subtotal}  Get Text   //div[@class='subtotal']/span[@class='value']
    Should Be Equal As Strings    ${expected}    ${subtotal}

Check Pengiriman
    [Arguments]   ${expected}
    ${pengiriman}  Get Text   //div[@class='shipping-box']/span[@class='value']
    Should Be Equal As Strings    ${expected}    ${pengiriman}

Check Hemat
    [Arguments]   ${expected}
    ${currentprice}  Get Text   //div[@class='discount']/span[@class='value']
    Log  "Current Price " ${currentprice} 
    Should Be Equal As Strings    ${expected}    ${currentprice}
    Sleep    ${DELAY}
    Screenshot

Check Grand Total
    [Arguments]   ${expected}
    ${description}  Get Text   //div[@class='grand-total']/span[@class='grand-value']
    Should Be Equal As Strings    ${expected}    ${description}
    Screenshot

Check Single Product
    [Arguments]   ${expected}
    ${warehouse}  Get Text   //*[@class='items'] 
    ${result} =  Catenate   Warehouse ${expected}
    Should Be Equal As Strings    ${result}    ${warehouse}

Check Price Progressive

Check Multiple Product

Check Voucher Code

Check Wishlist

Delete Product From Cart

Check Stock Cart

Continue to Payment
    Sleep    ${DELAY}
    Click Element    //*[@class = 'btn-continue']
