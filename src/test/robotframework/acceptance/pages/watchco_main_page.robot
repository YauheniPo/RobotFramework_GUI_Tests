*** Settings ***

 Documentation          WatchCo Main Page

 Resource               header.robot


*** Variables ***

 ${loc_side_menu_brand_item} =      //ul[@class='menu side-menu']//*[text()='%s']


*** Keywords ***

 Get Brand Menu Locator ${brand}
    [Documentation]                 Get Main Menu locator

    ${locator} =                    Replace String     ${loc_side_menu_brand_item}    %s    ${brand}
    [Return]                        ${locator}

 Click to Brand Menu Item
    [Documentation]                 Click to Brand Menu Item
    [Arguments]                     ${brand}

    ${locator} =                    Get Brand Menu Locator ${brand}
    Click Element                   locator=${locator}

 Click to Main Menu Bar Item
    [Documentation]                 Click to Main Menu Bar Item
    [Arguments]                     ${bar_item_loc}                       ${item_name}

    Mouse Up                        locator=${bar_item_loc}
    Click Element                   locator=//*[text()='${item_name}']

