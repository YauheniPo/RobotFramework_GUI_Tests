package popot.robot.keyword;

import com.github.markusbernhardt.seleniumlibrary.SeleniumLibrary;
import com.github.markusbernhardt.seleniumlibrary.keywords.BrowserManagement;
import com.github.markusbernhardt.seleniumlibrary.keywords.Robot;
import lombok.Getter;
import lombok.extern.log4j.Log4j2;
import org.apache.commons.lang3.exception.ExceptionUtils;
import org.openqa.selenium.WebDriver;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import java.lang.reflect.Field;

@Log4j2
public class CustomRobotElement {

    private static SeleniumLibrary s;
    private static BrowserManagement b;
    @Getter private Robot robot = new Robot();

    public CustomRobotElement() throws NoSuchFieldException, IllegalAccessException {
        try {
            CustomRobotElement.s = getLibraryInstance();
        } catch (javax.script.ScriptException e) {
            log.fatal(ExceptionUtils.getStackTrace(e));
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

    static WebDriver getCurrentBrowser() {
        return b.getCurrentWebDriver();
    }
}
