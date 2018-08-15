package finalproj.beautybar.entity;

import java.sql.Timestamp;
import java.util.Objects;

public class Booking extends Entity{

    private Client client;
    private Timestamp timestamp;
    private WorkerService workerService;
    private Integer duration;

    public Booking(){}

    public Booking(Client client, Timestamp timestamp, WorkerService workerService, Integer duration) {
        this.client = client;
        this.timestamp = timestamp;
        this.workerService = workerService;
        this.duration = duration;
    }

    public Booking(Long id, Client client, Timestamp timestamp, WorkerService workerService, Integer duration) {
        super(id);
        this.client = client;
        this.timestamp = timestamp;
        this.workerService = workerService;
        this.duration = duration;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public Timestamp getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Timestamp timestamp) {
        this.timestamp = timestamp;
    }

    public WorkerService getWorkerService() {
        return workerService;
    }

    public void setWorkerService(WorkerService workerService) {
        this.workerService = workerService;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Booking)) return false;
        Booking booking = (Booking) o;
        return Objects.equals(client, booking.client) &&
                Objects.equals(timestamp, booking.timestamp) &&
                Objects.equals(workerService, booking.workerService) &&
                Objects.equals(duration, booking.duration);
    }

    @Override
    public int hashCode() {
        return Objects.hash(client, timestamp, workerService, duration);
    }

    @Override
    public String toString() {
        return "Booking{" +
                "client=" + client +
                ", timestamp=" + timestamp +
                ", workerService=" + workerService +
                ", duration=" + duration +
                '}';
    }
}
