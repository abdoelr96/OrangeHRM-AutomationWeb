*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../Data/OrangeHRM_Variables.robot
Variables   ../Data/common_xpath.py
Resource    ../Test_Cases/open_browser.robot
Resource    ../Test_Cases/login_orangeHRM.robot
Resource    ../Test_Cases/menuPIM.robot


*** Test Cases ***
OrangeHRM - Menu PIM
    #Login
    Open OrangeHRM
    Login OrangeHRM - Invalid Username
    Login OrangeHRM - Invalid Password
    Login OrangeHRM - Valid

    #Menu PIM
    Click menu PIM

    #Add Employee
    Click button Add Employee
    Input First Name
    Input Last Name
    Click button Save Employee
    Click menu PIM

    #Search Employee Name
    Search Employee

    #Delete Employee
    Delete Employee
    Search Employee - No Records Found
