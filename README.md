[![Build Status](https://dev.azure.com/YauheniPo/WebTestFramework/_apis/build/status/YauheniPo.RobotFramework_GUI_Tests?branchName=develop)](https://dev.azure.com/YauheniPo/WebTestFramework/_build/latest?definitionId=6&branchName=develop)

<img src="https://github.com/YauheniPo/RobotFramework_GUI_Tests/workflows/Java%20CI%20-%20Test/badge.svg" />
# RobotFramework_GUI_Tests

RobotFramework
Robot Framework is a generic test automation framework for acceptance testing and acceptance test-driven development (ATDD). It has easy-to-use tabular test data syntax and utilizes the keyword-driven testing approach. Its testing capabilities can be extended by test libraries implemented either with Python or Java, and users can create new keywords from existing ones using the same syntax that is used for creating test cases.

-Enables easy-to-use tabular syntax for creating test cases in a uniform way.
-Allows using keyword-driven, data-driven and behavior-driven (BDD) approaches.
-Provides ability to create reusable higher-level keywords from the existing keywords.
-Provides easy-to-read reports and logs in HTML format.
-Is platform and application independent.
-The modular architecture supports creating tests even for applications with several diverse interfaces.
-Provides a simple library API for creating customized test libraries.
-Provides a command line interface and XML based outputs for integration into existing build infrastructure (continuous integration systems).
-Remote library interface enables distributed testing and implementing test libraries in any programming language.
-Provides tagging to categorize and select test cases to be executed.
-Has built-in support for variables, practical particularly for testing in different environments.

mvn clean compile robotframework:run
mvn clean compile robotframework:run -Dincludes=tagg
mvn clean compile robotframework:run -Dincludes=MainPage,Sorter
mvn clean compile robotframework:run -Dexcludes=Base

mvn clean compile robotframework:run -Dsuites=acceptance.tests.watchCo_main_page_test
mvn clean compile robotframework:run -Dvariables=browser:ie -Dsuites=acceptance.Test_Case_1         - ${browser} =      chrome


https://robotframework.org/#libraries
http://robotframework.org/MavenPlugin/run-mojo.html#variables
http://robotframework.org/robotframework/#built-in-tools
http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html
https://github.com/MarkusBernhardt/robotframework-selenium2library-java#readme
http://central.maven.org/maven2/com/github/hi-fi/robotframework-seleniumlibrary/3.141.59.2/robotframework-seleniumlibrary-3.141.59.2.html
https://github.com/Hi-Fi/robotframework-seleniumlibrary-java

## Stargazers over time

[![Stargazers over time](https://starchart.cc/YauheniPo/RobotFramework_GUI_Tests.svg)](https://starchart.cc/YauheniPo/RobotFramework_GUI_Tests)
      
