package net.wanho.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.TagSupport;

import com.github.pagehelper.PageInfo;

/**
 * 
 * <分页标签 >
 * @author zj  
 * @version [V1.0.0,2017-4-14]
 */
/**
 * @author think
 *
 */
public class PageTag extends TagSupport {
	private static final long serialVersionUID = -2642907859641024483L;
	private String url;
	private PageInfo pageInfo;

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public PageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}
	
	private PageContext pageContext;
	@Override
	public void setPageContext(PageContext pageContext) {
		this.pageContext=pageContext;
	}
	
	@Override
	public int doStartTag() throws JspException {
		JspWriter out = pageContext.getOut();
		try {
			out.println("<script type='text/javascript'> $(function(){$('#pageNum').change(function(){var val=$(this).val();val=$.trim(val);var flag=false;var reg=/^\\d+$/g;var pageNum=0;if(reg.test(val)){pageNum=parseInt(val);if(pageNum>=1&&pageNum<=parseInt('"+pageInfo.getPages()+"')){flag=true}}if(!flag){alert('输入的不是合法的页码.');$(this).val('');return}var href='"+url+"&pageNo='+pageNum+'&'+$(':hidden').serialize();window.location.href=href});$('a.pageNo').each(function(){this.onclick=function(){var serializeVal=$(':hidden').serialize();var href=this.href+'&'+serializeVal;window.location.href=href;return false}})});</script>");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return super.doStartTag();
	}
	@Override
	public int doEndTag() throws JspException {
		JspWriter out = pageContext.getOut();
		int begin=-1;
		int end=-1;
		try {
			out.println("<br/>共 "+pageInfo.getPages()+" 页 &nbsp;&nbsp; 当前1第 "+pageInfo.getPageNum()+" 页 &nbsp;&nbsp;");
			if(pageInfo.isHasPreviousPage()){
				out.println("<a class='pageNo' href='"+url+"&pageNo=1'>首页</a>&nbsp;&nbsp;<a class='pageNo' href='"+url+"&pageNo="+pageInfo.getPrePage()+"'>上一页</a>&nbsp;&nbsp;");
			}
			//计算begin、end
			//如果总页数不足10页，那么把所有的页数都显示出来！
			if(pageInfo.getPages() <= 10 ){
				begin=1;
				end=pageInfo.getPages();
			}else{
				//当总页数>10时，通过公式计算出begin和end
				begin=pageInfo.getPageNum()-5;
				end=pageInfo.getPageNum()+4;
				//头溢出
				if(begin < 1 ){
					begin=1;
					end=10;
				}
				//尾溢出
				if(end > pageInfo.getTotal()){
					begin=(int) (pageInfo.getTotal()-9);
					end=(int) pageInfo.getTotal();
				}
			}
			//循环遍历页码列表
			for(int i=begin;i<=end;i++){
				if(i==pageInfo.getPageNum()){
					out.println("["+i+"]");
				}else{
					out.println("<a class='pageNo' href='"+url+"&pageNo="+i+"'>["+i+"]</a>");
				}
			}
			
			if(pageInfo.isHasNextPage()){
				out.println("<a class='pageNo' href='"+url+"&pageNo="+pageInfo.getNextPage()+"'>下一页</a>&nbsp;&nbsp;<a class='pageNo' href='"+url+"&pageNo="+pageInfo.getPages()+"'>末页</a>&nbsp;&nbsp;");
			}
			out.println("转到<input type='text' size='1' id='pageNum' /> 页");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return super.doEndTag();
	}

	@Override
	public void release() {
		url = null;
		pageInfo = null;
		super.release();
	}

}
