*** Settings ***
Resource    Resources/Amazon.robot
Resource    Resources/Common.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Webtest
*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about test case with details
    [Tags]  Smoke

    Search for Products
    Select Products from Search Result
    Add Product to Cart
    Begin Checkout



