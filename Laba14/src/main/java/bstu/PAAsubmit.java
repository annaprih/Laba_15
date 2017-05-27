package bstu;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

/**
 * Created by Anna on 21.05.2017.
 */
public class PAAsubmit extends TagSupport {

    public int doStartTag() throws JspException {
        JspWriter out = pageContext.getOut();
        try {
            out.print("<input type=\"submit\" value=\"OK\"><br/>"
                    + "<input type=\"reset\" value=\"Cancel\"><br/>");
        } catch (IOException e) {
            System.out.println("bstu.PAAsubmit: " + e);
        }
        return EVAL_BODY_INCLUDE;
    }
}
