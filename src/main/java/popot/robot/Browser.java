package popot.robot;

import io.github.bonigarcia.wdm.DriverManagerType;
import io.github.bonigarcia.wdm.WebDriverManager;
import lombok.extern.log4j.Log4j2;

@Log4j2
public final class Browser {

    private static Browser instance = null;

    public static void getInstance(String browser) {
        if (instance == null) {
            synchronized (Browser.class) {
                log.info(String.format("Browser Instance for '%s' browser", browser));
                instance = new Browser();
                initWebDriver(browser);
            }
        }
    }

    private static void initWebDriver(String browserName) {
        switch (browserName.toLowerCase()) {
            case "ff":
            case "firefox":
            case "ffheadless":
            case "firefoxheadless":
                WebDriverManager.getInstance(DriverManagerType.FIREFOX).setup();
                break;
            case "ie":
            case "internetexplorer":
                WebDriverManager.getInstance(DriverManagerType.IEXPLORER).setup();
                break;
            case "edge":
                WebDriverManager.getInstance(DriverManagerType.EDGE).setup();
                break;
            case "gc":
            case "chrome":
            case "googlechrome":
            case "gcheadless":
            case "chromeheadless":
            case "googlechromeheadless":
                WebDriverManager.getInstance(DriverManagerType.CHROME).setup();
                break;
        }
    }
}
