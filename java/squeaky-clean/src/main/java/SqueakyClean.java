class SqueakyClean {
    static String clean(String identifier) {
        return identifier.replace(" ", "_").
                replaceAll("\0|\1", "CTRL").replaceAll("β|ι|ε|γ|τ", "");
    }
}
