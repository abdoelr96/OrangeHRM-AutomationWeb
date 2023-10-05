*** Settings ***
Library  SeleniumLibrary
Resource    ../Data/OrangeHRM_Variables.robot
Variables   ../Data/common_xpath.py

*** Keywords ***
Login OrangeHRM - Valid
    wait until element is visible   ${fieldUsernameLogin}  2s
    input text  ${fieldUsernameLogin}  ${username}
    wait until element is visible   ${fieldPasswordLogin}   2s
    input text   ${fieldPasswordLogin}   ${passwordAdmin}
    wait until element is visible   ${btnLogin}   2s
    click button    ${btnLogin}
    sleep    1s
    wait until element is visible    ${menuSearch}    60

Login OrangeHRM - Invalid Username
    wait until element is visible   ${fieldUsernameLogin}  2s
    input text  ${fieldUsernameLogin}  ${usernameInvalid}
    wait until element is visible   ${fieldPasswordLogin}   2s
    input text   ${fieldPasswordLogin}   ${passwordAdmin}
    wait until element is visible   ${btnLogin}   2s
    click button    ${btnLogin}
    sleep    1s
    wait until element is visible    ${wordingInvalidCredentials}    60
    reload page
    sleep    1s
    Log To Console      Login Gagal !

Login OrangeHRM - Invalid Password
    wait until element is visible   ${fieldUsernameLogin}  2s
    input text  ${fieldUsernameLogin}  ${username}
    wait until element is visible   ${fieldPasswordLogin}   2s
    input text   ${fieldPasswordLogin}   ${passwordInvalid}
    wait until element is visible   ${btnLogin}   2s
    click button    ${btnLogin}
    sleep    1s
    wait until element is visible    ${wordingInvalidCredentials}    60
    reload page
    sleep    1s
    Log To Console      Login Gagal !

Login OrangeHRM - Without Input Username and Password
    wait until element is visible   ${btnLogin}   2s
    click button    ${btnLogin}
    sleep    1s
    wait until element is visible    ${wordingRequiredUsername}    60
    wait until element is visible    ${wordingRequiredPassword}    60
    reload page
    sleep    1s
    Log To Console      Login Gagal !

Login OrangeHRM - Without Input Password
    wait until element is visible   ${fieldUsernameLogin}  2s
    input text  ${fieldUsernameLogin}  ${username}
    wait until element is visible   ${btnLogin}   2s
    click button    ${btnLogin}
    sleep    1s
    wait until element is visible    ${wordingRequiredPassword}    60
    reload page
    sleep    1s
    Log To Console      Login Gagal !

Login OrangeHRM - Without Input Username
    wait until element is visible   ${fieldPasswordLogin}  2s
    input text  ${fieldPasswordLogin}  ${passwordAdmin}
    wait until element is visible   ${btnLogin}   2s
    click button    ${btnLogin}
    sleep    1s
    wait until element is visible    ${wordingRequiredUsername}    60
    reload page
    sleep    1s
    Log To Console      Login Gagal !