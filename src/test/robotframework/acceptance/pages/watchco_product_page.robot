*** Settings ***

 Documentation          WatchCo Product Page

 Resource               header.robot


*** Variables ***

 ${loc_product_add_to_cart_btn} =       //button[contains(@class, 'button') and contains(@class, 'btn-cart')]


*** Keywords ***

 Click 'Add to Cart' Button
    [Documentation]                     Click 'Add to Cart' Button

    Click Element                       locator=${loc_product_add_to_cart_btn}