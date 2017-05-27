package bstu;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

/**
 * Created by Anna on 21.05.2017.
 */
public class PAALabledTextField extends TagSupport {

    public String value = "";
    public String label = "";
    public String name = "";

    public void setLabel(String label) {
        this.label = label;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getLabel() {
        return label;
    }

    public String getName() {
        return name;
    }

    public String getValue() {
        return value;
    }


    public int doStartTag() throws JspException {
        JspWriter out = pageContext.getOut();
        try {
            out.print("<label>" + label + "</label>"
                    + "<input name =\"" + name + "\" type = \"text\""
                    + "value =\""+value+"\" />");
        } catch (IOException e) {
            System.out.println("bstu.PAALabledTextField: " + e);
        }
        return SKIP_BODY;
    }

}
