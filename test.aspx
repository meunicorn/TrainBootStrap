<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
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
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-toggle">
            <asp:ListItem>中山</asp:ListItem>
            <asp:ListItem>珠海</asp:ListItem>
            <asp:ListItem>深圳</asp:ListItem>
        </asp:DropDownList>
    <!-- Single button -->
<div class="btn-group">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
    Action <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" role="menu">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
    <li><a href="#">Something else here</a></li>
    <li class="divider"></li>
    <li><a href="#">Separated link</a></li>
  </ul>
</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
        <p>
            &nbsp;</p>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown dropdown-header dropdown-menu">
            <asp:ListItem>1231</asp:ListItem>
            <asp:ListItem>1244</asp:ListItem>
            <asp:ListItem>234</asp:ListItem>
            <asp:ListItem>3345</asp:ListItem>
        </asp:DropDownList>

            <div class="col-xs-3">    
          <h3 class="panel-title">出发点</h3>
    <select class="form-control select select-primary select-block mbl" data-toggle="select" id="from">
  <optgroup label="出发地">
    <option value="0">中山</option>
    <option value="1">珠海</option>
  </optgroup>
  <optgroup label="System">
    <option value="2">Messages</option>
    <option value="3">My Settings</option>
    <option value="4">Logout</option>
  </optgroup>
</select>
</div>


        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    </form>
    </body>
</html>
