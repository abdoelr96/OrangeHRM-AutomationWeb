*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../Data/OrangeHRM_Variables.robot
Variables   ../Data/common_xpath.py

*** Keywords ***
Click menu PIM
    wait until element is visible   ${menuPIM}   2s
    click element    ${menuPIM}
    sleep    1s
    wait until element is visible    ${titleEmployeeInformation}    60

Click button Add Employee
    wait until element is visible   ${btnAddEmployee}   2s
    click button    ${btnAddEmployee}
    sleep    1s
    wait until element is visible    ${fieldFirstNameEmployee}    60

Input First Name
    wait until element is visible   ${fieldFirstNameEmployee}  2s
    input text  ${fieldFirstNameEmployee}  ${employeeFirstName}
    Sleep   2s

Input Last Name
    wait until element is visible   ${fieldLastNameEmployee}  2s
    input text  ${fieldLastNameEmployee}  ${employeeLastName}
    Sleep   2s

Click button Save Employee
    wait until element is visible   ${btnSaveAddEmployee}   2s
    click button    ${btnSaveAddEmployee}
    sleep    1s
    wait until element is visible    ${wordingPersonalDetail}    60
    Log To Console      Add Employee Success !!!

Search Employee
    wait until element is visible   ${fieldEmployeeNamePIM}  2s
    input text  ${fieldEmployeeNamePIM}  ${employeeFirstName}
    wait until element is visible   ${btnSearchEmployee}
    click button    ${btnSearchEmployee}
    Log To Console      Search Employee Success !!!
    Sleep   2s

Delete Employee
    wait until element is visible   ${btnDeleteEmployee}
    click button    ${btnDeleteEmployee}
    sleep   1s
    wait until element is visible   ${btnConfirmDelete}
    click button    ${btnConfirmDelete}
    sleep   1s
    wait until element is visible   ${titleEmployeeInformation}
    Log To Console      Delete Employee Success !!!

Search Employee - No Records Found
    wait until element is visible   ${fieldEmployeeNamePIM}  2s
    wait until element is visible   ${btnSearchEmployee}
    click button    ${btnSearchEmployee}
    Log To Console      No Records Found !!!
    Sleep   2s