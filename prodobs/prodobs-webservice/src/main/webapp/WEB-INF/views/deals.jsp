<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
</script>
<script type="text/javascript">
	//         
	_uacct = "UA-106117-1";
	urchinTracker();
	//
</script>
</head>

<body>
<form:form action="${pageContext.request.contextPath}/cart" method="post" commandName="searchForm">
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
				</div>
				<div class="content">
					<div class="modal fade" id="myModal226">
						<div class="modal-header">
							<a class="close" data-dismiss="modal">Ã</a>
							<h3>k</h3>
						</div>
						<div class="modal-body">
							<ul class="thumbnails">
								<li class="span1"><img src="a_data/fig1.jpg" alt=""
									height="400" width="530"></li>
							</ul>
							fig1.jpg
						</div>
						<div class="modal-footer">
							<a data-dismiss="modal" class="btn">Close</a>
						</div>

					</div>
					<div class="modal fade" id="myModal2226">
						<div class="modal-header">
							<a class="close" data-dismiss="modal">Ã</a>
							<h3>k</h3>
						</div>
						<div class="modal-body">
							<ul class="thumbnails">
								<li class="span1"><img src="a_data/Cloud.jpg" alt=""
									height="300" width="400"></li>
							</ul>
							Cloud.jpg
						</div>
						<div class="modal-footer">
							<a data-dismiss="modal" class="btn">Close</a>
						</div>
					</div>
	
	<p>
			
	<h3>Your selected flight:</h3>
	<table class="table table-striped">
	<tbody>  
		<tr>    		
			<td>${form.flight.startAirport} &#8594; </td>
			<td>${form.startDate}</td>
			<td>${form.flight.startTime} &#8594;</td>
			<td>${form.flight.endAirport} &#8594;</td>
			<td>${form.startDate}</td>
			<td>${form.flight.endTime} &#8594;</td>				
			<td>${form.flight.stops} stop(s)</td>
			<td>${form.flight.airline}</td>
      		<td>
      			<span class="label label-important">
					$${form.flight.price}
				</span>
			</td>
		</tr>
		<tr>				
			<td>${form.flight.returnStartAirport} &#8594;</td>
			<td>${form.returnDate}</td>
			<td>${form.flight.returnStartTime} &#8594;</td>
			<td>${form.flight.returnEndAirport} &#8594;</td>
			<td>${form.returnDate}</td>
			<td>${form.flight.returnEndTime} &#8594;</td>
			<td>${form.flight.returnStops} stop(s)</td>
			<td style="text-align: left" colspan="2">				
				&nbsp;
			</td>						
		</tr>			
	</tbody>
    </table>		
    <p>&nbsp;</p>
    <h3>Promotions</h3>
    <table class="table table-striped">
      <thead>
        <tr>
          <th>&nbsp;</th>
          <th>Event</th>
          <th>Date</th>
		  <th>Place</th>
          <th>Price</th>
          <th>Discount</th>
        </tr>
      </thead>

      <tbody>
         <c:choose>
			<c:when test="${empty deals}">
				No item returned
			</c:when>
			<c:otherwise>
		      	<c:forEach var="deal" items="${deals}">
		      		<tr>
		      			<td><input type="checkbox" name="selectedDeals" value="${deal.id}"/></td>		      			
						<td>${deal.event}</td>
						<td>${deal.dates}</td>
						<td>${deal.place}</td>				
						<td>
							<span class="label label-important">
								$${deal.price}
							</span>					
						</td>
						<td>${deal.discount}% Off</td>						
					</tr>		
				</c:forEach>
			</c:otherwise>
		</c:choose>
      </tbody>
    </table>
    <form:hidden path="selectedFlight" />
    <form:hidden path="selectedDestination" />
    <form:hidden path="numberOfPassengers" />
	<button type="submit" class="btn btn-inverse">
		<i class="icon-shopping-cart icon-white"></i>Next
	</button>					
	<hr>
</form:form>	 
<%@ include file="../include/calendar.htm" %>	
</body>
</html>
