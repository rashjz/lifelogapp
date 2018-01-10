package rashjz.info.app.springboot.model;

public class UploadResponse {
    private String location;

    public UploadResponse() {
    }

    public UploadResponse(String s) {
        this.location = s;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

}
