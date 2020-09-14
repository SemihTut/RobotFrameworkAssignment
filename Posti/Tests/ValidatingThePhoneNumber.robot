*** Settings ***
Documentation    Validation Of Finnish Phone Number
Resource    ../Resources/CommonWeb.robot
Resource    ../Resources/POM/LoginPage.robot
Resource    ../Resources/POM/AddressBookPage.robot



Test Setup      Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${phoneNumber} = 041 366 11 70
${InvalidphoneNumber} = 523 123 45 80


*** Test Cases ***
Valid Phone Number
    Login with valid credentials
    User Should Add New Contact
    User should Input Valid PhoneNumber     ${phoneNumber}
    Save Contact
    User Should See The Approved Message


Invalid Phone Number
    Login with valid credentials
    User Should Add New Contact
    User should Input Valid PhoneNumber     ${InvalidphoneNumber}
    Save Contact
    User Should See Invalid Phone Number Message

