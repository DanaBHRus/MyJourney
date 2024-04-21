package isp.lab8.airways;

import com.fasterxml.jackson.databind.ObjectMapper;
import examples.files.FileReadUtil;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class JsonFile {

    private static String osDelimiter() {
        if (System.getProperty("os.name").startsWith("Windows"))
            return "\\";
        else return "/";
    }

    private static String formatOption(String... option) {
        String opt = "-";
        if (option.length > 0) opt = option[0];
        if (opt.equals("o")) opt = "overwrite";
        else if (opt.equals("r")) opt = "reverse";
        return opt;
    }

    public static void write(Route route, String workingFolder, String... option) throws IOException, RouteAlreadyExists, CantDeleteFile {
        String delimiter = osDelimiter();
        workingFolder = workingFolder + delimiter + route.getName();
        File folder = new File(workingFolder);
        File[] listOfFiles = folder.listFiles();
        ObjectMapper objectMapper = new ObjectMapper();
        List<Waypoint> waypoints = route.getWaypointList();
        String opt = formatOption(option);

        if (opt.equals("overwrite")) {
            if (listOfFiles != null)
                for (File filename : listOfFiles)
                    if (!filename.delete())
                        throw new CantDeleteFile("Error deleting" + filename);
        } else if (folder.exists())
            throw new RouteAlreadyExists("Route already exists");
        if (folder.mkdir())
            System.out.println("New folder created");
        for (Waypoint waypoint : waypoints)
            objectMapper.writeValue(new FileWriter(workingFolder + delimiter + waypoint.getName() + ".json"), waypoint);
    }

    public static Route read(String routeName, String workingFolder, String... option) throws IOException, NoFileFound {
        String delimiter = osDelimiter();
        workingFolder = workingFolder + delimiter + routeName;
        File folder = new File(workingFolder);
        File[] listOfFiles = folder.listFiles();
        ObjectMapper objectMapper = new ObjectMapper();
        List<Waypoint> waypoints = new ArrayList<>();
        String opt = formatOption(option);
        String jsonContent;

        if (listOfFiles == null)
            throw new NoFileFound("Route not found");
        for (File filename : listOfFiles) {
            jsonContent = (String.join("\n", FileReadUtil.readAllFileLines(filename.toString())));
            waypoints.add(objectMapper.readValue(jsonContent, Waypoint.class));
        }
        if (opt.equals("reverse")) {
            waypoints.sort(new CompareIndex().reversed());
            routeName = routeName + " (R)";
        } else waypoints.sort(new CompareIndex());

        return new Route(routeName, waypoints);

    }
}
