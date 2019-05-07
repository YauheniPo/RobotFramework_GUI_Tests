*** Settings ***

 Documentation                  Resources

 Library                        SeleniumLibrary
 Library                        String
 Library                        org.robotframework.javalib.library.AnnotationLibrary     popot/robot/**.class


*** Variables ***

 ${browser} =                   googlechromeheadless
 ${url} =                       https://www.watchco.com/
 ${implicit_wait} =             20
 ${timeout} =                   60


*** Keywords ***

 Before Suite
    [Documentation]             WebDriver Manager Setup for '${browser}' browser

    WebDriver Manager Setup     browser=${browser}

 Before Test
    [Documentation]             Open Browser '${browser}' for '${url}'

    Set Selenium Implicit Wait  timestr=${implicit_wait}
    Set Selenium Timeout        timestr=${timeout}
    Open Browser                url=${url}                  browserName=${browser}
    Set Window Size             width=1920                  height=1080
    Maximize Browser Window
