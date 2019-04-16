*** Settings ***
Documentation              Resources

Library		               Selenium2Library
Library                    org.robotframework.javalib.library.AnnotationLibrary     popot/robot/**.class

*** Variables ***
${webdriver_chrome} =      webdriver.chrome.driver
${webdriver_path} =        \\src\\test\\resources\\chromedriver.exe
${browser} =               chrome
${url} =                   https://www.watchco.com
