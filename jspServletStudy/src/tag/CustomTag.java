
package tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class CustomTag extends BodyTagSupport{
    
    private String color;
    private int iterNum;
    
    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getIterNum() {
        return iterNum;
    }

    public void setIterNum(int iterNum) {
        this.iterNum = iterNum;
    }
    
    
    @Override
    public int doStartTag() throws JspException {
        System.out.println("시작 태그");
        return EVAL_BODY_BUFFERED;
    }

    @Override
    public int doAfterBody() throws JspException {
        System.out.println("바디 처리 완료");
        
        String color = this.getColor();
        int iterNum = this.getIterNum();
        
        String body = bodyContent.getString();
        JspWriter out = bodyContent.getEnclosingWriter();
        
        try {
            for(int i=0; i<iterNum; i++) {
                out.print("<span style=\" background-color: "+ color + ";  \">");
                out.print("♥" + body + "♥");
                out.print("</span>");
            }
        } catch (IOException e) {
            throw new JspException(e);
        }
        
        return super.doAfterBody();
    }
    
    @Override
    public int doEndTag() throws JspException {
        System.out.println("끝태그");
        return EVAL_PAGE;
    }
}
