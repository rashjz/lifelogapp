import org.hibernate.SessionFactory;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.Spy;
import org.mockito.runners.MockitoJUnitRunner;
import org.mockito.stubbing.Answer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.util.ReflectionTestUtils;
import rashjz.info.app.springboot.configuration.HibernateConfiguration;
import rashjz.info.app.springboot.configuration.WebMvcConfig;
import rashjz.info.app.springboot.model.ContentType;
import rashjz.info.app.springboot.repository.ContentTypeRepository;

import static org.mockito.Mockito.*;
import static org.mockito.Mockito.when;

/**
 * Created by Rashad on 1/14/2018.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = HibernateConfiguration.class)
public class HibernateConfigurationTest {


    @Spy
    SessionFactory sessionFactory;

    @Spy
    @InjectMocks
    ContentTypeRepository contentTypeRepository = new ContentTypeRepository();

    @Test
    public void testListOfContentTypeRepositories() throws Exception {
        Assert.assertNotNull(sessionFactory.openSession());
        Assert.assertNotNull(contentTypeRepository);
        when(contentTypeRepository.getSession()).then((Answer<org.hibernate.Session>) sessionFactory.openSession());
        Assert.assertNotNull(contentTypeRepository);
        System.out.println(sessionFactory.getCurrentSession());
//        ContentType contentType = contentTypeRepository.getByKey(1);
//        Assert.assertEquals(1, contentType.getId());
    }
}
