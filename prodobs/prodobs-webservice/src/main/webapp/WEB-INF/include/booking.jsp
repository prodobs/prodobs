<jsp:useBean id="now" class="java.util.GregorianCalendar"/>

						<div class="row-fluid">
	<p>		
		<div class="controls">  
             <span class="label label-info">Leaving From</span><a href="#" rel="tooltip" title="Select starting airport"> ?</a>
             <c:set var="originport" value="${form.origin}"/>
             <select name="origin" id="origin" style="width: 160px;">
             	<c:if test="${originport == null || originport == '' || originport == ' '}">
	             	<c:set var="count" value="1"/>
	             	<c:forEach var="airport" items="${airports}">
	            		<c:if test="${count == '1'}">		
	               			<option selected value="${airport.code}">${airport.name} (${airport.code})</option>
	               		</c:if>
	               		<c:if test="${count != '1'}">		
	               			<option value="${airport.code}">${airport.name} (${airport.code})</option>
	               		</c:if>
	               		<c:set var="count" value="${count + 1}"/>               
	               </c:forEach>	               
	            </c:if>	            
	            <c:if test="${originport != null}">
	            	<c:forEach var="airport" items="${airports}">
	            		<c:if test="${originport == airport.code}">		
	               			<option selected value="${airport.code}">${airport.name} (${airport.code})</option>
	               		</c:if>
	               		<c:if test="${originport != airport.code}">
	               			<option value="${airport.code}">${airport.name} (${airport.code})</option>
	               		</c:if>               
	               </c:forEach>
	            </c:if>
             
             </select>             
           </div>
           <form:errors path="origin" cssClass="label label-important" />
	</p>				

	<p>
		<div class="controls">  
             <span class="label label-info">Going To</span><a href="#" rel="tooltip" title="Select ending airport"> ?</a>
			 <c:set var="destinationport" value="${form.destination}"/>
			 <select name="destination" id="destination" style="width: 160px;">
             	<c:if test="${destinationport == null || destinationport == '' || destinationport == ' '}">
	             	<c:set var="count" value="1"/>
	             	<c:forEach var="airport" items="${airports}">
	            		<c:if test="${count == '2'}">		
	               			<option selected value="${airport.code}">${airport.name} (${airport.code})</option>
	               		</c:if>
	               		<c:if test="${count != '2'}">		
	               			<option value="${airport.code}">${airport.name} (${airport.code})</option>
	               		</c:if>
	               		<c:set var="count" value="${count + 1}"/>               
	               </c:forEach>	               
	            </c:if>	            
	            <c:if test="${destinationport != null}">
	            	<c:forEach var="airport" items="${airports}">
	            		<c:if test="${destinationport == airport.code}">		
	               			<option selected value="${airport.code}">${airport.name} (${airport.code})</option>
	               		</c:if>
	               		<c:if test="${destinationport != airport.code}">
	               			<option value="${airport.code}">${airport.name} (${airport.code})</option>
	               		</c:if>               
	               </c:forEach>
	            </c:if>
             
             </select>                          
           </div>           
           <form:errors path="destination" cssClass="label label-important" />
	</p>				

	<p>
		<span class="label label-info">Departure Date</span><a href="#" rel="tooltip" title="Select departure date"> ?</a><br>
		<c:if test="${form.startDate == null || form.startDate == '' || form.startDate == ' '}">		
			<input value="<fmt:formatDate value="${now.time}" type="both" pattern="MM-dd-yyyy" />" name="startDate" id="startDate"
					type="text" size="30" style="width: 160px;" type="text"/>			
		</c:if>
		<c:if test="${form.startDate != null}">		
			<input value="${form.startDate}" name="startDate" id="startDate"
					type="text" size="30" style="width: 160px;" type="text"/>			
		</c:if>
		<br><form:errors path="startDate" cssClass="label label-important" />									
	</p>

	<p>
		<span class="label label-info">Return Date</span><a href="#" rel="tooltip" title="Select return date"> ?</a><br>
		<% now.add(java.util.GregorianCalendar.DAY_OF_MONTH, 8); %>		
		<c:if test="${form.returnDate == null || form.returnDate == '' || form.returnDate == ' '}">		
			<input value="<fmt:formatDate value="${now.time}" type="both" pattern="MM-dd-yyyy" />" name="returnDate" id="endDate"
					type="text" size="30" style="width: 160px;" type="text"/>			
		</c:if>
		<c:if test="${form.returnDate != null}">		
			<input value="${form.returnDate}" name="returnDate" id="endDate"
					type="text" size="30" style="width: 160px;" type="text"/>			
		</c:if>
		<br><form:errors path="returnDate" cssClass="label label-important" />
	</p>

	<p>
		<span class="label label-info">Number of Passengers</span><a href="#" rel="tooltip" title="Select number of passengers"> ?</a><br>
		<c:if test="${form.numberOfPassengers == null || form.numberOfPassengers == '' || form.numberOfPassengers == ' '}">
			<input name="numberOfPassengers" id="numberOfPassengers"
				type="number" size="30" style="width: 160px;"  
				step="1" value="1"/>		
		</c:if>
		<c:if test="${form.numberOfPassengers != null}">		
			<input name="numberOfPassengers" id="numberOfPassengers"
				type="number" size="30" style="width: 160px;"  
				step="1" value="${form.numberOfPassengers}"/>
		</c:if>
		<form:errors path="numberOfPassengers" cssClass="label label-important" />
		</p>
		<button type="submit" 
			onclick="document.forms[0].action='${pageContext.request.contextPath}/results';document.forms[0].submit();" 
			class="btn btn-primary">
			<i class="icon-search"></i>Search
		</button>
	</div>