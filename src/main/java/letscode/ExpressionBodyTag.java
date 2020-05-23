package letscode;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;
import java.io.IOException;
import java.util.Arrays;
import java.util.stream.Collectors;

public class ExpressionBodyTag extends BodyTagSupport {
    @Override
    public int doAfterBody() throws JspException {
        String body = getBodyContent().getString();
        JspWriter writer = getBodyContent().getEnclosingWriter();

        String tableBody = Arrays.stream(
                body.split("\\.")
        ).map(sentence -> {
            String[] parts = sentence.split(" - ");
            return String.format("<tr><td>%s</td><td>%s</td></tr>", parts[0], parts[1]);
        }).collect(Collectors.joining());

        try {
            writer.write("<table>");
            writer.write(tableBody);
            writer.write("</table>");
        } catch (IOException e) {
            throw new JspException(e);
        }

        return EVAL_PAGE;
    }
}
