import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.*;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import rashjz.info.app.springboot.configuration.WebMvcConfig;
import rashjz.info.app.springboot.model.Role;
import rashjz.info.app.springboot.model.User;
import rashjz.info.app.springboot.repository.ContentRepository;
import rashjz.info.app.springboot.repository.RoleRepository;
import rashjz.info.app.springboot.repository.UserRepository;
import rashjz.info.app.springboot.service.ContentService;

import java.util.HashSet;
import java.util.Set;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;

/**
 * Created by rasha_000 on 11/26/2017.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes=WebMvcConfig.class)
@WebAppConfiguration
public class SpringTestLifeLog {

    @Mock
    private ContentRepository contentRepository;
    @Mock
    private RoleRepository roleRepository;
    @Mock
    private UserRepository userRepository;

//    @InjectMocks
//    private ContentService contentService;

    @Before
    public void setupMock() {
        MockitoAnnotations.initMocks(this);
    }
    @Test
    public void testShowResult() throws Exception {
        Set<Role> roles= new HashSet<>();
//        Role role=new Role();
//        role.setRole("ROLE_USER");
//        role.setId(2);
//        assertEquals(1, role.getId());
        Role role=roleRepository.getByKey(1);

        roles.add(role);
        User user=new User();
        user.setActive(1);
//        user.setId(1);
        user.setRoles(roles);
        user.setEmail("rashad@com.az");
        user.setName("rashad");
        user.setPassword("123");
        assertNotEquals(null, userRepository);
        userRepository.persist(user);
        assertEquals(1, user.getId());

//        Mockito.when(contentRepository.getByKey(1)).thenReturn(null);

//        assertEquals("Test", myService.showResult());
    }
}
