*** Settings ***
 Documentation              Resources

 Library		            Selenium2Library
 Library		            OperatingSystem

 Library                    org.robotframework.javalib.library.AnnotationLibrary     popot/robot/**.class

*** Variables ***
 ${webdriver_chrome} =      webdriver.chrome.driver
 ${chromedriver} =          chromedriver.exe
 ${webdriver_path} =        ${CURDIR}${/}..${/}..${/}resources${/}${chromedriver}
 ${browser} =               chrome
 ${url} =                   https://www.watchco.com/
