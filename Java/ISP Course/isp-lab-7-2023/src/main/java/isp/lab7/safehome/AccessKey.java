package isp.lab7.safehome;

import java.util.Objects;

public class AccessKey {
    private String pin;

    public AccessKey(String pin) {
        this.pin = pin;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AccessKey)) return false;
        AccessKey accessKey = (AccessKey) o;
        return Objects.equals(pin, accessKey.pin);
    }

    @Override
    public int hashCode() {
        return Objects.hash(pin);
    }

    @Override
    public String toString() {
        return pin;
    }
}
