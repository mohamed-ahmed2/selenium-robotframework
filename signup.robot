*** Settings ***
Library    SeleniumLibrary  run_on_failure=NOTHING
Resource    Actions.robot

*** Test Cases ***
signup

    open chrome
    click on register
    enter first name    ${first_name}
    enter last name     ${last_name}
    enter fax   ${fax}
    enter email     ${email}
    enter phone     ${phone_number}
    scroll element into view    ${passwordconfirm_textbox}
    enter address1  ${address1}
    enter address2  ${address2}
    enter city  ${city}
    enter postcode  ${post_code}
    choose country  ${country}
    choose region   ${region}
    scroll element into view    ${continue_button}
    enter password  ${password}
    enter passwor confirm   ${password}
    select yes
    click on agree
    click on continue
    close 
