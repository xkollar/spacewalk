<%@ taglib uri="http://rhn.redhat.com/rhn" prefix="rhn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>


<html>
<head>
    <meta name="page-decorator" content="none" />
</head>
<body>
<rhn:toolbar base="h1" icon="spacewalk-icon-patches" iconAlt="errata.common.errataAlt"
	           helpUrl="/rhn/help/channel-mgmt/en-US/channel-mgmt-Custom_Errata_Management-Managed_Errata_Details.jsp">
    <bean:message key="errata.edit.toolbar"/> <c:out value="${advisory}" />
  </rhn:toolbar>

  <rhn:dialogmenu mindepth="0" maxdepth="1" definition="/WEB-INF/nav/manage_errata.xml"
                  renderer="com.redhat.rhn.frontend.nav.DialognavRenderer" />

  <h2>
    <i class="fa spacewalk-icon-packages" title="<bean:message key='errata.common.packageAlt' />"></i>
    <bean:message key="errata.edit.packages.erratapackages"/>
  </h2>

  <ul>
      <li>
        <a href="/rhn/errata/manage/ListPackages.do?eid=<c:out value="${param.eid}"/>">
	      List / Remove Packages
	    </a>
      </li>

      <li>
        <a href="/rhn/errata/manage/AddPackages.do?eid=<c:out value="${param.eid}"/>">
          Add Packages
        </a>
      </li>
  </ul>

</body>
</html>
