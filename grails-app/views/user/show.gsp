
<%@ page import="com.yourapp.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="user.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="user.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="user.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${userInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="user.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${userInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.sobreNome}">
				<li class="fieldcontain">
					<span id="sobreNome-label" class="property-label"><g:message code="user.sobreNome.label" default="Sobre Nome" /></span>
					
						<span class="property-value" aria-labelledby="sobreNome-label"><g:fieldValue bean="${userInstance}" field="sobreNome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="user.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${userInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.dataNascimento}">
				<li class="fieldcontain">
					<span id="dataNascimento-label" class="property-label"><g:message code="user.dataNascimento.label" default="Data Nascimento" /></span>
					
						<span class="property-value" aria-labelledby="dataNascimento-label"><g:formatDate date="${userInstance?.dataNascimento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.genero}">
				<li class="fieldcontain">
					<span id="genero-label" class="property-label"><g:message code="user.genero.label" default="Genero" /></span>
					
						<span class="property-value" aria-labelledby="genero-label"><g:fieldValue bean="${userInstance}" field="genero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.enderecoCep}">
				<li class="fieldcontain">
					<span id="enderecoCep-label" class="property-label"><g:message code="user.enderecoCep.label" default="Endereco Cep" /></span>
					
						<span class="property-value" aria-labelledby="enderecoCep-label"><g:fieldValue bean="${userInstance}" field="enderecoCep"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.enderecoLogradouro}">
				<li class="fieldcontain">
					<span id="enderecoLogradouro-label" class="property-label"><g:message code="user.enderecoLogradouro.label" default="Endereco Logradouro" /></span>
					
						<span class="property-value" aria-labelledby="enderecoLogradouro-label"><g:fieldValue bean="${userInstance}" field="enderecoLogradouro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.enderecoNumero}">
				<li class="fieldcontain">
					<span id="enderecoNumero-label" class="property-label"><g:message code="user.enderecoNumero.label" default="Endereco Numero" /></span>
					
						<span class="property-value" aria-labelledby="enderecoNumero-label"><g:fieldValue bean="${userInstance}" field="enderecoNumero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.enderecoComplemento}">
				<li class="fieldcontain">
					<span id="enderecoComplemento-label" class="property-label"><g:message code="user.enderecoComplemento.label" default="Endereco Complemento" /></span>
					
						<span class="property-value" aria-labelledby="enderecoComplemento-label"><g:fieldValue bean="${userInstance}" field="enderecoComplemento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.enderecoBairro}">
				<li class="fieldcontain">
					<span id="enderecoBairro-label" class="property-label"><g:message code="user.enderecoBairro.label" default="Endereco Bairro" /></span>
					
						<span class="property-value" aria-labelledby="enderecoBairro-label"><g:fieldValue bean="${userInstance}" field="enderecoBairro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.dddFone1}">
				<li class="fieldcontain">
					<span id="dddFone1-label" class="property-label"><g:message code="user.dddFone1.label" default="Ddd Fone1" /></span>
					
						<span class="property-value" aria-labelledby="dddFone1-label"><g:fieldValue bean="${userInstance}" field="dddFone1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.numFone1}">
				<li class="fieldcontain">
					<span id="numFone1-label" class="property-label"><g:message code="user.numFone1.label" default="Num Fone1" /></span>
					
						<span class="property-value" aria-labelledby="numFone1-label"><g:fieldValue bean="${userInstance}" field="numFone1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.dddFone2}">
				<li class="fieldcontain">
					<span id="dddFone2-label" class="property-label"><g:message code="user.dddFone2.label" default="Ddd Fone2" /></span>
					
						<span class="property-value" aria-labelledby="dddFone2-label"><g:fieldValue bean="${userInstance}" field="dddFone2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.numFone2}">
				<li class="fieldcontain">
					<span id="numFone2-label" class="property-label"><g:message code="user.numFone2.label" default="Num Fone2" /></span>
					
						<span class="property-value" aria-labelledby="numFone2-label"><g:fieldValue bean="${userInstance}" field="numFone2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.photo}">
				<li class="fieldcontain">
					<span id="photo-label" class="property-label"><g:message code="user.photo.label" default="Photo" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.valorMedioHoraAula}">
				<li class="fieldcontain">
					<span id="valorMedioHoraAula-label" class="property-label"><g:message code="user.valorMedioHoraAula.label" default="Valor Medio Hora Aula" /></span>
					
						<span class="property-value" aria-labelledby="valorMedioHoraAula-label"><g:fieldValue bean="${userInstance}" field="valorMedioHoraAula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.enderecoCidade}">
				<li class="fieldcontain">
					<span id="enderecoCidade-label" class="property-label"><g:message code="user.enderecoCidade.label" default="Endereco Cidade" /></span>
					
						<span class="property-value" aria-labelledby="enderecoCidade-label"><g:link controller="cidade" action="show" id="${userInstance?.enderecoCidade?.id}">${userInstance?.enderecoCidade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="user.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${userInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="user.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${userInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.aulas}">
				<li class="fieldcontain">
					<span id="aulas-label" class="property-label"><g:message code="user.aulas.label" default="Aulas" /></span>
					
						<g:each in="${userInstance.aulas}" var="a">
						<span class="property-value" aria-labelledby="aulas-label"><g:link controller="aula" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.avaliacoes}">
				<li class="fieldcontain">
					<span id="avaliacoes-label" class="property-label"><g:message code="user.avaliacoes.label" default="Avaliacoes" /></span>
					
						<g:each in="${userInstance.avaliacoes}" var="a">
						<span class="property-value" aria-labelledby="avaliacoes-label"><g:link controller="avaliacao" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="user.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${userInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.formacoes}">
				<li class="fieldcontain">
					<span id="formacoes-label" class="property-label"><g:message code="user.formacoes.label" default="Formacoes" /></span>
					
						<g:each in="${userInstance.formacoes}" var="f">
						<span class="property-value" aria-labelledby="formacoes-label"><g:link controller="formacao" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="user.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${userInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
