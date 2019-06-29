package popot.robot;

import com.github.markusbernhardt.seleniumlibrary.SeleniumLibrary;
import com.github.markusbernhardt.seleniumlibrary.SeleniumLibraryNonFatalException;
import com.github.markusbernhardt.seleniumlibrary.keywords.BrowserManagement;
import com.github.markusbernhardt.seleniumlibrary.keywords.Robot;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.robotframework.javalib.annotation.ArgumentNames;
import org.robotframework.javalib.annotation.RobotKeyword;
import org.robotframework.javalib.annotation.RobotKeywords;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import java.lang.reflect.Field;
import java.util.List;

@RobotKeywords
public class CustomRobotElementKeywords {

    private static SeleniumLibrary s;
    private static BrowserManagement b;
    private Robot robot = new Robot();

    public CustomRobotElementKeywords() throws NoSuchFieldException, IllegalAccessException {
        try {
            CustomRobotElementKeywords.s = getLibraryInstance();
        } catch (javax.script.ScriptException e) {
            e.printStackTrace();
        }
        Field bmField = SeleniumLibrary.class.getDeclaredField("bm");
        bmField.setAccessible(true);
        b = (BrowserManagement) bmField.get(s);
    }

    private static SeleniumLibrary getLibraryInstance() throws ScriptException {
        ScriptEngine engine = new ScriptEngineManager().getEngineByName("python");
        engine.put("library", "SeleniumLibrary");
        engine.eval("from robot.libraries.BuiltIn import BuiltIn");
        engine.eval("instance = BuiltIn().get_library_instance(library)");
        return (SeleniumLibrary) engine.get("instance");
    }

    private static WebDriver getCurrentBrowser() {
        return b.getCurrentWebDriver();
    }

    @RobotKeyword("Click to First Item from List Items by Locator.")
    @ArgumentNames({"locator", "childLocator=NONE", "message=NONE"})
    public void clickToFirstItem(String locator, String... params) {
        String childLocator = robot.getParamsValue(params, 0, "");
        String message = robot.getParamsValue(params, 1, "");
        List<WebElement> elements = getCurrentBrowser().findElements(By.xpath(locator));
        if (elements.isEmpty()) {
            if (message.isEmpty()) {
                message = String.format("The Element was not found by locator '%s' and child locator '%s'.",
                        locator, childLocator);
            }
            throw new SeleniumLibraryNonFatalException(message);
        }
        WebElement element = elements.get(0);
        if (!childLocator.isEmpty()) {
            element.findElements(By.xpath(childLocator)).get(0).click();
        } else {
            element.click();
        }
    }
}
