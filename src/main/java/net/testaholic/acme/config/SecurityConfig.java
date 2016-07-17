package net.testaholic.acme.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true)
@Order(SecurityProperties.ACCESS_OVERRIDE_ORDER)
class SecurityConfig extends WebSecurityConfigurerAdapter {


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests().antMatchers("/*.css").permitAll();
        http.authorizeRequests().antMatchers("/static/**").permitAll();
        http.csrf().ignoringAntMatchers("*");

        http.authorizeRequests()
                .antMatchers("/", "/public/**").permitAll()
                .antMatchers("/", "*").permitAll()
                .antMatchers("/contact").permitAll()
                .antMatchers("*", "*").permitAll()
                .antMatchers("*").permitAll()
                .anyRequest().fullyAuthenticated();
    }

}