<html>
<#macro htmlHead title charset="utf-8" lang="zh-CN">
<head>
　　<meta http-equiv="Content-Type" content="text/html; charset=${charset}" />
　　<meta http-equiv="Content-Language" content="${lang}"/>
　　<title>${title}</title>
   <link rel="stylesheet" type="text/css" href="/css/reset.css">
　　<#nested>
</head>
</#macro>

<#macro htmlBody>
  <body>
    <div>
    <#include "./leftMenu.ftl" />
    　<#nested>
    </div>
  </body>
</#macro>
</html>