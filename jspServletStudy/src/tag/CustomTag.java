
package tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class CustomTag extends BodyTagSupport {

    @Override
    public int doStartTag() throws JspException {
        System.out.println("시작 태그 처리");
        return EVAL_BODY_INCLUDE;
    }

    @Override
    public int doAfterBody() throws JspException {
        System.out.println("태그 몸체 처리 완료");
        return super.doAfterBody();
    }

    @Override
    public int doEndTag() throws JspException {
        System.out.println("끝태그 처리");
        return EVAL_PAGE;
    }
}
