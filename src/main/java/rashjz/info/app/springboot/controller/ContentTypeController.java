package rashjz.info.app.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import rashjz.info.app.springboot.model.ContentType;
import rashjz.info.app.springboot.repository.ContentTypeRepository;

import java.util.List;

/**
 * Created by rasha_000 on 9/13/2017.
 */
@RestController
public class ContentTypeController {

    @Autowired
    ContentTypeRepository typeRepository;

    @GetMapping(value = "/contentTypes")
    public @ResponseBody
    List<ContentType> getTestMethod() {
        return typeRepository.findAll();
    }
}
