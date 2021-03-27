package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class F404Controller {

    @RequestMapping("/404")
    public String show404Page() {

        return "errors/exception-page";
    }

}
