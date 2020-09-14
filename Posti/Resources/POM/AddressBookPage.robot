*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/CommonWeb.robot
Resource    ../Resources/LoginPage.robot
Resource    ../Resources/AddressBookPage.robot


*** Variables ***


*** Keywords ***
Go to Address Book Page
    click element    ${address_book_btn}
    wait until element is visible    ${list_of_contacts}
    title should be    Address Book

User Should Add New Contact
    Go to Address Book Page
    click element    ${add_contact_btn}
    wait until element is visible    ${contact_name_input}

User Should Input Name
    [Arguments]    ${contactName}
    input text    ${contact_name_input}     ${contactName}


User Should Input Address
    [Arguments]    ${contactAddress}
    input text    ${contact_address_input}    ${contactAddress}


User Should Input PostalCode
    [Arguments]    ${contactPostalCode}
    input text    ${contact_postalCode_input}   ${contactPostalCode}


User should Input Valid PhoneNumber
    [Arguments]    ${contactPhoneNumber}
    input text    ${contact_phone_number}    ${contactPhoneNumber}

    #The given argument to compile() method
    #is regular expression. With the help of
    #regular expression we can validate mobile
    #number.
    #1) Begins with 0
    #2) Then contains 4 or 5.
    #3) Then contains 8 digits between 0-9
    #Java code ->    Pattern p = Pattern.compile("(0)?[4/5][0-9]{8}");
    #Matcher m = p.matcher(s);
    #return (m.find() && m.group().equals(s));


User Should Click Add Button
    click element    ${done_btn}

User Should See The Error Message
    page should contain    error message

User Should See The Approved Message
    page should contain    Approved new contact

Contact is deleted Message
    page should contain    Contact is deleted

Save Contact
    click button    ${done_btn }

User Should See Invalid Phone Number Message
    page should contain     please check your number!

