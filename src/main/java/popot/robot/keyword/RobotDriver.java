package popot.robot.keyword;

import lombok.extern.log4j.Log4j2;
import org.robotframework.javalib.annotation.ArgumentNames;
import org.robotframework.javalib.annotation.RobotKeyword;
import org.robotframework.javalib.annotation.RobotKeywords;
import popot.robot.browser.Browser;

@Log4j2
@RobotKeywords
public class RobotDriver {

    @RobotKeyword("WebDriver Manager Setup")
    @ArgumentNames({"browser"})
    public void webDriverManagerSetup(String browser) {
        log.info(String.format("Set WebDriver Path for '%s' browser", browser));
        Browser.getInstance(browser);
    }
}


