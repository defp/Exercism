import java.util.List;

class SqueakyClean {
    static String clean(String identifier) {

        var result = new StringBuffer();
        var strList = identifier.split("");
        for (int i = 0; i < strList.length; i++) {
            var str = strList[i];
            if (str.equals(" ")) {
                result.append("_");
            } else if (str.equals("\0")) {
                result.append("CTRL");
            } else {
                result.append(str);
            }
        }

        return result.toString();
    }
}
