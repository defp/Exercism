import java.util.ArrayList;

class SumOfMultiples {
    int number;
    int[] set;
    
    SumOfMultiples(int number, int[] set) {
        this.number = number;
        this.set = set;
    }

    int getSum() {
        ArrayList<Integer> multiples = new ArrayList<>();
        for(int setNumber : set) {
            if (setNumber > 0) {
                for (int i = 1; i * setNumber < number; i++) {
                    if (!multiples.contains(i * setNumber)) {
                        multiples.add(i * setNumber);
                    }
                }
            }
        }
        return multiples.stream().mapToInt(Integer::intValue).sum();
    }
}
