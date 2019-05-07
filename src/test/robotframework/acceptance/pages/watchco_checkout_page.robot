*** Settings ***

 Documentation          WatchCo Checkout Page

 Resource               header.robot


*** Variables ***

 ${loc_checkout_continue_shopping_btn} =    //button[contains(@class, 'button') and contains(@class, 'btn-continue')]


*** Keywords ***

 Click 'Continue Shopping' Button
    [Documentation]                         Click 'Continue Shopping' Button

    Click Element                           locator=${loc_checkout_continue_shopping_btn}