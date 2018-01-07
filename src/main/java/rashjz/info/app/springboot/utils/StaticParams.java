package rashjz.info.app.springboot.utils;


/**
 * @author Mobby
 */
public class StaticParams {

    public static String WINDOWS_LOCATION = "E://uploads/";  //fileI/ other location just D
    public static String LINUX_LOCATION = "/home/rashad/uploads/lifelog/";  //fileI/ other location just D
    public static String OS = "Windows 10";

    public static String getUploadLocation() {
        if ((OS).equalsIgnoreCase(System.getProperty("os.name"))) {
            return WINDOWS_LOCATION;
        } else {
            return LINUX_LOCATION;
        }

    }

}