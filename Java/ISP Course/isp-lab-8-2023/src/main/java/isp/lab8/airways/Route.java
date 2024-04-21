package isp.lab8.airways;

import lombok.*;

import java.util.List;

@NoArgsConstructor(access = AccessLevel.PUBLIC)
@AllArgsConstructor(access = AccessLevel.PUBLIC)
@ToString
public class Route {
    @Getter
    @Setter
    private String name;
    @Getter
    @Setter
    private List<Waypoint> waypointList;
}
