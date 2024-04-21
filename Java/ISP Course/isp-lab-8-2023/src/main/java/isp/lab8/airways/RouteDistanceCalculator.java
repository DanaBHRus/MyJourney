package isp.lab8.airways;

import java.util.List;

import static isp.lab8.airways.WaypointDistanceCalculator.calculateDistance;

public class RouteDistanceCalculator {

    public static double totalDistance(Route route) {
        double distance = 0;
        List<Waypoint> w = route.getWaypointList();
        for (int i = 0; i < w.size() - 1; i++)
            distance = distance + calculateDistance(w.get(i).getLatitude(), w.get(i).getLongitude(), w.get(i + 1).getLatitude(), w.get(i + 1).getLongitude());
        return distance;
    }
}
