#home page
my_account = "xpath://span[contains(text(),'My Account')]"
register = "xpath://a[contains(text(),'Register')]"
login = "xpath://a[contains(text(),'Login')]"

#signup page
firstname_textbox = "xpath://input[@id='input-firstname']"
lastname_textbox = "xpath://input[@id='input-lastname']"
email_textbox = "xpath://input[@id='input-email']"
telephone_textbox = "xpath://input[@id='input-telephone']"
fax_textbox = "xpath://input[@id='input-fax']"
company_textbox = "id:input-company"
address1_textbox = "id:input-address-1"
address2_textbox = "id:input-address-2"
city_textbox = "id:input-city"
postal_code_textbox = "id:input-postcode"
country_menu = "id:input-country"
region_menu = "id:input-zone"
password_textbox = "id:input-password"
passwordconfirm_textbox = "id:input-confirm"
radio_button = "xpath://input[@type='radio' and @name='newsletter' and @value='1']"
agree_checkbox = "xpath://input[@name='agree']"
continue_button = "xpath://input[@class='btn btn-primary']"


#login page
email_textbox_login = "//input[@id='input-email']"
password_textbox_lgoin = "//input[@id='input-password']"
login_buton_login = "//input[@class='btn btn-primary']"
invalid_login_message ="xpath://*[contains(text(),'Warning: No match for E-Mail Address and/or Password.')]"