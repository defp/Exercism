
class BirdWatcher {
    private final int[] birdsPerDay;

    public BirdWatcher(int[] birdsPerDay) {
        this.birdsPerDay = birdsPerDay.clone();
    }

    public int[] getLastWeek() {
        return this.birdsPerDay;
    }

    public int getToday() {
        if (this.birdsPerDay.length == 0) {
            return 0;
        }
        return this.birdsPerDay[this.birdsPerDay.length - 1];
    }

    public void incrementTodaysCount() {
        var count = this.getToday() + 1;
        this.birdsPerDay[this.birdsPerDay.length -1] = count;
    }

    public boolean hasDayWithoutBirds() {
        for(var count: this.birdsPerDay) {
            if (count == 0) {
                return true;
            }
        }
        return false;
    }

    public int getCountForFirstDays(int numberOfDays) {
        if (numberOfDays > this.birdsPerDay.length) {
            numberOfDays = this.birdsPerDay.length;
        }

        var count = 0;
        for (var i = 0; i < numberOfDays; i++) {
            count += this.birdsPerDay[i];
        }
        return count;
    }

    public int getBusyDays() {
        var count = 0;
        for (var countPerDay: this.birdsPerDay) {
            if (countPerDay >= 5) {
                count++;
            }
        }
        return count;
    }
}
