*** Settings ***
Library    SeleniumLibrary  run_on_failure=NOTHING
Resource    Actions.robot
Variables    desktop_page_locators.py
Suite Teardown  close
Test Setup    navigate to desktops page

*** Test Cases ***
tc_01_validating add to cart button
    click on add to cart
    sleep    3
    title should be    ${new_page_title}




*** Keywords ***
navigate to desktops page
    open chrome
    click on desktops from home
click on add to cart
    scroll element into view    ${scrolling_point}
    click element    ${element_to_be_added_to_cart}

