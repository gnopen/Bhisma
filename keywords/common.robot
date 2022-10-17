*** Settings ***
Documentation       Template keyword resource.

Variables           variables.py
Library             RPA.Browser.Selenium


*** Keywords ***

Initialize
    #Create Webdriver    Chrome  executable_path=chromedriver.exe
    Open Browser  ${WEBSITE_URL}  ${BROWSER}
    Maximize Browser Window
    Sleep    ${DELAY}

CloseDown
    Close Browser
