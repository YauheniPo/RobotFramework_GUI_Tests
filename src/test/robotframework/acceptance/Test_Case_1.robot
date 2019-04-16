*** Settings ***
Documentation  Demo Test

Resource    Base.robot

Force Tags          tagg

*** Test Cases ***
Check google
    Set System Property       driver=${driver}    path=${path}
    Open Browser     url=${url}          browserName=${browser}
	Set Browser Implicit Wait   5
	Set Global Variable     ${webdriver.chrome.driver}    ${path}
	Log     ${webdriver.chrome.driver}
	Run Keyword If   '${browser}' == 'chrome'     Input Text    locator=//*[@name='q']      text=EPAM
    ...       ELSE                                Input Text    locator=//*[@name='q']      text=EPAMM
    Press Key   locator=//*[@name='q']    key=\uE00C

    ${sys_target} =       Get Value    locator=//div[not(@jsname)]/center/*[@name='btnK']
    Set Test Variable   ${sys_target}
    Log     ${sys_target}

    Click Button    locator=//div[not(@jsname)]/center/*[@name='btnK']
    Sleep   2
	[Teardown]  Close Browser