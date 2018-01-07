package rashjz.info.app.springboot.model;

public class UploadResponse {
    private String link;

    public UploadResponse() {
    }

    public UploadResponse(String s) {
        this.link = s;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
