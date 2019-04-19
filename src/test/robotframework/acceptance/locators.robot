*** Settings ***
 Documentation                      Locators


*** Variables ***
 ${menu_bar_sale_locator} =         //*[text()='Sale ']
 ${menu_bar_men_locator} =          //*[text()='Men']
 ${menu_bar_women_locator} =        //*[text()='Women']

 @{brand_manu_item_locator} =       //ul[@class='menu side-menu']//*[text()='%s']


*** Keywords ***
 Get Brand Menu Locator ${brand}
    [Documentation]                 Get Main Menu locator

    ${locator} =                    Replace String     @{brand_manu_item_locator}    %s    ${brand}
    [Return]                        ${locator}