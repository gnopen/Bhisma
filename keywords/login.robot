*** Settings ***
Documentation       Template keyword resource.

Variables           variables.py
Library             RPA.Browser.Selenium


*** Keywords ***

Access Login Form
    Click Element If Visible    //a[contains(text(),"Masuk / Daftar")]
    Set Browser Implicit Wait     ${DELAY}    

Input Username Front End
    [Arguments]   ${username}
    Input Text    //*[@name='input-email']     ${username}

Input Password Front End
    [Arguments]   ${password}
    Input Text    //*[@name='input-password']    ${password}

Submit Credentials
    Click Button    //button[@id='login-button']

Login Front End
    Set Browser Implicit Wait     ${DELAY}
    Click Element If Visible    //a[contains(text(),"Masuk / Daftar")]
    Sleep     ${DELAY}
    Input Text    //*[@name='input-email']    ${EMAIL_USER}
    Input Text    //*[@name='input-password']  ${PASSWORD_USER}
    Click Element    //button[@id='login-button']
    Screenshot
    Sleep     ${DELAY}

Form Login Validation
    Click Element If Visible    //a[contains(text(),"Masuk / Daftar")]
    Set Browser Implicit Wait     ${DELAY}    
    Input Text    //*[@name='input-email']   ${EMPTY}    
    Input Text    //*[@name='input-password']  ${EMPTY}      
    Click Element    //button[@id='login-button']
    ${emailalert}  Get Text   //p[@id='email-alert']
    ${passwordalert}  Get Text   //p[@id='password-alert']
    Screenshot
#     Run Keyword if  ${emailalert}=="Mohon masukkan email Anda dengan benar"  Condition1
#    ...  ELSE   Condition2


Condition1

Condition2


