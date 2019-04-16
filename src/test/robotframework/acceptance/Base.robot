*** Settings ***
Documentation  Base Settings and Data

Library		Selenium2Library
#Library     org.robotframework.javalib.library.ClassPathLibrary      popot/robot/**.class
Library     org.robotframework.javalib.library.AnnotationLibrary     popot/robot/**.class

*** Variables ***
${driver} =      webdriver.chrome.driver
${path} =        \\src\\test\\resources\\chromedriver.exe
${browser} =     chrome
${url} =         https://www.google.com
