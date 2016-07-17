package net.testaholic.acme.controller;

import net.testaholic.acme.domain.Feedback;
import net.testaholic.acme.util.EmailValidator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class HomeController {

    private static final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping("/contact")
    public ModelAndView getHomePage() {
        LOGGER.debug("Getting home page");
        return new ModelAndView("contact");
    }

    @ModelAttribute("updater")
    @RequestMapping(value = "/contact", method = RequestMethod.POST)
    public ModelAndView postHomePage(@Valid @ModelAttribute("feedbackForm") Feedback form, BindingResult bindingResult) {
        return new ModelAndView("contact");
    }

}
