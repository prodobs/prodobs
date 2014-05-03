<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=us-ascii" />

<title>reservation</title>
<link rel='stylesheet' id='suffusion-google-fonts-css'  href='http://fonts.googleapis.com/css?family=Open+Sans:400,400italic,700,700italic' type='text/css' media='all' />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.css"  type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/datepicker.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/prettify.css" type="text/css" />
<script src="${pageContext.request.contextPath}/resources/js/prettify.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js" type="text/javascript" ></script>
<script src="${pageContext.request.contextPath}/resources/js/themeswitchertool.js" type="text/javascript" ></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-typeahead.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/urchin.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-tooltip.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-modal.js" type="text/javascript"></script>
<script type="text/javascript">
	//         
	$(function() {
		window.prettyPrint && prettyPrint();
		$('#startDate').datepicker({
			format : 'mm-dd-yyyy'
		});
		$('#endDate').datepicker({
			format : 'mm-dd-yyyy'
		});
		
	});
	//
	jQuery().ready(function($) {
        $('#numberOfPassengers').spinner();
        
	});

</script>
<script type="text/javascript">
	//         
	_uacct = "UA-106117-1";
	urchinTracker();
	//
</script>
</head>

<body>
<form:form action="${pageContext.request.contextPath}/results" method="post" commandName="searchForm">
<%@ include file="../include/header.jsp" %>

<br/>
<br/>
<br/>
<br/>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span3">
				<div class="well sidebar-nav">
					<ul class="nav nav-list">
						<li class="nav-header">Book Tickets</li>						
							<%@ include file="../include/booking.jsp" %>	
					</ul>
				</div>
				<!--/.well -->
			</div>
			<!--/span-->
			<div class="span9">
				<div class="banner">
					<table class="table">
						<tr>
							<td><img src="${pageContext.request.contextPath}/resources/images/cruise_f.jpg" alt=""></td>
							<td><img src="${pageContext.request.contextPath}/resources/images/hawaii_f.jpg" alt=""></td>
							<td><img src="${pageContext.request.contextPath}/resources/images/mexico_f.jpg" alt=""></td>
							<td><img src="${pageContext.request.contextPath}/resources/images/themeparks_f.jpg" alt=""></td>							
						</tr>
						<tr>
							<td><img src="${pageContext.request.contextPath}/resources/images/caribbean_f.jpg" alt=""></td>
							<td><img src="${pageContext.request.contextPath}/resources/images/southpacific_f.jpg" alt=""></td>
							<td><img src="${pageContext.request.contextPath}/resources/images/europe_f.jpg" alt=""></td>
							<td>
								<a href="http://www.london2012.com/" target="_blank">
									<img src="${pageContext.request.contextPath}/resources/images/london-2012-olympics.jpg" width="146" height="85" alt=""></td>
								</a>	
							</td>
						</tr>
					</table>
				</div>
				<div class="content">
				<br/>
				<br/>
					<p>
					<strong>We are a tech company focused on making online travel better. </strong>ALIT is an incubation project of HCL and VMware started in 2004.					
					</p>
				<br/>
					<p>
						<strong>Our website and mobile apps enable you to easily compare hundreds of travel sites at once</strong>, in one comprehensive, fast and intuitive display.
					</p> 
				<br/>
					<p>
						Once you find what you want, <strong>we give you choices where to book,</strong> including airline, hotel, car rental and online travel agency sites. We will send you right to the booking page to finish your purchase there. You can also book your hotel right on ALIT with our fast, easy and secure booking process.
					</p>
				<br/>
					<p>
						We also offer travel management tools including an itinerary management tool, flight status updates and price alerts.
					</p> 
				<br/>
					<p>
						Our free mobile app is available on iPhone, iPad, Android, BlackBerry, Windows Phone 7, and Nokia, and we have local ALIT sites in fourteen countries.
					</p>
				<br/>
					<p>
						<strong>Please give us a try. </strong>
						If you already use ALIT, then please tell your friends to try us too.</p>					
				</div>
			</div>
		</div>
		<!--/row-->
		<hr>
		<a href="#myModal" data-toggle="modal" class="btn-small">				
				Version 1: Current changes
		</a>
		<div class="modal" id="myModal" style="display:none;">
		  <div class="modal-header">
		    <a class="close" data-dismiss="modal">×</a>
		    <h3>Current state of application</h3>
		  </div>
		  <div class="modal-body">
		    <p>Version 1:</p>
		    <p>The following changes are implemented: Flight search, flight selection, display deals based on selected flights </p>
		  </div>
		  <div class="modal-footer">
		    <a href="#" class="btn" data-dismiss="modal">Close</a>
		  </div>
		</div>
	</div>
</form:form>
<%@ include file="../include/calendar.htm" %>
</body>
</html>
