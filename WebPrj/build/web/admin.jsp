    <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Minic| Admin</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="node_modules/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="node_modules/perfect-scrollbar/dist/css/perfect-scrollbar.min.css">
        <!-- endinject -->
        <!-- plugin css for this page -->
        <link rel="stylesheet" href="node_modules/jquery-bar-rating/dist/themes/css-stars.css">
        <link rel="stylesheet" href="node_modules/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" />
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="css/style_1.css">
        <!-- endinject -->
        <style>
            @import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700);

            body {
                font-family: "Open Sans", Arial;
                background: #EDEDED;
            }
            main {
                width: 500px;
                margin: 10px auto;
                padding: 10px 20px 30px;
                background: #FFF;
                box-shadow: 0 3px 5px rgba(0,0,0,0.2);
            }
            p {
                margin-top: 2rem;
                font-size: 13px;
            }
            #bar-chart {
                width: 500px;
                height: 300px;
                position: relative;
            }
            #line-chart {
                width: 500px;
                height: 300px;
                position: relative;
            }
            #bar-chart::before, #line-chart::before {
                content: "";
                position: absolute;
                display: block;
                width: 240px;
                height: 30px;
                left: 155px;
                top: 254px;
                background: #FAFAFA;
                box-shadow: 1px 1px 0 0 #DDD;
            }
            #pie-chart {
                width: 500px;
                height: 250px;
                position: relative;
            }
            #pie-chart::before {
                content: "";
                position: absolute;
                display: block;
                width: 120px;
                height: 115px;
                left: 315px;
                top: 0;
                background: #FAFAFA;
                box-shadow: 1px 1px 0 0 #DDD;
            }
            #pie-chart::after {
                content: "";
                position: absolute;
                display: block;
                top: 260px;
                left: 70px;
                width: 170px;
                height: 2px;
                background: rgba(0,0,0,0.1);
                border-radius: 50%;
                box-shadow: 0 0 3px 4px rgba(0,0,0,0.1);
            }
        </style>
    </head>
    <body>
        <div class="container-scroller">
            <!-- partial:partials/_navbar.html -->
            <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                    <a class="navbar-brand brand-logo" href="home"><img src="images/QuanVu1.jpg"  alt="logo" /></a>
                    <a class="navbar-brand brand-logo-mini" href="index.html"><img src="images/Handmade Toys Logo (1).png" alt="logo"/></a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-stretch">
                    <div class="search-field ml-4 d-none d-md-block">
                        <form class="d-flex align-items-stretch h-100" action="#">
                            <div class="input-group">
                                <input type="text" class="form-control bg-transparent border-0" placeholder="Search">
                                <div class="input-group-btn">
                                    <button type="button" class="btn bg-transparent dropdown-toggle px-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="mdi mdi-earth"></i>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="#">Today</a>
                                        <a class="dropdown-item" href="#">This week</a>
                                        <a class="dropdown-item" href="#">This month</a>
                                        <div role="separator" class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">Month and older</a>
                                    </div>
                                </div>
                                <div class="input-group-addon bg-transparent border-0 search-button">
                                    <button type="submit" class="btn btn-sm bg-transparent px-0">
                                        <i class="mdi mdi-magnify"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <ul class="navbar-nav navbar-nav-right">
                        <li class="nav-item d-none d-lg-block full-screen-link">
                            <a class="nav-link">
                                <i class="mdi mdi-fullscreen" id="fullscreen-button"></i>
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                                <i class="mdi mdi-email-outline"></i>
                                <span class="count"></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
                                <h6 class="p-3 mb-0">Messages</h6>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <img src="images/faces/face4.jpg" alt="image" class="profile-pic">
                                    </div>
                                    <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                                        <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Mark send you a message</h6>
                                        <p class="text-gray mb-0">
                                            1 Minutes ago
                                        </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <img src="images/faces/face2.jpg" alt="image" class="profile-pic">
                                    </div>
                                    <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                                        <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Cregh send you a message</h6>
                                        <p class="text-gray mb-0">
                                            15 Minutes ago
                                        </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <img src="images/faces/face3.jpg" alt="image" class="profile-pic">
                                    </div>
                                    <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                                        <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Profile picture updated</h6>
                                        <p class="text-gray mb-0">
                                            18 Minutes ago
                                        </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <h6 class="p-3 mb-0 text-center">4 new messages</h6>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
                                <i class="mdi mdi-bell-outline"></i>
                                <span class="count"></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                                <h6 class="p-3 mb-0">Notifications</h6>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <div class="preview-icon bg-success">
                                            <i class="mdi mdi-calendar"></i>
                                        </div>
                                    </div>
                                    <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                                        <h6 class="preview-subject font-weight-normal mb-1">Event today</h6>
                                        <p class="text-gray ellipsis mb-0">
                                            Just a reminder that you have an event today
                                        </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <div class="preview-icon bg-warning">
                                            <i class="mdi mdi-settings"></i>
                                        </div>
                                    </div>
                                    <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                                        <h6 class="preview-subject font-weight-normal mb-1">Settings</h6>
                                        <p class="text-gray ellipsis mb-0">
                                            Update dashboard
                                        </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item preview-item">
                                    <div class="preview-thumbnail">
                                        <div class="preview-icon bg-info">
                                            <i class="mdi mdi-link-variant"></i>
                                        </div>
                                    </div>
                                    <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                                        <h6 class="preview-subject font-weight-normal mb-1">Launch Admin</h6>
                                        <p class="text-gray ellipsis mb-0">
                                            New admin wow!
                                        </p>
                                    </div>
                                </a>
                                <div class="dropdown-divider"></div>
                                <h6 class="p-3 mb-0 text-center">See all notifications</h6>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle nav-profile" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                                
                                <span class="d-none d-lg-inline">Admin</span>
                            </a>
                            <div class="dropdown-menu navbar-dropdown w-100" aria-labelledby="profileDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="mdi mdi-cached mr-2 text-success"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">
                                    <i class="mdi mdi-logout mr-2 text-primary"></i>
                                    Signout
                                </a>
                            </div>
                        </li>
                        <li class="nav-item nav-logout d-none d-lg-block">
                            <a class="nav-link" href="#">
                                <i class="mdi mdi-power"></i>
                            </a>
                        </li>
                    </ul>
                    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                        <span class="mdi mdi-menu"></span>
                    </button>
                </div>
            </nav>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <div class="row row-offcanvas row-offcanvas-right">
                    <!-- partial:partials/_sidebar.html -->
                    <nav class="sidebar sidebar-offcanvas" id="sidebar">
                        <ul class="nav">
                            <li class="nav-item">
                                <a class="nav-link" href="admin">
                                    <span class="menu-title">Thông số</span>
                                    <span class="menu-sub-title"></span>
                                    <i class="mdi mdi-home menu-icon"></i>
                                </a>
                            </li>
                            <li class="nav-item">


                            </li>

                            

                        </ul>


                    </nav>
                    <!-- partial -->
                    <div class="content-wrapper">

                        <div class="row">
                            <div class="col-md-4 stretch-card grid-margin">
                                <div class="card bg-gradient-warning text-white">
                                    <div class="card-body">
                                        
                                        <h4 class="font-weight-normal mb-3">Total Product</h4>
                                        <h2 class="font-weight-normal mb-5">${requestScope.total}</h2>
                                        <p class="card-text"></p>
                                       
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-md-4 stretch-card grid-margin">
                                <div class="card bg-gradient-success text-white">
                                    <div class="card-body">
                                        <h4 class="font-weight-normal mb-3">Total Account</h4>
                                        <h2 class="font-weight-normal mb-5">${requestScope.totala}</h2>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-7 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Sale Overview</h4>

                                        
                                        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
                                        <main>
                                            <h2>Lượt truy cập  </h2>
                                            <h5>Daily Page Hits</h5>
                                            <div id="bar-chart"></div>
                                            <h5>Doanh số theo năm</h5>
                                            <div id="line-chart"></div>
                                            <h5>Số Lượng từng thể Loại</h5>
                                            <div id="pie-chart"></div>
                                           
                                        </main>

                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        <div class="row">
                            <div class="col-lg-12 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-body">

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 grid-margin">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Recent Tickets</h4>
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            Ticket No.
                                                        </th>
                                                        <th>
                                                            Subject
                                                        </th>
                                                        <th>
                                                            Assignee
                                                        </th>
                                                        <th>
                                                            Status
                                                        </th>
                                                        <th>
                                                            Last Update
                                                        </th>
                                                        <th>
                                                            Tracking ID
                                                        </th>
                                                        <th>
                                                            Priority
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            5669
                                                        </td>
                                                        <td>
                                                            Fund is not recieved
                                                        </td>
                                                        <td class="py-1">
                                                            <img src="images/faces/face1.jpg" class="mr-2" alt="image">
                                                            David Grey
                                                        </td>
                                                        <td>
                                                            <label class="badge badge-gradient-success">DONE</label>
                                                        </td>
                                                        <td>
                                                            Dec 5, 2017
                                                        </td>
                                                        <td>
                                                            WD-12345
                                                        </td>
                                                        <td>
                                                            <i class="mdi mdi-arrow-up text-danger icon-sm mr-1"></i>High
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            5670
                                                        </td>
                                                        <td>
                                                            High loading time
                                                        </td>
                                                        <td class="py-1">
                                                            <img src="images/faces/face2.jpg" class="mr-2" alt="image">
                                                            Stella Johnson
                                                        </td>
                                                        <td>
                                                            <label class="badge badge-gradient-warning">PROGRESS</label>
                                                        </td>
                                                        <td>
                                                            Dec 12, 2017
                                                        </td>
                                                        <td>
                                                            WD-12346
                                                        </td>
                                                        <td>
                                                            <i class="mdi mdi-arrow-up text-danger icon-sm mr-1"></i>High
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            5671
                                                        </td>
                                                        <td>
                                                            Website down for one week
                                                        </td>
                                                        <td class="py-1">
                                                            <img src="images/faces/face3.jpg" class="mr-2" alt="image">
                                                            Marina Michel
                                                        </td>
                                                        <td>
                                                            <label class="badge badge-gradient-secondary">ON HOLD</label>
                                                        </td>
                                                        <td>
                                                            Dec 16, 2017
                                                        </td>
                                                        <td>
                                                            WD-12347
                                                        </td>
                                                        <td>
                                                            <i class="mdi mdi-arrow-up text-success icon-sm mr-1"></i>Low
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            5672
                                                        </td>
                                                        <td>
                                                            Loosing control on server
                                                        </td>
                                                        <td class="py-1">
                                                            <img src="images/faces/face4.jpg" class="mr-2" alt="image">
                                                            John Doe
                                                        </td>
                                                        <td>
                                                            <label class="badge badge-gradient-success">DONE</label>
                                                        </td>
                                                        <td>
                                                            Dec 3, 2017
                                                        </td>
                                                        <td>
                                                            WD-12348
                                                        </td>
                                                        <td>
                                                            <i class="mdi mdi-arrow-up text-warning icon-sm mr-1"></i>Medium
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Shipping Status</h4>
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            #
                                                        </th>
                                                        <th>
                                                            Name
                                                        </th>
                                                        <th>
                                                            Overall Progress
                                                        </th>
                                                        <th>
                                                            ID
                                                        </th>
                                                        <th>
                                                            Start Date
                                                        </th>
                                                        <th>
                                                            Due Date
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            1
                                                        </td>
                                                        <td>
                                                            Herman Beck
                                                        </td>
                                                        <td>
                                                            <div class="progress">
                                                                <div class="progress-bar bg-gradient-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            ST-3
                                                        </td>
                                                        <td>
                                                            May 10, 2015
                                                        </td>
                                                        <td>
                                                            May 15, 2015
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            2
                                                        </td>
                                                        <td>
                                                            Messsy Adam
                                                        </td>
                                                        <td>
                                                            <div class="progress">
                                                                <div class="progress-bar bg-gradient-danger" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            ST-4
                                                        </td>
                                                        <td>
                                                            May 01, 2015
                                                        </td>
                                                        <td>
                                                            Jul 01, 2015
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            3
                                                        </td>
                                                        <td>
                                                            John Richards
                                                        </td>
                                                        <td>
                                                            <div class="progress">
                                                                <div class="progress-bar bg-gradient-warning" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            ST-5
                                                        </td>
                                                        <td>
                                                            Mar 10, 2015
                                                        </td>
                                                        <td>
                                                            Apr 12, 2015
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            4
                                                        </td>
                                                        <td>
                                                            Peter Meggik
                                                        </td>
                                                        <td>
                                                            <div class="progress">
                                                                <div class="progress-bar bg-gradient-primary" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            ST-6
                                                        </td>
                                                        <td>
                                                            May 10, 2015
                                                        </td>
                                                        <td>
                                                            May 15, 2015
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            5
                                                        </td>
                                                        <td>
                                                            Edward
                                                        </td>
                                                        <td>
                                                            <div class="progress">
                                                                <div class="progress-bar bg-gradient-danger" role="progressbar" style="width: 35%" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            ST-7
                                                        </td>
                                                        <td>
                                                            Jan 23, 2015
                                                        </td>
                                                        <td>
                                                            May 03, 2015
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            5
                                                        </td>
                                                        <td>
                                                            Ronald
                                                        </td>
                                                        <td>
                                                            <div class="progress">
                                                                <div class="progress-bar bg-gradient-info" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            ST-8
                                                        </td>
                                                        <td>
                                                            Jun 01, 2015
                                                        </td>
                                                        <td>
                                                            Jun 05, 2015
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- content-wrapper ends -->
                    <!-- partial:partials/_footer.html -->
                    <footer class="footer">
                        <div class="d-sm-flex justify-content-center justify-content-sm-between">
                            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright Â© 2017 <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap Dash</a>. All rights reserved.</span>
                            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
                        </div>
                    </footer>
                    <!-- partial -->
                </div>
                <!-- row-offcanvas ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
        <!-- container-scroller -->

        <!-- plugins:js -->
        <script src="node_modules/jquery/dist/jquery.min.js"></script>
        <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
        <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="node_modules/perfect-scrollbar/dist/js/perfect-scrollbar.jquery.min.js"></script>
        <!-- endinject -->
        <!-- Plugin js for this page-->
        <script src="node_modules/chart.js/dist/Chart.min.js"></script>
        <!-- End plugin js for this page-->
        <!-- inject:js -->
        <script src="js/off-canvas.js"></script>
        <script src="js/misc.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page-->
        <script src="js/dashboard.js"></script>
        <!-- End custom js for this page-->
    </body>
    <script type="text/javascript">
        google.load("visualization", "1", {packages: ["corechart"]});
        google.setOnLoadCallback(drawCharts);
        function drawCharts() {

            // BEGIN BAR CHART
            /*
             // create zero data so the bars will 'grow'
             var barZeroData = google.visualization.arrayToDataTable([
             ['Day', 'Page Views', 'Unique Views'],
             ['Sun',  0,      0],
             ['Mon',  0,      0],
             ['Tue',  0,      0],
             ['Wed',  0,      0],
             ['Thu',  0,      0],
             ['Fri',  0,      0],
             ['Sat',  0,      0]
             ]);
             */
            // actual bar chart data
            var barData = google.visualization.arrayToDataTable([
                ['Day', 'Page Views', 'Unique Views'],
                ['Sun', 1050, 600],
                ['Mon', 1370, 910],
                ['Tue', 660, 400],
                ['Wed', 1030, 540],
                ['Thu', 1000, 480],
                ['Fri', 1170, 960],
                ['Sat', 660, 320]
            ]);
            // set bar chart options
            var barOptions = {
                focusTarget: 'category',
                backgroundColor: 'transparent',
                colors: ['cornflowerblue', 'tomato'],
                fontName: 'Open Sans',
                chartArea: {
                    left: 50,
                    top: 10,
                    width: '100%',
                    height: '70%'
                },
                bar: {
                    groupWidth: '80%'
                },
                hAxis: {
                    textStyle: {
                        fontSize: 11
                    }
                },
                vAxis: {
                    minValue: 0,
                    maxValue: 1500,
                    baselineColor: '#DDD',
                    gridlines: {
                        color: '#DDD',
                        count: 4
                    },
                    textStyle: {
                        fontSize: 11
                    }
                },
                legend: {
                    position: 'bottom',
                    textStyle: {
                        fontSize: 12
                    }
                },
                animation: {
                    duration: 1200,
                    easing: 'out',
                    startup: true
                }
            };
            // draw bar chart twice so it animates
            var barChart = new google.visualization.ColumnChart(document.getElementById('bar-chart'));
            //barChart.draw(barZeroData, barOptions);
            barChart.draw(barData, barOptions);

            // BEGIN LINE GRAPH

            function randomNumber(base, step) {
                return Math.floor((Math.random() * step) + base);
            }
            function createData(year, start1, start2, step, offset) {
                var ar = [];
                for (var i = 0; i < 12; i++) {
                    ar.push([new Date(year, i), randomNumber(start1, step) + offset, randomNumber(start2, step) + offset]);
                }
                return ar;
            }
            var randomLineData = [
                ['Year', 'Page Views', 'Unique Views']
            ];
            for (var x = 0; x < 7; x++) {
                var newYear = createData(2007 + x, 10000, 5000, 4000, 800 * Math.pow(x, 2));
                for (var n = 0; n < 12; n++) {
                    randomLineData.push(newYear.shift());
                }
            }
            var lineData = google.visualization.arrayToDataTable(randomLineData);

            /*
             var animLineData = [
             ['Year', 'Page Views', 'Unique Views']
             ];
             for (var x = 0; x < 7; x++) {
             var zeroYear = createData(2007+x, 0, 0, 0, 0);
             for (var n = 0; n < 12; n++) {
             animLineData.push(zeroYear.shift());
             }
             }
             var zeroLineData = google.visualization.arrayToDataTable(animLineData);
             */

            var lineOptions = {
                backgroundColor: 'transparent',
                colors: ['cornflowerblue', 'tomato'],
                fontName: 'Open Sans',
                focusTarget: 'category',
                chartArea: {
                    left: 50,
                    top: 10,
                    width: '100%',
                    height: '70%'
                },
                hAxis: {
                    //showTextEvery: 12,
                    textStyle: {
                        fontSize: 11
                    },
                    baselineColor: 'transparent',
                    gridlines: {
                        color: 'transparent'
                    }
                },
                vAxis: {
                    minValue: 0,
                    maxValue: 50000,
                    baselineColor: '#DDD',
                    gridlines: {
                        color: '#DDD',
                        count: 4
                    },
                    textStyle: {
                        fontSize: 11
                    }
                },
                legend: {
                    position: 'bottom',
                    textStyle: {
                        fontSize: 12
                    }
                },
                animation: {
                    duration: 1200,
                    easing: 'out',
                    startup: true
                }
            };

            var lineChart = new google.visualization.LineChart(document.getElementById('line-chart'));
            //lineChart.draw(zeroLineData, lineOptions);
            lineChart.draw(lineData, lineOptions);

            // BEGIN PIE CHART

            // pie chart data
            var pieData = google.visualization.arrayToDataTable([
                ['Thể Loại', 'Số lượng'],
                ['Cổ Trang', 6],
                ['Anime', 5],
                ['Transformers', 4],
                ['Samurai', 1],
                ['Game&Movie', 3]
            ]);
            // pie chart options
            var pieOptions = {
                backgroundColor: 'transparent',
                pieHole: 0.4,
                colors: ["cornflowerblue",
                    "olivedrab",
                    "orange",
                    "tomato",
                    "crimson",
                    "purple",
                    "turquoise",
                    "forestgreen",
                    "navy",
                    "gray"],
                pieSliceText: 'value',
                tooltip: {
                    text: 'percentage'
                },
                fontName: 'Open Sans',
                chartArea: {
                    width: '100%',
                    height: '94%'
                },
                legend: {
                    textStyle: {
                        fontSize: 13
                    }
                }
            };
            // draw pie chart
            var pieChart = new google.visualization.PieChart(document.getElementById('pie-chart'));
            pieChart.draw(pieData, pieOptions);
        }
    </script>
</html>
