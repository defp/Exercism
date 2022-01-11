import java.util.Arrays;
import java.util.HashSet;

class Scrabble {
    private int score;

    private final static HashSet score1 = new HashSet(Arrays.asList("aeioulnrst".split("")));
    private final static HashSet score2 = new HashSet(Arrays.asList("dg".split("")));
    private final static HashSet score3 = new HashSet(Arrays.asList("bcmp".split("")));
    private final static HashSet score4 = new HashSet(Arrays.asList("fhvwy".split("")));
    private final static HashSet score5 = new HashSet(Arrays.asList("k".split("")));
    private final static HashSet score8 = new HashSet(Arrays.asList("jx".split("")));
    private final static HashSet score10 = new HashSet(Arrays.asList("qz".split("")));

    Scrabble(String word) {
        var words = Arrays.stream(word.split("")).map(w -> w.toLowerCase()).toList();
        words.forEach(w -> {
            if (score1.contains(w)) {
                this.score += 1;
            }
            if (score2.contains(w)) {
                this.score += 2;
            }
            if (score3.contains(w)) {
                this.score += 3;
            }
            if (score4.contains(w)) {
                this.score += 4;
            }
            if (score5.contains(w)) {
                this.score += 5;
            }
            if (score8.contains(w)) {
                this.score += 8;
            }
            if (score10.contains(w)) {
                this.score += 10;
            }
        });
    }

    int getScore() {
        return this.score;
    }
}
