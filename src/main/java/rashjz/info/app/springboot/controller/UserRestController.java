package rashjz.info.app.springboot.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import rashjz.info.app.springboot.model.Content;
import rashjz.info.app.springboot.model.UploadResponse;
import rashjz.info.app.springboot.model.User;
import rashjz.info.app.springboot.service.UserService;
import rashjz.info.app.springboot.utils.FileWriterUtils;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/apiuser")
public class UserRestController {


    @Autowired
    UserService userService;


    @GetMapping(value = "/user/")
    public ResponseEntity<List<User>> listAllUsers() {
        List<User> users = userService.findAllUsers();
        if (users.isEmpty()) {
            return new ResponseEntity(HttpStatus.NO_CONTENT);
            // You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<User>>(users, HttpStatus.OK);
    }


    @GetMapping(value = "/user/{id}")
    public @ResponseBody
    User getUser(@PathVariable("id") long id) {
        User user = userService.findById(Long.valueOf(id).intValue());
        return user;
    }


    @PostMapping(value = "/upload/")
    public @ResponseBody
    Content doStuff(@RequestParam("file") MultipartFile file,
                    @RequestParam(value = "id") String id) {
        String fileName = "";
        //@RequestPart("json") @Valid MyDto dto,
        try {
            FileWriterUtils.writeToDir(file);
        } catch (IOException e) {
            e.printStackTrace();
        }
        Content content = new Content();
        content.setImagePath("/uploads/" + fileName);
        return content;
    }


    @PreAuthorize("permitAll()")
    @PostMapping(value = "/uploadfroala/")
    public @ResponseBody
    UploadResponse froalaUpload(@RequestParam("file") MultipartFile file) {
        String fileName = "";

        try {
            FileWriterUtils.writeToDir(file);
        } catch (IOException e) {
            e.printStackTrace();
        }
        fileName = "http://localhost:8082/uploads/" + fileName;
        UploadResponse response = new UploadResponse(fileName);
        return response;
    }

}
