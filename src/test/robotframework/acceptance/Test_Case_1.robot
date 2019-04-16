*** Settings ***
Documentation  Demo Test

Resource    Base.robot

Force Tags          tagg

*** Test Cases ***
Check google
    Set System Property       driver=${driver}    path=${path}
    Open Browser     url=${url}          browserName=${browser}
	Set Browser Implicit Wait   5
    Input Text  locator=//*[@name='q']      text=EPAM
    Sleep   2
    Press Key   locator=//*[@name='q']    key=\uE00C
    Sleep   2
    Click Button    locator=//div[not(@jsname)]/center/*[@name='btnK']
    Sleep   2
	[Teardown]  Close Browser