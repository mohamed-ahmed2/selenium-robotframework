*** Settings ***
Library    SeleniumLibrary  run_on_failure=NOTHING
Resource    Actions.robot
Variables    components_page_locators.py
Suite Teardown  close
Test Setup    navigate to components page

*** Test Cases ***
tc_01_validating add to cart button
    set selenium timeout    10
    click on monitors
    sleep    3
    title should be    ${monitors_page_title}
    click on add to cart
   sleep    3
    title should be    ${add_to_cart_title}



*** Keywords ***
navigate to components page
    open chrome
    click on components from home
click on monitors

    click element    ${monitors_link}

click on add to cart
    scroll element into view    ${scrolling_point}
    click element    ${add_to_cart}
