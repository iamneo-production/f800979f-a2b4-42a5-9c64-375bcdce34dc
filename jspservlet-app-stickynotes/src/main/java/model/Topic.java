package model;

public class Topic{
     private int id;
     private String TopicName;
     private String topicDescription;
     private String date;
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getTopicName() {
        return TopicName;
    }
    public void setTopicName(String topicName) {
        TopicName = topicName;
    }
    public String getTopicDescription() {
        return topicDescription;
    }
    public void setTopicDescription(String topicDescription) {
        this.topicDescription = topicDescription;
    }
    public String getDate() {
        return date;
    }
    public void setDate(String date) {
        this.date = date;
    }
    @Override
    public String toString() {
        return "Topic [TopicName=" + TopicName + ", date=" + date + ", id=" + id + ", topicDescription="
                + topicDescription + "]";
    }
     
}