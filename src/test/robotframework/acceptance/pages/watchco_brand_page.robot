*** Settings ***
 Documentation          WatchCo Main Page

 Resource               locators.robot


*** Variables ***



*** Keywords ***
 Get Title
    [Documentation]                     Get Title

    ${title} =                          Get Text           ${brand_title}
    [Return]                            ${title}
