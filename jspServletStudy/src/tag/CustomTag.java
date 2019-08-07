package tag;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class CustomTag extends SimpleTagSupport{
    
    private String color;
    private int iterNum;
    

    //doTag()�� �������̵� �Ͽ� Ŀ���� �±� ó�� ������ �����Ѵ�.
    @Override
    public void doTag() throws JspException, IOException {
        //JspContext�� �� �±׸� ����� JSP �������� ���� ������ ��� �ִ�.  
        JspContext context = this.getJspContext();
        
        //Jsp �������� ����� �������� ����� ��½�Ʈ���� ��´�.
        //JSP�� out ��ü�� ����.
        JspWriter out = context.getOut();
        
        //Ŀ���� �±��� ��ü�� ���� StringWriter
        StringWriter stringWriter = new StringWriter();
        
        //�±׸� ����Ҷ� ������ �Ӽ�����
        String color = this.getColor();
        int iterNum = this.getIterNum();
        
        //invoke()�� ����Ǹ� StringWriter�� ��ü �ؽ�Ʈ�� ����.
        getJspBody().invoke(stringWriter);
        String bodyText = stringWriter.toString();
        
        out.print("<span style=\" background-color: "+ color + "; \">");
        
        for(int i=0; i < iterNum; i++ ) {
            //out���� ���� ���
            out.print("��" + bodyText + "��");
        }
        
        out.print("</span>");
    }
    
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
}
