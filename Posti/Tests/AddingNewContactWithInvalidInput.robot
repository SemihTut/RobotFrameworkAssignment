*** Settings ***
Documentation    Add and Edit New Contact With Invalid Data
Resource    ../Resources/CommonWeb.robot
Resource    ../Resources/POM/AddressBookPage.robot

Suite Setup    Begin Web Test
Suite Teardown    End Web Test
Test Template    Invalid Contact Credentials


*** Test Cases ***      name        address     postalcode      phoneNumber
Empty name              ${EMPTY}     Espoo        02230        04136611000
Empty address           Semih        ${EMPTY}     02230        04136611000
Empty postalcode        Semih2       Espoo        ${EMPTY}     04136611000


*** Keywords ***
Invalid Contact Credentials
    [Arguments]   ${name}   ${address}  ${postalcode}   ${phoneNumber}
    Login with valid credentials
    Go to Address Book Page
    User Should Add New Contact
    User Should Input Name  ${name}
    User Should Input Address   ${address}
    User Should Input PostalCode    ${postalcode}
    User should Input Valid PhoneNumber     ${phoneNumber}
    User Should Click Add Button
    User Should See The Error Message