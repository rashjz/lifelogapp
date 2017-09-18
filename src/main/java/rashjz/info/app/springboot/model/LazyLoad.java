package rashjz.info.app.springboot.model;

import java.util.List;

/**
 * Created by rasha_000 on 9/18/2017.
 */
public class LazyLoad {
    public int totalItems;
    List<Content> posts;

    public LazyLoad() {
    }

    public int getTotalItems() {
        return totalItems;
    }

    public void setTotalItems(int totalItems) {
        this.totalItems = totalItems;
    }

    public List<Content> getPosts() {
        return posts;
    }

    public void setPosts(List<Content> posts) {
        this.posts = posts;
    }

    @Override
    public String toString() {
        return "LazyLoad{" +
                "totalItems=" + totalItems +
                ", posts=" + posts +
                '}';
    }
}
