package org.apache.jsp.WEB_002dINF.views.customeraddresses;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class create_jspx extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(5);
    _jspx_dependants.add("/WEB-INF/tags/form/create.tagx");
    _jspx_dependants.add("/WEB-INF/tags/util/panel.tagx");
    _jspx_dependants.add("/WEB-INF/tags/form/fields/input.tagx");
    _jspx_dependants.add("/WEB-INF/tags/form/dependency.tagx");
    _jspx_dependants.add("/WEB-INF/tags/form/fields/reference.tagx");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<div version=\"2.0\">");
      if (_jspx_meth_form_create_0(_jspx_page_context))
        return;
      if (_jspx_meth_form_dependency_0(_jspx_page_context))
        return;
      out.write("</div>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_form_create_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:create
    org.apache.jsp.tag.web.form.create_tagx _jspx_th_form_create_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.form.create_tagx.class) : new org.apache.jsp.tag.web.form.create_tagx();
    _jspx_th_form_create_0.setJspContext(_jspx_page_context);
    _jspx_th_form_create_0.setZ("7wniQJCx51W9jIK1DR1FTwjeQVM=");
    _jspx_th_form_create_0.setRender((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${empty dependencies}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null));
    _jspx_th_form_create_0.setPath("/customeraddresses");
    _jspx_th_form_create_0.setModelAttribute("customerAddress");
    _jspx_th_form_create_0.setId("fc_com_mcel2_domain_CustomerAddress");
    _jspx_th_form_create_0.setJspBody(new create_jspxHelper( 0, _jspx_page_context, _jspx_th_form_create_0, null));
    _jspx_th_form_create_0.doTag();
    return false;
  }

  private boolean _jspx_meth_field_input_0(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  field:input
    org.apache.jsp.tag.web.form.fields.input_tagx _jspx_th_field_input_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.form.fields.input_tagx.class) : new org.apache.jsp.tag.web.form.fields.input_tagx();
    _jspx_th_field_input_0.setJspContext(_jspx_page_context);
    _jspx_th_field_input_0.setParent(_jspx_parent);
    _jspx_th_field_input_0.setZ("rImxTnHx7baJn5Ra556Wzi6AIBw=");
    _jspx_th_field_input_0.setId("c_com_mcel2_domain_CustomerAddress_street");
    _jspx_th_field_input_0.setField("street");
    _jspx_th_field_input_0.doTag();
    return false;
  }

  private boolean _jspx_meth_field_input_1(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  field:input
    org.apache.jsp.tag.web.form.fields.input_tagx _jspx_th_field_input_1 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.form.fields.input_tagx.class) : new org.apache.jsp.tag.web.form.fields.input_tagx();
    _jspx_th_field_input_1.setJspContext(_jspx_page_context);
    _jspx_th_field_input_1.setParent(_jspx_parent);
    _jspx_th_field_input_1.setZ("o33i86eV/0wX0kqjkflVqyZjPWQ=");
    _jspx_th_field_input_1.setId("c_com_mcel2_domain_CustomerAddress_zipCode");
    _jspx_th_field_input_1.setField("zipCode");
    _jspx_th_field_input_1.doTag();
    return false;
  }

  private boolean _jspx_meth_field_input_2(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  field:input
    org.apache.jsp.tag.web.form.fields.input_tagx _jspx_th_field_input_2 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.form.fields.input_tagx.class) : new org.apache.jsp.tag.web.form.fields.input_tagx();
    _jspx_th_field_input_2.setJspContext(_jspx_page_context);
    _jspx_th_field_input_2.setParent(_jspx_parent);
    _jspx_th_field_input_2.setZ("yuW5jrQPXlCKes+32DBjjgExwUQ=");
    _jspx_th_field_input_2.setId("c_com_mcel2_domain_CustomerAddress_addressReferences");
    _jspx_th_field_input_2.setField("addressReferences");
    _jspx_th_field_input_2.doTag();
    return false;
  }

  private boolean _jspx_meth_field_input_3(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  field:input
    org.apache.jsp.tag.web.form.fields.input_tagx _jspx_th_field_input_3 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.form.fields.input_tagx.class) : new org.apache.jsp.tag.web.form.fields.input_tagx();
    _jspx_th_field_input_3.setJspContext(_jspx_page_context);
    _jspx_th_field_input_3.setParent(_jspx_parent);
    _jspx_th_field_input_3.setZ("KhsVTEJRYRPwEA4pLNTAbR99xYU=");
    _jspx_th_field_input_3.setId("c_com_mcel2_domain_CustomerAddress_intNumber");
    _jspx_th_field_input_3.setField("intNumber");
    _jspx_th_field_input_3.doTag();
    return false;
  }

  private boolean _jspx_meth_field_input_4(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  field:input
    org.apache.jsp.tag.web.form.fields.input_tagx _jspx_th_field_input_4 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.form.fields.input_tagx.class) : new org.apache.jsp.tag.web.form.fields.input_tagx();
    _jspx_th_field_input_4.setJspContext(_jspx_page_context);
    _jspx_th_field_input_4.setParent(_jspx_parent);
    _jspx_th_field_input_4.setZ("IudXffzo2YkGpX7vlZO4A0KWacw=");
    _jspx_th_field_input_4.setId("c_com_mcel2_domain_CustomerAddress_extNumber");
    _jspx_th_field_input_4.setField("extNumber");
    _jspx_th_field_input_4.doTag();
    return false;
  }

  private boolean _jspx_meth_field_input_5(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  field:input
    org.apache.jsp.tag.web.form.fields.input_tagx _jspx_th_field_input_5 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.form.fields.input_tagx.class) : new org.apache.jsp.tag.web.form.fields.input_tagx();
    _jspx_th_field_input_5.setJspContext(_jspx_page_context);
    _jspx_th_field_input_5.setParent(_jspx_parent);
    _jspx_th_field_input_5.setZ("DF1aXKr6y/vRWY0FL8pcOvFc5EI=");
    _jspx_th_field_input_5.setId("c_com_mcel2_domain_CustomerAddress_countryState");
    _jspx_th_field_input_5.setField("countryState");
    _jspx_th_field_input_5.doTag();
    return false;
  }

  private boolean _jspx_meth_field_input_6(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  field:input
    org.apache.jsp.tag.web.form.fields.input_tagx _jspx_th_field_input_6 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.form.fields.input_tagx.class) : new org.apache.jsp.tag.web.form.fields.input_tagx();
    _jspx_th_field_input_6.setJspContext(_jspx_page_context);
    _jspx_th_field_input_6.setParent(_jspx_parent);
    _jspx_th_field_input_6.setZ("TxcgIwAaf844rA+XgUhA1VXoBsY=");
    _jspx_th_field_input_6.setId("c_com_mcel2_domain_CustomerAddress_delegacion");
    _jspx_th_field_input_6.setField("delegacion");
    _jspx_th_field_input_6.doTag();
    return false;
  }

  private boolean _jspx_meth_field_input_7(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  field:input
    org.apache.jsp.tag.web.form.fields.input_tagx _jspx_th_field_input_7 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.form.fields.input_tagx.class) : new org.apache.jsp.tag.web.form.fields.input_tagx();
    _jspx_th_field_input_7.setJspContext(_jspx_page_context);
    _jspx_th_field_input_7.setParent(_jspx_parent);
    _jspx_th_field_input_7.setZ("jLcgjaOBJJXaQYhCVLiWt/lTqUk=");
    _jspx_th_field_input_7.setId("c_com_mcel2_domain_CustomerAddress_colony");
    _jspx_th_field_input_7.setField("colony");
    _jspx_th_field_input_7.doTag();
    return false;
  }

  private boolean _jspx_meth_form_dependency_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:dependency
    org.apache.jsp.tag.web.form.dependency_tagx _jspx_th_form_dependency_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.form.dependency_tagx.class) : new org.apache.jsp.tag.web.form.dependency_tagx();
    _jspx_th_form_dependency_0.setJspContext(_jspx_page_context);
    _jspx_th_form_dependency_0.setZ("oxXH42mH8zBRf6JlSkJP9nYcNHw=");
    _jspx_th_form_dependency_0.setRender((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${not empty dependencies}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null));
    _jspx_th_form_dependency_0.setId("d_com_mcel2_domain_CustomerAddress");
    _jspx_th_form_dependency_0.setDependencies((java.util.Collection) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${dependencies}", java.util.Collection.class, (PageContext)_jspx_page_context, null));
    _jspx_th_form_dependency_0.doTag();
    return false;
  }

  private class create_jspxHelper
      extends org.apache.jasper.runtime.JspFragmentHelper
  {
    private javax.servlet.jsp.tagext.JspTag _jspx_parent;
    private int[] _jspx_push_body_count;

    public create_jspxHelper( int discriminator, JspContext jspContext, javax.servlet.jsp.tagext.JspTag _jspx_parent, int[] _jspx_push_body_count ) {
      super( discriminator, jspContext, _jspx_parent );
      this._jspx_parent = _jspx_parent;
      this._jspx_push_body_count = _jspx_push_body_count;
    }
    public boolean invoke0( JspWriter out ) 
      throws Throwable
    {
      if (_jspx_meth_field_input_0((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      if (_jspx_meth_field_input_1((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      if (_jspx_meth_field_input_2((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      if (_jspx_meth_field_input_3((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      if (_jspx_meth_field_input_4((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      if (_jspx_meth_field_input_5((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      if (_jspx_meth_field_input_6((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      if (_jspx_meth_field_input_7((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      return false;
    }
    public void invoke( java.io.Writer writer )
      throws JspException
    {
      JspWriter out = null;
      if( writer != null ) {
        out = this.jspContext.pushBody(writer);
      } else {
        out = this.jspContext.getOut();
      }
      try {
        switch( this.discriminator ) {
          case 0:
            invoke0( out );
            break;
        }
      }
      catch( Throwable e ) {
        if (e instanceof SkipPageException)
            throw (SkipPageException) e;
        throw new JspException( e );
      }
      finally {
        if( writer != null ) {
          this.jspContext.popBody();
        }
      }
    }
  }
}
