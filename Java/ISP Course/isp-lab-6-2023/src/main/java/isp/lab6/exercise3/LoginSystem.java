package isp.lab6.exercise3;

import java.util.HashSet;
import java.util.Set;

public class LoginSystem {
    private Set<User> users = new HashSet<>();

    private Set<User> loggedUsers = new HashSet<>();
    private OnlineStore store = new OnlineStore();

    public void register(String username, String password) {
        if (users.add(new User(username, password)))
            System.out.println("Registered with success.");
        else System.out.println("Change username or password");
    }

    public boolean login(String username, String password) {
        User user = new User(username, password);
        for (User search : users)
            if (search.equals(user)) {
                loggedUsers.add(user);
                store.addSession(username);
                return true;
            }
        return false;
    }

    public boolean logout(String username) {
        for (User search : users)
            if (search.getUsername().equals(username)) {
                loggedUsers.remove(search);
                store.removeSession(username);
                return true;
            }
        return false;
    }
}
