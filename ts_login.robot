*** Settings ***
Documentation       Template robot main suite.

Library             Collections
Library             MyLibrary
Resource            homepage.robot
Resource            common.robot
Resource            login.robot
Variables           variables.py

Test Setup          Initialize
Test Template       Login With Invalid Credentials Should Fail


*** Tasks ***
Invalid Username                           invalid  p@ssword24
    [Tags]  Full Testing

Invalid Password                           admin@gmail.com  invalid 
    [Tags]  Full Testing

Invalid Username And Password              invalid  invalid 
    [Tags]  Full Testing

Long Email                                 adminkentang12314141414adminkentang12314141414adminkentang12314141414adminkentang12314141414adminkentang12314141414adminkentang12314141414@gmail.com      p@ssw0rd24 
    [Tags]  Full Testing         

Empty Username                             ${EMPTY}              p@ssw0rd24
    [Tags]  Full Testing          

Empty Username And Password                ${EMPTY}     ${EMPTY}   
    [Tags]  Full Testing

Empty Password                             admin@gmail.com  ${EMPTY}   

*** Keywords ***
Login With Invalid Credentials Should Fail
    [Arguments]    ${username}    ${password}
    Access Login Form
    Input Username Front End    ${username}
    Input Password Front End    ${password}
    Submit Credentials



