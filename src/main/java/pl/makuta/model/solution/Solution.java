package pl.makuta.model.solution;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Solution {
    private int id;
    private String created;
    private String updated;
    private String description;
    private int exerciseId;
    private int userId;

    public Solution() {
        setCreated();
    }

    public Solution(String description, int exerciseId, int usersId) {
        setCreated();
        this.description = description;
        this.exerciseId = exerciseId;
        this.userId = usersId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated() {
        LocalDateTime createdDateTime = LocalDateTime.now();
        DateTimeFormatter pattern = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        this.created = createdDateTime.format(pattern);
    }

    public void setCreated(String created){
        this.created = created;
    }

    public String getUpdated() {
        return updated;
    }

    public void setUpdated() {
        LocalDateTime updatedDateTime = LocalDateTime.now();
        DateTimeFormatter pattern = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        this.updated = updatedDateTime.format(pattern);
    }

    public void setUpadated(String upadated){
        this.updated = upadated;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getExerciseId() {
        return exerciseId;
    }

    public void setExerciseId(int exerciseId) {
        this.exerciseId = exerciseId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Solution{" +
                "id=" + id +
                ", created=" + created +
                ", upadate=" + updated +
                ", description='" + description + '\'' +
                ", exerciseid=" + exerciseId +
                ", usersid=" + userId +
                '}';
    }
}
