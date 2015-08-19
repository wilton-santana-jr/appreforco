
<%@ page import="com.yourapp.Avaliacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'avaliacao.label', default: 'Avaliacao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-avaliacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-avaliacao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list avaliacao">
			
				<g:if test="${avaliacaoInstance?.nota}">
				<li class="fieldcontain">
					<span id="nota-label" class="property-label"><g:message code="avaliacao.nota.label" default="Nota" /></span>
					
						<span class="property-value" aria-labelledby="nota-label"><g:fieldValue bean="${avaliacaoInstance}" field="nota"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoInstance?.comentario}">
				<li class="fieldcontain">
					<span id="comentario-label" class="property-label"><g:message code="avaliacao.comentario.label" default="Comentario" /></span>
					
						<span class="property-value" aria-labelledby="comentario-label"><g:fieldValue bean="${avaliacaoInstance}" field="comentario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoInstance?.usuarioAluno}">
				<li class="fieldcontain">
					<span id="usuarioAluno-label" class="property-label"><g:message code="avaliacao.usuarioAluno.label" default="Usuario Aluno" /></span>
					
						<span class="property-value" aria-labelledby="usuarioAluno-label"><g:link controller="user" action="show" id="${avaliacaoInstance?.usuarioAluno?.id}">${avaliacaoInstance?.usuarioAluno?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoInstance?.aula}">
				<li class="fieldcontain">
					<span id="aula-label" class="property-label"><g:message code="avaliacao.aula.label" default="Aula" /></span>
					
						<span class="property-value" aria-labelledby="aula-label"><g:link controller="aula" action="show" id="${avaliacaoInstance?.aula?.id}">${avaliacaoInstance?.aula?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:avaliacaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${avaliacaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
