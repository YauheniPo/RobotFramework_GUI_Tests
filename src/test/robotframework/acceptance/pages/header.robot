*** Settings ***

 Documentation                      Header


*** Variables ***

 ${loc_menu_bar_sale} =             //*[text()='Sale ']
 ${loc_menu_bar_men} =              //*[text()='Men']
 ${loc_menu_bar_women} =            //*[text()='Women']

 ${loc_cart_icon} =                 //*[@class='icon-mini-cart']
 ${loc_cart_product_label} =        //*[@class='product-name']


*** Keywords ***

 Hover to Cart Icon
    [Documentation]                 Hover to Cart Icon

    Mouse Up                        locator=${loc_cart_icon}

 Get Product Label
    [Documentation]                 Get Product Label

    ${label} =                      Get Text              ${loc_cart_product_label}
    [Return]                        ${label}