*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../Data/OrangeHRM_Variables.robot
Variables   ../Data/common_xpath.py
Resource    ../Test_Cases/open_browser.robot
Resource    ../Test_Cases/login_orangeHRM.robot
Resource    ../Test_Cases/add_user.robot


*** Test Cases ***
OrangeHRM - Add User
    #Cancel Add User
    Open OrangeHRM
    Login OrangeHRM - Valid
    Click menu Admin
    Click button Add
    Click button Cancel

    #Add User Success
    Click button Add
    Pick User Role
    Pick Status
    Pick Employee Name
    Input Username
    Input Password & Confirm Password
    Click button Save
