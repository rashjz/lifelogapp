package rashjz.info.app.springboot.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import rashjz.info.app.springboot.model.Content;
import rashjz.info.app.springboot.model.LazyLoad;
import rashjz.info.app.springboot.service.ContentService;

import java.nio.charset.Charset;

/**
 * Created by Rashad Javadov
 */
@RestController
@RequestMapping("/apicontent")
public class ContentRestController {

    public static final Logger logger = LoggerFactory.getLogger(ContentRestController.class);

    @Autowired
    ContentService contentService;


    @GetMapping(value = "/contents")
    public @ResponseBody
    LazyLoad listAllContents(@RequestParam("searchTerm") String searchTerm,
                             @RequestParam("page") Integer page,
                             @RequestParam("size") Integer size) {
        //http://localhost:8080/apicontent/contents?searchTerm=&page=0&size=10
        logger.info("listAllContents lazy loading searchTerm : " + searchTerm + " page  " + page + " size : " + size);
        Pageable pageable = new PageRequest(page, size, null);
        if (String.valueOf(searchTerm).isEmpty()) {
            searchTerm = "%";
        } else {
            searchTerm = searchTerm + "%";
        }
        LazyLoad load = contentService.findByTitleLike(searchTerm, pageable);
        return load;
    }


    @PostMapping(value = "/contentupdate/",
            produces = MediaType.APPLICATION_JSON_VALUE,
            consumes = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody
    Content addContent(@RequestBody Content content) {
        try {
//            logger.info("content save method invoked ş "+content.getTitle());
            System.out.println("content save method invoked ş "+content.getTitle());
            contentService.saveContent(content);
        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error while saving data "+e.getMessage());
            content.setNote(e.toString());
        }

        return content;
    }

    @DeleteMapping(value = "/contentdelete/{id}")
    public void deleteContent(@PathVariable(value = "id") long id) {
       try {
           contentService.deleteContentById(Long.valueOf(id));
       }catch (Exception e){
           e.printStackTrace();
       }
    }

    @GetMapping(value = "/content/{id}")
    public @ResponseBody
    Content getContentById(@PathVariable Long id) {
        logger.info("Getting Content for id: " + id);
        Content content = contentService.findById(id);
        return content;
    }
}
