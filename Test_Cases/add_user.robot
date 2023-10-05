*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../Data/OrangeHRM_Variables.robot
Variables   ../Data/common_xpath.py

*** Keywords ***
Click menu Admin
    wait until element is visible   ${menuAdmin}   2s
    click element    ${menuAdmin}
    sleep    1s
    wait until element is visible    ${btnAdd}    60

Click button Add
    wait until element is visible   ${btnAdd}   2s
    click button    ${btnAdd}
    sleep    1s
    wait until element is visible    ${fieldUserRole}    60

Pick User Role
    wait until element is visible    ${fieldUserRole}
    click element   ${fieldUserRole}
    click element   //span[contains(text(),'Admin')]
    sleep    2s

Pick Status
    wait until element is visible    ${fieldUserStatus}
    click element   ${fieldUserStatus}
    click element   //span[contains(text(),'Enabled')]
    sleep    2s

Pick Employee Name
    wait until element is visible    ${fieldEmployeeName}
    input text  ${fieldEmployeeName}  ${hintEmployeeName}
    Sleep    5s

    Wait Until Element is visible     ${selectedEmployeeName}
    ${employeeNameSelected}=    get text    ${selectedEmployeeName}
    Click Element   ${selectedEmployeeName}
    Sleep    2s

Input Username
    ${randomAbc}  Generate Random String    5    ${LETTERS}
    ${randomUsername}=  Set Variable    ${randomAbc}

    wait until element is visible   ${fieldUsername}  2s
    input text  ${fieldUsername}  ${randomUsername}
    Sleep   2s

Input Password & Confirm Password
    ${randomAbc}  Generate Random String    5    ${LETTERS}
    ${randomPassword}=  Set Variable    ${randomAbc}

    wait until element is visible   ${fieldPassword}  2s
    input text  ${fieldPassword}  ${randomPassword}123
    Sleep   2s

    #Confirm Password
    wait until element is visible   ${fieldConfirmPassword}  2s
    input text  ${fieldConfirmPassword}  ${randomPassword}123
    Sleep   2s

Click button Save
    wait until element is visible   ${btnSave}   2s
    click element    ${btnSave}
    sleep    1s
    wait until element is visible    ${btnAdd}    60
    Log To Console      Add User Success !!!

Click button Cancel
    wait until element is visible   ${btnCancel}   2s
    click element    ${btnCancel}
    sleep    1s
    wait until element is visible    ${btnAdd}    60
