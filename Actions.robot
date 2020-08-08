*** Settings ***
Library    SeleniumLibrary
Variables   locators.py

*** Variables ***
${url}  http://opencart.abstracta.us/
${chrome}   chrome
${first_name}   John
${last_name}    Doe
${email}    John-Doeeee@gmail.com
${phone_number}     01045687555
${fax}  01004
${address1}     cairo
${address2}     alexandria
${city}     Giza
${post_code}    555
${country}  Egypt
${Region}   Aswan
${password}     4577855558
${yes}  1
${advanced}     id:details-button
${proceed}      id:proceed-link
*** Keywords ***
open chrome
    open browser    ${url}      ${chrome}
    maximize browser window
click on register
    click element    ${my_account}
    wait until element is visible    ${register}
    click element    ${register}
enter first name
    [Arguments]    ${first_name_value}
    click element   ${advanced}
    click element    ${proceed}
    wait until element is visible    ${firstname_textbox}
    input text    ${firstname_textbox}  ${first_name_value}
enter last name
    [Arguments]    ${last_name_value}
    wait until element is visible    ${lastname_textbox}
    input text    ${lastname_textbox}   ${last_name_value}

enter email
    [Arguments]    ${email_value}
    wait until element is visible    ${email_textbox}
    input text    ${email_textbox}  ${email_value}

enter phone
    [Arguments]    ${phone_value}
    wait until element is visible    ${telephone_textbox}
    input text    ${telephone_textbox}  ${phone_value}
enter fax
    [Arguments]    ${fax_value}
    wait until element is visible    ${fax_textbox}
    input text    ${fax_textbox}    ${fax_value}
enter address1
    [Arguments]    ${adress1_value}
    wait until element is visible    ${address1_textbox}
    input text    ${address1_textbox}   ${adress1_value}

enter address2
    [Arguments]    ${adress2_value}
    wait until element is visible    ${address2_textbox}
    input text    ${address2_textbox}   ${adress2_value}
enter city
    [Arguments]    ${city_value}
    wait until element is visible    ${city_textbox}
    input text    ${city_textbox}   ${city_value}

enter postcode
    [Arguments]    ${post_code_value}
    wait until element is visible    ${postal_code_textbox}
    input text    ${postal_code_textbox}    ${post_code_value}
failed
    register keyword to run on failure  close browser

choose country
    [Arguments]    ${selected_country}
    wait until element is visible    ${country_menu}
    select from list by label    ${country_menu}    ${selected_country}
choose region
    [Arguments]    ${selected_region}
     set selenium timeout    10
    set selenium speed    0.5
    wait until element is visible    ${region_menu}
    select from list by label    ${region_menu}     ${selected_region}

enter password
    [Arguments]    ${pass}
    wait until element is visible    ${password_textbox}
    input text    ${password_textbox}   ${pass}
enter passwor confirm
    [Arguments]    ${pass}
    wait until element is visible    ${passwordconfirm_textbox}
    input text    ${passwordconfirm_textbox}    ${pass}

select yes
    click element    ${radio_button}
click on agree
    select checkbox    ${agree_checkbox}
click on continue
    click element    ${continue_button}
close
    sleep    3
    close browser

navigate to login from home
    open chrome
    click element    ${my_account}
    wait until element is visible    ${login}
    click element    ${login}
    click element   ${advanced}
    click element    ${proceed}


enter email login
    [Arguments]    ${email_value}
    wait until element is visible    ${email_textbox_login}
    input text    ${email_textbox_login}    ${email_value}
enter password login
    [Arguments]    ${password_value}
    wait until element is visible    ${password_textbox_lgoin}
    input text    ${password_textbox_lgoin}     ${password_value}
click login from login
    click element    ${login_buton_login}
click on tablets from home
    click element    ${tablets_link}
click on desktops from home
    mouse down    ${desktops_link}
    click element    ${show_desktops_link}
click on components from home
    mouse down      ${components_link}
    wait until element is visible    ${show_all_components}
    click element    ${show_all_components}