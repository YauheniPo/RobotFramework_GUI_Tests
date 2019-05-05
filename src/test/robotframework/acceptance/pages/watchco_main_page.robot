*** Settings ***

 Documentation          WatchCo Main Page

 Resource               locators.robot


*** Variables ***



*** Keywords ***

 Click to Brand Menu Item
    [Documentation]                     Click to Brand Menu Item
    [Arguments]                         ${brand}

    ${locator} =                        Get Brand Menu Locator ${brand}
    Wait Until Element Is Clickable     locator=${locator}
    Click Element                       locator=${locator}

 Click to Main Menu Bar Item
    [Documentation]                     Click to Main Menu Bar Item
    [Arguments]                         ${bar_item_loc}    ${item_name}

    Wait Until Element Is Visible       locator=${bar_item_loc}
    Mouse Up                            locator=${bar_item_loc}
    Wait Until Element Is Clickable     locator=//*[text()='${item_name}']
    Click Element                       locator=//*[text()='${item_name}']