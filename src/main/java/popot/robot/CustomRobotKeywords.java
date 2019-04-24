package popot.robot;

import lombok.extern.log4j.Log4j2;
import org.apache.commons.lang3.StringUtils;
import org.robotframework.javalib.annotation.ArgumentNames;
import org.robotframework.javalib.annotation.RobotKeyword;
import org.robotframework.javalib.annotation.RobotKeywords;

@Log4j2
@RobotKeywords
public class CustomRobotKeywords {

    @RobotKeyword("Set System Property")
    @ArgumentNames({"key", "value"})
    public void setSystemProperty(String key, String value) {
        System.setProperty(key, value);
    }

    @RobotKeyword("Get System Property")
    @ArgumentNames({"key"})
    public String getSystemProperty(String key) {
        return System.getProperty(key);
    }

    @RobotKeyword("Is Contain String Ignore Case")
    @ArgumentNames({"value", "string"})
    public boolean isContainStringIgnoreCase(String value, String string) {
        log.info(String.format("Is Contain String Ignore Case: Value - '%s'; String - '%s'", value, string));
        return StringUtils.containsIgnoreCase(value, string);
    }

    @RobotKeyword("WebDriver Manager Setup")
    @ArgumentNames({"browser"})
    public void webDriverManagerSetup(String browser) {
        log.info(String.format("Set WebDriver Path for '%s' browser", browser));
        Browser.getInstance(browser);
    }

    public static void main(String[] args) {
        CustomRobotKeywords customRobotKeywords = new CustomRobotKeywords();
    }
}


