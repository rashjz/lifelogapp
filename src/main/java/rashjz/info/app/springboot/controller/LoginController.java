package rashjz.info.app.springboot.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import rashjz.info.app.springboot.model.Role;
import rashjz.info.app.springboot.model.User;
import rashjz.info.app.springboot.repository.RoleRepository;
import rashjz.info.app.springboot.service.UserService;

import javax.validation.Valid;
import java.util.HashSet;
import java.util.Set;

@Controller
public class LoginController {

    public static final Logger logger = LoggerFactory.getLogger(LoginController.class);

    @Autowired
    private UserService userService;

    @Autowired
    private RoleRepository roleRepository;

    @GetMapping(value = {"/login"})
    public String login(ModelMap modelMap) {
        modelMap.addAttribute("content", "login.jsp");
        return "index";
    }

    @GetMapping("/register")
    public String registration(ModelMap modelMap) {
        modelMap.addAttribute("user", new User());
        modelMap.addAttribute("content", "registration.jsp");
//        modelMap.addAttribute("navbarlocation", "-bottom");
        return "index";
    }

    @PostMapping(value = "/registration")
    public String createNewUser(@RequestParam(value = "email") String email,
                                @RequestParam(value = "name") String name,
                                @RequestParam(value = "lastname") String lastname,
                                @RequestParam(value = "password") String password,
                                ModelMap modelMap) {
        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        user.setLastName(lastname);
        Role role = roleRepository.getByKey(Integer.valueOf(1));
        Set<Role> roles=new HashSet<>();
        roles.add(role);
        user.setRoles(roles);
//        User userExists = userService.findUserByEmail(user.getEmail());

        userService.saveUser(user);

        modelMap.addAttribute("content", "registration.jsp");
        return "index";
    }


}
