<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>WarehouseOperations | MainScreen </title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="<c:url value="resources/bootstrap/css/bootstrap.min.css"/>">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<c:url value="resources/bootstrap/css/AdminLTE.min.css"/>">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<c:url value="resources/bootstrap/css/skins/_all-skins.min.css"/>">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- Content Wrapper. Contains page content -->
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Schedule an Appointment</h1>

            <p class="lead">Please Add an Appointment here!</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/addAppt"
                   method="post" commandName="appt" enctype="multipart/form-data">

        <div class="form-group">
            <label for="po_nbr">PO Nbr</label>
            <form:input path="po_nbr" id="po_nbr" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="appt_status">Appt Status</label>
            <label class="checkbox-inline"><form:radiobutton path="appt_status" id="appt_status" value="SCHD"/>
                SCHD</label>
            <label class="checkbox-inline"><form:radiobutton path="appt_status" id="appt_status" value="OPEN"/>
                OPEN</label>
        </div>


        <div class="form-group">
            <label for="appt_status">Appt Type</label>
            <label class="checkbox-inline"><form:radiobutton path="appt_type" id="appt_type" value="ASN"/>
                ASN</label>
            <label class="checkbox-inline"><form:radiobutton path="appt_type" id="appt_type" value="PO"/>
                PO</label>
            <label class="checkbox-inline"><form:radiobutton path="appt_type" id="appt_type" value="NSC"/>
                NSC</label>
        </div>

        <div class="form-group">
            <label for="door_id">Door Id</label>
            <form:input path="door_id" id="door_id" class="form-Control"/>
        </div>
        <input type="submit" value="Schedule" class="btn btn-success">
        <a href="<c:url value="/UserInterface"/>" class="btn btn-warning">Cancel</a>
        </form:form>


        <!-- jQuery 2.2.3 -->
        <script src="<c:url value="resources/bootstrap/jQuery/jquery-2.2.3.min.js"/>"></script>
        <!-- Bootstrap 3.3.6 -->
        <script src="<c:url value="resources/bootstrap/js/bootstrap.min.js"/>"></script>
        <!-- SlimScroll -->
        <script src="<c:url value="resources/bootstrap/slimScroll/jquery.slimscroll.min.js"/>"></script>
        <!-- FastClick -->
        <script src="<c:url value="resources/bootstrap/fastclick/fastclick.js"/>"></script>
        <!-- AdminLTE App -->
        <script src="<c:url value="resources/bootstrap/js/app.min.js"/>"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="<c:url value="resources/bootstrap/js/demo.js"/>"></script>
</body>
</html>
