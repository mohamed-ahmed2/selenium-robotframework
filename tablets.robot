*** Settings ***
Library    SeleniumLibrary  run_on_failure=NOTHING
Resource    Actions.robot
Variables    tablets_page_locators.py
Suite Teardown  close


*** Test Cases ***
tc_01_validating sort by menu label
    navigate to tablets page
    select from list by label    ${sort_by_menu}    ${price_low_to_high}
    list selection should be    ${sort_by_menu}     ${price_low_to_high}



*** Keywords ***
navigate to tablets page
    open chrome
    click on tablets from home

