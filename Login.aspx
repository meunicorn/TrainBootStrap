<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
    <!-- Select2 -->
    <link href="css/select2.min.css" rel="stylesheet" />

    <script type="text/javascript">
        $('select').select2({
            placeholder: "Select a State",
            allowClear: true
        });
    </script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <h2 class="h2" style="margin-left:30%">请登录</h2>
            <input type="text" class="input-block-level" placeholder="Email address">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="input-append" placeholder="用户名"></asp:TextBox>

            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
            <script src="js/vendor/jquery.min.js"></script>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script src="js/bootstrap.min.js"></script>
            <script src="js/bootstrap-datetimepicker.min.js"></script>
            <script src="js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
            <script src="js/select2.min.js"></script>
        </form>
    </div>
</body>
</html>
