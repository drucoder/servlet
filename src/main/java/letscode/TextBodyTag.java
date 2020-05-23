package letscode;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

public class TextBodyTag extends TagSupport {
    private int iterations;
    private int counter;

    @Override
    public int doStartTag() throws JspException {
        counter = 0;

        JspWriter out = pageContext.getOut();

        try {
            out.print("<table border='1'><tbody>");
        } catch (IOException e) {
            throw new JspException(e);
        }

        return EVAL_BODY_INCLUDE;
    }

    @Override
    public int doEndTag() throws JspException {
        JspWriter out = pageContext.getOut();

        try {
            out.print("</tbody></table>");
        } catch (IOException e) {
            throw new JspException(e);
        }

        return EVAL_PAGE;
    }

    @Override
    public int doAfterBody() throws JspException {
        JspWriter out = pageContext.getOut();

        try {
            out.print(String.format("<tr><td colspan='3'>Row number #%d</td></tr>", counter++));
        } catch (IOException e) {
            throw new JspException(e);
        }

        if (counter > iterations) {
            return SKIP_BODY;
        } else {
            return EVAL_BODY_AGAIN;
        }
    }

    public int getIterations() {
        return iterations;
    }

    public void setIterations(int iterations) {
        this.iterations = iterations;
    }
}
