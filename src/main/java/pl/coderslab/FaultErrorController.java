package pl.coderslab;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

@Controller
public class FaultErrorController implements ErrorController {

    @Override
    public String getErrorPath() {
        return "/errors/exception-page";
    }
    @RequestMapping("/error")
    public String handleError(HttpServletRequest request) {
        // get error status
        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);

        if (status != null) {
            int statusCode = Integer.parseInt(status.toString());

            // display specific error page
            if (statusCode == HttpStatus.NOT_FOUND.value()) {
                return "errors/404";
            } else if (statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
                return "errors/exception-page";
            } else if (statusCode == HttpStatus.FORBIDDEN.value()) {
                return "errors/403";
            }
        }

        // display generic error
        return "errors/exception-page";
    }
}

