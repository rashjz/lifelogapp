package rashjz.info.app.springboot.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.*;
import rashjz.info.app.springboot.model.Content;
import rashjz.info.app.springboot.model.LazyLoad;
import rashjz.info.app.springboot.service.ContentService;

import java.util.Iterator;
import java.util.List;

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
         logger.info("searchTerm ::::: " + searchTerm + " page ::::: " + page + " size ::::: " + size);
        Pageable pageable = new PageRequest(page, size, null);
        if (String.valueOf(searchTerm).isEmpty()) {
            searchTerm = "%";
        } else {
            searchTerm = searchTerm + "%";
        }
        LazyLoad load = contentService.findByTitleLike(searchTerm, pageable);
        return load;
    }


    @PostMapping(value = "/contentupdate/")
    public @ResponseBody
    Content addContent(@RequestBody Content content) {
        contentService.saveContent(content);
        return content;
    }

    @DeleteMapping(value = "/contentdelete/{id}")
    public void deleteContent(@PathVariable(value = "id") long  id) {
        contentService.deleteContentById(Long.valueOf(id));
    }


}
