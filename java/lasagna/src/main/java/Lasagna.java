public class Lasagna {
    public Integer expectedMinutesInOven() {
        return 40;
    }

    public Integer remainingMinutesInOven(Integer minute) {
        return this.expectedMinutesInOven() - minute;
    }

    public Integer preparationTimeInMinutes(Integer minute) {
        return minute * 2;
    }

    public Integer totalTimeInMinutes(Integer a, Integer b) {
        return this.preparationTimeInMinutes(a) + b;
    }
}
