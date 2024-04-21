package isp.lab8.airways;

import java.util.Comparator;

public class CompareIndex implements Comparator<Waypoint> {
    @Override
    public int compare(Waypoint waypoint1, Waypoint waypoint2) {
        return Integer.compare(waypoint1.getIndex(), waypoint2.getIndex());
    }

    @Override
    public Comparator<Waypoint> reversed() {
        return Comparator.super.reversed();
    }
}
