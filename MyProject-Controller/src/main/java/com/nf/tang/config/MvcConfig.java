package com.nf.tang.config;

import com.nf.tang.interceptor.FirstInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan({"com.nf.tang.controller","com.nf.tang.interceptor"})
@EnableWebMvc
public class MvcConfig implements WebMvcConfigurer{
    @Bean
    public InternalResourceViewResolver viewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setSuffix(".jsp");
        viewResolver.setPrefix("/WEB-INF/views/");
        return viewResolver;
    }

    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addFormatter(new DateFormatter("yyyy-MM-dd"));
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        InterceptorRegistration interceptorRegistry = registry.addInterceptor(new FirstInterceptor());
        interceptorRegistry.addPathPatterns("/**");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        ResourceHandlerRegistration registration
                = registry.addResourceHandler("/common/**");
        registration.addResourceLocations("classpath:/common/");
    }
}
