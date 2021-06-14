<#include "/layout/layout.ftl"/>
<#include "/layout/moduleTitle.ftl"/>
<@htmlHead title="FreeMarker宏测试 "></@htmlHead>
<#if isMobile>
  <link rel="stylesheet" type="text/css" href="/demo/m.css">
<#else>
  <link rel="stylesheet" type="text/css" href="/demo/index.css" />
</#if>

<@htmlBody>
  <div class="demoPage">
    <@moduleHead title="我是demo 那你是什么" desc="我是描述的示例"></@moduleHead>
    <div class="g-content-w">
      <div>
      欢迎你啊，demo
      </div>
        <img src="" />
    </div>
  </div>
</@htmlBody>