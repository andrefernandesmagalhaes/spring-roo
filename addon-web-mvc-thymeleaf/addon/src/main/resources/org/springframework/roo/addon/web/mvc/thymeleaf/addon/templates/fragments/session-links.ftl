<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Session info</title>
  </head>
<#if userManagedComponents?has_content && userManagedComponents["body"]??>
  ${userManagedComponents["body"]}
<#else>
  <body id="body">
    <!--
    Only the internal content of the following div is included within
    the template, in session fragment
    -->
    <div data-layout-fragment="session">

      <ul class="nav navbar-nav navbar-right upper-nav links">
        <li><a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>&nbsp;<span class="hidden-sm" data-th-text="${r"#{"}label_contact${r"}"}"> Contact</span></a></li>
        <li><a href="#"><span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span>&nbsp;<span class="hidden-sm" data-th-text="${r"#{"}label_help${r"}"}"> Help</span></a></li>
      </ul>

      <ul class="nav navbar-nav navbar-right upper-nav session">
        <li><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;<span class="hidden-sm" data-th-text="${r"#{"}label_user${r"}"}"> User</span></a></li>
      </ul>

	 </div>
  </body>
  </#if>
</html>