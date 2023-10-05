*** Settings ***
Library     SeleniumLibrary
Resource    ../Data/OrangeHRM_Variables.robot
Variables   ../Data/common_xpath.py

*** Keywords ***
Open OrangeHRM
    Open browser    ${urlOrangeHRM}    ${browserType}
    set window size    ${1700}    ${900}
    Wait until element is visible    ${btnLogin}    60