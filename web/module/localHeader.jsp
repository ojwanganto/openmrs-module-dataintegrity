<ul id="menu">
	<li class="first">
		<a href="${pageContext.request.contextPath}/admin"><spring:message code="admin.title.short"/></a>
	</li>
	<openmrs:hasPrivilege privilege="Manage Integrity Checks">
		<li <c:if test='<%= request.getRequestURI().contains("dataIntegrityChecks") %>'>class="active"</c:if>>
			<a href="${pageContext.request.contextPath}/module/dataintegrity/dataIntegrityChecks.list">
				<spring:message code="dataintegrity.manage.link"/>
			</a>
		</li>
		<li <c:if test='<%= request.getRequestURI().contains("uploadCheck") %>'>class="active"</c:if>>
			<a href="${pageContext.request.contextPath}/module/dataintegrity/uploadCheck.list">
				<spring:message code="dataintegrity.upload.link"/>
			</a>
		</li>
	</openmrs:hasPrivilege>
	<openmrs:hasPrivilege privilege="Run Data Integrity Checks">
		<li <c:if test='<%= request.getRequestURI().contains("runSingleCheck") %>'>class="active"</c:if>>
			<a href="${pageContext.request.contextPath}/module/dataintegrity/runSingleCheck.list">
				<spring:message code="dataintegrity.runSingleCheck.link"/>
			</a>
		</li>
		<li <c:if test='<%= request.getRequestURI().contains("runMultipleChecks") %>'>class="active"</c:if>>
			<a href="${pageContext.request.contextPath}/module/dataintegrity/runMultipleChecks.list">
				<spring:message code="dataintegrity.runMultipleChecks.link"/>
			</a>
		</li>
	</openmrs:hasPrivilege>
</ul>