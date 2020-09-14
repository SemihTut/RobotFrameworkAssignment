*** Settings ***
Documentation    Delete Contact
Resource    ../Resources/CommonWeb.robot
Resource    ../Resources/POM/LoginPage.robot
Resource    ../Resources/POM/AddressBookPage.robot


Test Setup      Begin Web Test
Test Teardown    End Web Test

*** Variables ***



*** Test Cases ***
Delete a Contact From Contacts List
    Login with valid Credentials
    Go to Address Book Page
    click element    ${list_of_contacts}
    ${deletedOne} =  get text    ${anyContact}
    click element    ${delete_contact_btn}
    'Contact is Deleted' Message
    get list items    ${list_of_contacts}
    #check if list_of_contacts include deletedOne

