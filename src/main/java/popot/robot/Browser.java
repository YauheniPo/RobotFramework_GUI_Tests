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
                WebDriverManager.getInstance(DriverManagerType.valueOf(browser.toUpperCase())).setup();
            }
        }
    }
}
