<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

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
    <form id="form1" runat="server" method="post">
        <!-- Static navbar -->
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
                        <li><a href="#">首页</a></li>
                        <li class="active"><a href="#about">查询车票</a></li>
                        <li><a href="#contact">订票</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">个人信息 <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">已买车票</a></li>
                                <li><a href="#">修改密码</a></li>
                                <li><a href="#">到时再加</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">Nav header</li>
                                <li><a href="#">Separated link</a></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="../navbar/">注销</a></li>
                        <li class="active"><a href="./">Static top</a></li>
                        <li><a href="../navbar-fixed-top/">Fixed top</a></li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </div>
        <!--以上是navbar -->
        <!--选地点-->
        <div class="container" style="margin-top: 40px">
            <div class="jumbotron">

                <div class="row">

                    <div class="col-xs-3">
                        <h3 class="panel-title">出发点</h3>
                        <select class="form-control select select-primary select-block mbl" data-toggle="select" id="from" name="" from>
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

                    <div class="col-xs-3">
                        <h3 class="panel-title">目的地</h3>
                        <select class="form-control select select-primary select-block mbl" data-toggle="select" id="to">
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
                    <!--timepicker控件-->
                    <div class="form-group">
                        <h3 class="panel-title">选择乘车日期</h3>
                        <div class="input-group date form_date col-xs-3" data-date="" data-date-format="yyyy/mm/dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                            <input class="form-control" size="16" type="text" value="" readonly>
                            <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                            <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                        </div>
                        <input type="hidden" id="dtp_input2" value="" /><br />
                    </div>

                    <div class="col-xs-3">
                        <asp:Button ID="Button1" runat="server" Text="查询行程" CssClass="btn btn-success" OnClick="Button1_Click" />
                    </div>
                    <!--选地点↑-->

                    <asp:DropDownList ID="DropDownList1" runat="server"  data-toggle="select" CssClass="form-control select select-primary select-block mbl" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="40%">
                        <asp:ListItem>中山</asp:ListItem>
                        <asp:ListItem>傲视</asp:ListItem>
                        <asp:ListItem>土豪</asp:ListItem>
                        <asp:ListItem>二额</asp:ListItem>
                        <asp:ListItem>位我</asp:ListItem>
                    </asp:DropDownList>


                </div>
            </div>
            <!--数据信息 ↓-->
            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
            <script src="js/vendor/jquery.min.js"></script>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script src="js/bootstrap.min.js"></script>
            <script src="js/bootstrap-datetimepicker.min.js"></script>
            <script src="js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
            <script type="text/javascript">
                $('.form_datetime').datetimepicker({
                    //language:  'fr',
                    weekStart: 1,
                    todayBtn: 1,
                    autoclose: 1,
                    todayHighlight: 1,
                    startView: 2,
                    forceParse: 0,
                    showMeridian: 1
                });
                $('.form_date').datetimepicker({
                    language: 'zh-CN',
                    weekStart: 1,
                    todayBtn: 1,
                    autoclose: 1,
                    todayHighlight: 1,
                    startView: 2,
                    minView: 2,
                    forceParse: 0
                });
                $('.form_time').datetimepicker({
                    language: 'zh-CN',
                    weekStart: 1,
                    todayBtn: 1,
                    autoclose: 1,
                    todayHighlight: 1,
                    startView: 1,
                    minView: 0,
                    maxView: 1,
                    forceParse: 0
                });
            </script>
            <script src="js/select2.min.js"></script>
            <script>$('[data-toggle="select"]').select2();</script>
        </div>


    </form>
</body>
</html>
