*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/CommonWeb.robot


*** Variables ***


*** Keywords ***
Go to InvoicesPage
    click element    ${Invoices}
    wait until element is visible   ${anyElementinInvoicesPage}
    page should contain    ${ListOfTheInvoices}

BlockedUsersMakePayment
    select from list by value    ${ListOfTheInvoices}  Any Invoice
    click element    ${PaymentBtn}
    wait until element is visible  ${declinedmessage}
    Payment Declined Message

UnblockedUsersMakePayment
    select from list by value    ${ListOfTheInvoices}  Any Invoice
    click element    ${PaymentBtn}
    wait until element is visible   ${approvedMessage}
    Payment Approved Message

Payment Approved Message
    page should contain   Your Payment is DONE

Payment Declined Message
    page should contain    Your Payment is Declined