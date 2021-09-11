public class LogLevels {
    
    public static String message(String logLine) {
        var result = logLine.split(":");
        return result[1].strip();
    }

    public static String logLevel(String logLine) {
        if (logLine.contains("ERROR")) {
            return "error";
        }
        if (logLine.contains("INFO")) {
            return "info";
        }
        if (logLine.contains("WARNING")) {
            return "warning";
        }

        return null;
    }

    public static String reformat(String logLine) {
        return String.format("%s (%s)", message(logLine), logLevel(logLine));
    }
}
