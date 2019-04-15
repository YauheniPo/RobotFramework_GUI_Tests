*** Settings ***
Documentation  Demo Test

Resource    Base.robot

Library		Selenium2Library
Library     org.robotframework.javalib.library.ClassPathLibrary      popot/robot/**.class
Library     org.robotframework.javalib.library.AnnotationLibrary     popot/robot/**.class

Force Tags          tagg

*** Test Cases ***
Check google
    Set System Property       driver=${driver}    path=${path}
    Open Browser     url=${url}          browserName=${browser}
	Set Browser Implicit Wait   5
    Input Text  name=q      EPAM
    Sleep   2
    Press Key   locator=//*[@name='q']    key=\uE00C
    Sleep   2
    Click Button    locator=//div[not(@jsname)]/center/*[@name='btnK']
    Sleep   6
	[Teardown]  Close Browser