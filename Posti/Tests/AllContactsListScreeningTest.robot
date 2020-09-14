*** Settings ***
Documentation    Screening All Contacts
Resource    ../Resources/CommonWeb.robot
Resource    ../Resources/POM/AddressBookPage.robot


Test Setup      Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${frameName}= frameName


*** Test Cases ***
Screening All Contacts
    Login with valid credentials
    User Should Add New Contact
    click button    ${side_menu}
    select frame    ${frameName}
    click button    ${list_of_contacts}




