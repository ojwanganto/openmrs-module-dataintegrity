<%@ include file="/WEB-INF/template/include.jsp" %>

<openmrs:require privilege="View Hello World" otherwise="/login.htm" redirect="/module/helloworld/viewHelloWorld.htm" />
	
<%@ include file="/WEB-INF/template/header.jsp" %>

<br/>
<h2><spring:message code="dataintegrity.nimantha"/></h2>
<br/>

<%@ include file="/WEB-INF/template/footer.jsp" %>