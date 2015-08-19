
<%@ page import="com.yourapp.Aula" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aula.label', default: 'Aula')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-aula" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-aula" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="especialidade" title="${message(code: 'aula.especialidade.label', default: 'Especialidade')}" />
					
						<g:sortableColumn property="exibirValorHoraAula" title="${message(code: 'aula.exibirValorHoraAula.label', default: 'Exibir Valor Hora Aula')}" />
					
						<g:sortableColumn property="valorHoraAula" title="${message(code: 'aula.valorHoraAula.label', default: 'Valor Hora Aula')}" />
					
						<th><g:message code="aula.usuarioProfessor.label" default="Usuario Professor" /></th>
					
						<th><g:message code="aula.categoria.label" default="Categoria" /></th>
					
						<th><g:message code="aula.nivelEscolar.label" default="Nivel Escolar" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${aulaInstanceList}" status="i" var="aulaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${aulaInstance.id}">${fieldValue(bean: aulaInstance, field: "especialidade")}</g:link></td>
					
						<td><g:formatBoolean boolean="${aulaInstance.exibirValorHoraAula}" /></td>
					
						<td>${fieldValue(bean: aulaInstance, field: "valorHoraAula")}</td>
					
						<td>${fieldValue(bean: aulaInstance, field: "usuarioProfessor")}</td>
					
						<td>${fieldValue(bean: aulaInstance, field: "categoria")}</td>
					
						<td>${fieldValue(bean: aulaInstance, field: "nivelEscolar")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${aulaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
