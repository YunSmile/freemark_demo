  <style>
  
    .g-left-menu{
      height:35px;
      line-height:35px;
      border:solid 1px gray;
    }
    .g-left-menu a{
      margin-left:10px;
      color:#333;
      padding:0 10px;
      border-right:solid 1px gray;
    }
    .g-left-menu a:hover{
      color:blue;
    }
  </style>
  <#assign seq = [{"name":"测试","url":"/demo/index.html"}]>
  <div class="g-left-menu">
    <#list seq as element>
      <a href="${element.url}">${element.name}</a>
    </#list>
  </div>