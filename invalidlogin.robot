*** Settings ***
Library    SeleniumLibrary  run_on_failure=NOTHING
Resource    Actions.robot
Library     DataDriver  invalidlogin.xlsx
Suite Setup    navigate to login from home
Suite Teardown  close
Test Template    validating error message when user enter invalid email and password

*** Test Cases ***
tc_01_validating error message when user enter invalid email and password


*** Keywords ***
validating error message when user enter invalid email and password
    [Arguments]    ${invalid_email}     ${invalid_password}
    enter email login   ${invalid_email}
    enter password login    ${invalid_password}
    click login from login
    element should be visible    ${invalid_login_message}
