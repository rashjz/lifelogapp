package rashjz.info.app.springboot.configuration;

import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

/**
 *
 * @author Rashad Javadov
 */
public class SpringSecurityInitializer extends AbstractSecurityWebApplicationInitializer {
    public SpringSecurityInitializer() {
        super(SecurityConfiguration.class);
    }
}
