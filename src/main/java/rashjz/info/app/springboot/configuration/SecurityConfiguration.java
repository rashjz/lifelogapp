package rashjz.info.app.springboot.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.csrf.CsrfFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.filter.CharacterEncodingFilter;

import javax.sql.DataSource;


@Configuration
@EnableWebSecurity
@EnableTransactionManagement
@PropertySource("classpath:application.properties")
@ComponentScan(basePackages = "rashjz.info.app.springboot")
@EnableJpaRepositories(basePackages = "rashjz.info.app.springboot")
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
	@Autowired
	private Environment environment;

	@Value("${spring.queries.users-query}")
	private String usersQuery;
	
	@Value("${spring.queries.roles-query}")
	private String rolesQuery;

	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
		return bCryptPasswordEncoder;
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
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.
			jdbcAuthentication()
				.usersByUsernameQuery(usersQuery)
				.authoritiesByUsernameQuery(rolesQuery)
				.dataSource(dataSource())
				.passwordEncoder(passwordEncoder());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
//		CharacterEncodingFilter filter = new CharacterEncodingFilter();
//		filter.setEncoding("UTF-8");
//		filter.setForceEncoding(true);
//		http.addFilterBefore(filter,CsrfFilter.class);
//		//rest of your code
		http.
			authorizeRequests()
				.antMatchers("/").permitAll()
				.antMatchers("/login").permitAll()
				.antMatchers("/about").permitAll()
				.antMatchers("/contact").permitAll()
				.antMatchers("/content").permitAll()
				.antMatchers("/view/**").permitAll()
				.antMatchers("/apicontent/**").permitAll()
//				.antMatchers("/admincontent").permitAll()
//				.antMatchers("/apiuser/**").permitAll()
				.antMatchers("/task").permitAll()
				.antMatchers("/register").permitAll()
				.antMatchers("/registration").permitAll()
				.antMatchers("/admincontent").hasAuthority("USER").anyRequest()
				.authenticated().and().csrf().disable().formLogin()
				.loginPage("/login").failureUrl("/login?error=true")
				.defaultSuccessUrl("/")
				.usernameParameter("email")
				.passwordParameter("password")
				.and().logout()
				.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
				.logoutSuccessUrl("/").and().exceptionHandling()
				.accessDeniedPage("/access-denied")
//				.and()
//				.csrf().disable();
//				.csrfTokenRepository(CookieCsrfTokenRepository.withHttpOnlyFalse());
		;
	}
	
	@Override
	public void configure(WebSecurity web) throws Exception {
	    web
	       .ignoring()
	       .antMatchers(
	       		"/resources/**",
				   "/uploads/**",
				   "/static/**",
				   "/css/**",
				   "/js/**",
				   "/images/**",
				   "/webjars/**",
				   "/tasks/**",
				   "/contentTypes");
	}


}
