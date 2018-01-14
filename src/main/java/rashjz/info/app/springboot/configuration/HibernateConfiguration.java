package rashjz.info.app.springboot.configuration;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;
import java.util.Properties;

/**
 *
 * @author Rashad Javadov
 */
@Configuration
@EnableTransactionManagement
//@ComponentScan({"rashjz.info.app.springboot"})
@PropertySource(value = {"classpath:application.properties"})
public class HibernateConfiguration {

    @Autowired
    private Environment environment;


    @Bean
    public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
        LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
        em.setDataSource(dataSource());
        em.setPackagesToScan(new String[] { "rashjz.info.app.springboot" });

        JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
        em.setJpaVendorAdapter(vendorAdapter);
        em.setJpaProperties(hibernateProperties());
        return em;
    }

    @Bean
    public LocalSessionFactoryBean sessionFactory() {
        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setPackagesToScan(new String[]{"rashjz.info.app.springboot.model"});
        sessionFactory.setHibernateProperties(hibernateProperties());
//        sessionFactory.setNamingStrategy(new ImprovedNamingStrategy());
        return sessionFactory;
    }

    @Bean
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(environment.getRequiredProperty("database.driverClassName"));
        dataSource.setUrl(environment.getRequiredProperty("spring.datasource.url"));
        dataSource.setUsername(environment.getRequiredProperty("spring.datasource.username"));
        dataSource.setPassword(environment.getRequiredProperty("spring.datasource.password"));
        return dataSource;
    }

    private Properties hibernateProperties() {
        Properties properties = new Properties();
        properties.put("hibernate.dialect","org.hibernate.dialect.MySQL5InnoDBDialect");
        properties.put("hibernate.show_sql", environment.getRequiredProperty("spring.jpa.hibernate.show_sql"));
        properties.put("hibernate.format_sql", environment.getRequiredProperty("spring.jpa.hibernate.format_sql"));
        properties.put("current_session_context_class", environment.getRequiredProperty("spring.jpa.hibernate.current_session_context_class"));
        properties.put("hibernate.ejb.naming_strateg", environment.getRequiredProperty("spring.jpa.hibernate.naming-strategy"));
//        properties.put("hibernate.enable_lazy_load_no_trans", "true");
        properties.put("hibernate.hbm2ddl.auto", environment.getRequiredProperty("spring.jpa.hibernate.ddl-auto"));

        properties.put("hibernate.connection.useUnicode", environment.getRequiredProperty("hibernate.connection.useUnicode"));
        properties.put("hibernate.connection.CharSet", environment.getRequiredProperty("hibernate.connection.CharSet"));
        properties.put("hibernate.connection.characterEncoding", environment.getRequiredProperty("hibernate.connection.characterEncoding"));
//        enable second level cache and query cache
//        properties.put("hibernate.cache.region.factory_class", "org.hibernate.cache.ehcache.EhCacheRegionFactory");
//        properties.put("hibernate.cache.region.factory_class", "org.hibernate.cache.ehcache.SingletonEhCacheRegionFactory");
//        properties.put("hibernate.cache.use_second_level_cache", "false");
//        properties.put("hibernate.cache.use_query_cache", "true");
        return properties;
    }

    @Bean
    @Autowired
    public HibernateTransactionManager transactionManager(SessionFactory s) {
        HibernateTransactionManager txManager = new HibernateTransactionManager();
        txManager.setSessionFactory(s);
        return txManager;
    }


//    @Bean
//    public PersistenceExceptionTranslationPostProcessor exceptionTranslation(){
//        return new PersistenceExceptionTranslationPostProcessor();
//    }


}
