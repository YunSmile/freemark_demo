<#macro moduleHead title desc >
<div class="g-module">
  <#if (title??)>
    <#list title?split(' ') as t>
      <div class="module-title"> ${t} </div>
    </#list>
  </#if>
  
   <div class="module-desc"> ${desc}</div>
</div>
</#macro>