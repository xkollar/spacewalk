<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://rhn.redhat.com/rhn" prefix="rhn" %>
<%@ taglib uri="http://rhn.redhat.com/tags/list" prefix="rl" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<html>
<body>

<%@ include file="/WEB-INF/pages/common/fragments/ssm/header.jspf" %>

<h2><bean:message key="ssm.overview.header"/></h2>
<div class="page-summary">
    <ul><bean:message key="ssm.overview.summary"/></ul>
    <ul><bean:message key="ssm.overview.summary2"/></ul>
</div>


<div class="panel panel-default">
    <ul class="list-group">    
        <li class="list-group-item">
            <div class="row">
                <div class="col-sm-2">
                    <i class="fa fa-desktop fa-fw" title="<bean:message key="ssm.overview.systems" />"></i>
                    <bean:message key="ssm.overview.systems"/>
                </div>
                <div class="col-sm-10">
                    <bean:message key="ssm.overview.systems.list"/>
                </div>
            </div>
        </li>
        <li class="list-group-item">
            <div class="row">
                <div class="col-sm-2">
                    <i class="fa spacewalk-icon-patches fa-fw" title="<bean:message key="ssm.overview.errata"/>"></i>
                    <bean:message key="ssm.overview.errata"/>
                </div>
                <div class="col-sm-10">
                    <bean:message key="ssm.overview.errata.schedule"/>
                </div>
            </div>
        </li>
        <li class="list-group-item">
            <div class="row">
                <div class="col-sm-2">
                    <i class="fa spacewalk-icon-packages fa-fw" title="<bean:message key='ssm.overview.packages'/>"></i>
                    <bean:message key="ssm.overview.packages"/>
                </div>
                <div class="col-sm-10">
                    <bean:message key="ssm.overview.packages.upgrade"/>
                </div>
            </div>
        </li>
        <rhn:require acl="is(enable_solaris_support)">
            <li class="list-group-item">
                <div class="row">
                    <div class="col-sm-2">
                        <i class="fa spacewalk-icon-patches fa-fw" title="<bean:message key='ssm.overview.patches'/>"></i>
                        <bean:message key="ssm.overview.patches"/>
                    </div>
                    <div class="col-sm-10">
                        <a href="/network/systems/ssm/patches/install.pxt"><bean:message key="ssm.overview.patches.install"/></a> / <a href="/network/systems/ssm/patches/remove.pxt"><bean:message key="ssm.overview.patches.remove"/></a>
                        <bean:message key="ssm.overview.patches.patches"/>
                    </div>
                </div>
            </li>
            <li class="list-group-item">
                <div class="row">
                    <div class="col-sm-2">
                        <i class="fa spacewalk-icon-patch-set fa-fw" title="<bean:message key='ssm.overview.patch.clusters'/>"></i>
                        <bean:message key="ssm.overview.patch.clusters"/>
                    </div>
                    <div class="col-sm-10">
                        <bean:message key="ssm.overview.patch.clusters.install"/>
                    </div>
                </div>
            </li>
        </rhn:require>
        <rhn:require acl="user_role(org_admin)">
            <li class="list-group-item">
                <div class="row">
                    <div class="col-sm-2">
                        <i class="fa spacewalk-icon-system-groups fa-fw" title="<bean:message key='ssm.overview.groups'/>"></i>
                        <bean:message key="ssm.overview.groups"/>
                    </div>
                    <div class="col-sm-10">
                        <bean:message key="ssm.overview.groups.create"/>
                    </div>
                </div>
            </li>
        </rhn:require>
        <li class="list-group-item">
            <div class="row">
                <div class="col-sm-2">
                    <i class="fa spacewalk-icon-software-channels fa-fw" title="<bean:message key='ssm.overview.channels'/>"></i>
                    <bean:message key="ssm.overview.channels"/>
                </div>
                <div class="col-sm-10">
                    <ul>
                        <li><bean:message key="ssm.overview.channels.memberships"/></li>
                        <rhn:require acl="org_entitlement(rhn_provisioning); user_role(config_admin)">
                          <li><bean:message key="ssm.overview.channels.subscriptions"/></li>
                          <li><bean:message key="ssm.overview.channels.deploy"/></li>
                        </rhn:require>
                    </ul>
                </div>
            </div>
        </li>
        <rhn:require acl="org_entitlement(rhn_provisioning);">
            <li class="list-group-item">
                <div class="row">
                    <div class="col-sm-2">
                        <i class="fa fa-rocket fa-fw" title="<bean:message key='ssm.overview.provisioning'/>"></i>
                        <bean:message key="ssm.overview.provisioning"/>
                    </div>
                    <div class="col-sm-10">
                        <ul>
                            <li><bean:message key="ssm.overview.provisioning.kickstart"/></li>
                            <li><bean:message key="ssm.overview.provisioning.rollback"/></li>
                            <li><bean:message key="ssm.overview.provisioning.remotecommands"/></li>
                        </ul>
                    </div>
                </div>
            </li>
        </rhn:require>
        <li class="list-group-item">
            <div class="row">
                <div class="col-sm-2">
                    <i class="fa fa-suitcase fa-fw" title="<bean:message key='ssm.overview.misc'/>"></i>
                    <bean:message key="ssm.overview.misc"/>
                </div>
                <div class="col-sm-10">
                    <ul>
                        <li><bean:message key="ssm.overview.misc.updateprofiles"/></li>
                        <rhn:require acl="org_entitlement(rhn_provisioning)">
                            <li><bean:message key="ssm.overview.misc.customvalues"/></li>
                        </rhn:require>
                        <rhn:require acl="user_role(org_admin);org_entitlement(rhn_provisioning) or org_entitlement(rhn_monitor)">
                            <li><bean:message key="ssm.overview.misc.entitlements"/></li>
                        </rhn:require>
                        <li><bean:message key="ssm.overview.misc.delete"/></li>
                        <li><bean:message key="ssm.overview.misc.reboot"/></li>
                        <li><bean:message key="ssm.overview.misc.migrate"/></li>
                        <li><bean:message key="ssm.overview.misc.scap"/></li>
                    </ul>
                </div>
            </div>
        </li>
    </ul>
    
</div>

</body>
</html>
