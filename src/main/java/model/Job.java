package model;

public class Job {
    private int id;
    private String title;
    private String company;
    private String location;
    private String description;
    private int postedBy;

    public Job() {}

    public Job(String title, String company, String location, String description, int postedBy) {
        this.title = title;
        this.company = company;
        this.location = location;
        this.description = description;
        this.postedBy = postedBy;
    }

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getCompany() { return company; }
    public void setCompany(String company) { this.company = company; }

    public String getLocation() { return location; }
    public void setLocation(String location) { this.location = location; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public int getPostedBy() { return postedBy; }
    public void setPostedBy(int postedBy) { this.postedBy = postedBy; }
}
