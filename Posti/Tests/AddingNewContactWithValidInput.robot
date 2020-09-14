*** Settings ***
Documentation    Add and Edit New Contact With Valid Data
Resource    ../Resources/CommonWeb.robot
Resource    ../Resources/POM/LoginPage.robot
Resource    ../Resources/POM/AddressBookPage.robot


Test Setup      Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${name} = Semih
${address} = Matinkyla
${postalCode} = 02230
${phone} = 041111111


*** Test Cases ***
User Should be able to Add New Contact
    Login with valid credentials
    User Should Add New Contact
    User Should Input Name  ${name}
    User Should Input Address   ${address}
    User Should Input PostalCode    ${postalCode}
    User should Input Valid PhoneNumber     ${phone}
    User Should Click Add Button
    User Should See The Approved Message

