*** Settings ***
Documentation  Demo Test

Resource    Base.robot

*** Test Cases ***
Demo test
    Set Driver       driver=${driver}    path=${path}
	Open Browser     url=${url}          browserName=${browser}
	Close Browser