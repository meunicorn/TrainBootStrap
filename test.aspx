<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ChooChoo火车订票网站</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

    <!-- Static navbar -->
    <form runat="server">
    <asp:Menu ID="Menu1" runat="server" CssClass="navbar navbar-default navbar-fixed-top" role="navigation" Orientation="Horizontal">
        <Items>
            <asp:MenuItem Text="新建项" Value="新建项" class="navbar-toggle" data-toggle="collapse"></asp:MenuItem>
            <asp:MenuItem Text="新建项" Value="新建项"></asp:MenuItem>
            <asp:MenuItem Text="新建项" Value="新建项">
                <asp:MenuItem Text="新建项" Value="新建项"></asp:MenuItem>
                <asp:MenuItem Text="新建项" Value="新建项"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="新建项" Value="新建项"></asp:MenuItem>
        </Items>
    </asp:Menu></form>
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                </button>
                <a class="navbar-brand" href="#">ChooChoo</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">首页</a></li>
                    <li><a href="#about">查询车票</a></li>
                    <li><a href="#contact">订票</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">个人信息 <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">已买车票</a></li>
                            <li><a href="#">修改密码</a></li>
                   
                        </ul>
                    </li>
                </ul>

            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
    <!--以上是navbar -->
    <div align="center">
        <img src="img/trainBG.jpg" width="800" class="img-rounded img-responsive" />
        <p class="img-comment"><strong>提示：</strong> 欢迎来到<strong>ChooChoo</strong>火车订票网站。</p>

    </div>
    <script src="js/vendor/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>

