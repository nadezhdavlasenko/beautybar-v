package finalproj.beautybar.entity;

import java.util.Objects;

public class Service extends Entity {

    private String name;
    private Integer duration;
    private ServiceType serviceType;

    public Service(){}

    public Service(String name, Integer duration, ServiceType serviceType) {
        this.name = name;
        this.duration = duration;
        this.serviceType = serviceType;
    }

    public Service(Long id, String name, Integer duration, ServiceType serviceType) {
        super(id);
        this.name = name;
        this.duration = duration;
        this.serviceType = serviceType;
    }

    public String getName() {

        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public ServiceType getServiceType() {
        return serviceType;
    }

    public void setServiceType(ServiceType serviceType) {
        this.serviceType = serviceType;
    }

    @Override
    public String toString() {
        return "Service{" +
                "name='" + name + '\'' +
                ", duration=" + duration +
                ", serviceType=" + serviceType +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Service service = (Service) o;
        return Objects.equals(name, service.name) &&
                Objects.equals(duration, service.duration);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, duration);
    }
}
