package rashjz.info.app.springboot.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
//@CrossOrigin(origins = "http://domain.com", maxAge = 3600)
public class NavigationController {
    public static final Logger logger = LoggerFactory.getLogger(NavigationController.class);

    @GetMapping("/task")
    String home(ModelMap modelMap) {
        modelMap.addAttribute("content", "task");
        return "index";
    }

    @GetMapping("/user")
    String getUser(ModelMap modelMap) {
        modelMap.addAttribute("content", "user.jsp");//attributevalue is th:fragment="user"
        return "index";
    }
    
    @GetMapping({"/","/content"})
    String getContentPage(ModelMap modelMap) {
        modelMap.addAttribute("content", "content.jsp");
        return "index";
    }
    @GetMapping("/admincontent")
    String getAdminContentPage(ModelMap modelMap) {
        modelMap.addAttribute("content", "admincontent.jsp");
        return "index";
    }
    @GetMapping("/about")
    String getAboutPage(ModelMap modelMap) {
        modelMap.addAttribute("content", "about.jsp");
        return "index";
    }
    @GetMapping("/contact")
    String getContactPage(ModelMap modelMap) {
        modelMap.addAttribute("content", "contact.jsp");
        return "index";
    }
    @GetMapping("/view")
    String getViewPage(ModelMap modelMap) {
        modelMap.addAttribute("content", "view.jsp");
        return "view";
    }
}
