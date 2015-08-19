<%@ page import="com.yourapp.Avaliacao" %>



<div class="fieldcontain ${hasErrors(bean: avaliacaoInstance, field: 'nota', 'error')} required">
	<label for="nota">
		<g:message code="avaliacao.nota.label" default="Nota" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="nota" from="${1..5}" class="range" required="" value="${fieldValue(bean: avaliacaoInstance, field: 'nota')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaliacaoInstance, field: 'comentario', 'error')} ">
	<label for="comentario">
		<g:message code="avaliacao.comentario.label" default="Comentario" />
		
	</label>
	<g:textArea name="comentario" cols="40" rows="5" maxlength="1000" value="${avaliacaoInstance?.comentario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaliacaoInstance, field: 'usuarioAluno', 'error')} required">
	<label for="usuarioAluno">
		<g:message code="avaliacao.usuarioAluno.label" default="Usuario Aluno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuarioAluno" name="usuarioAluno.id" from="${com.yourapp.User.list()}" optionKey="id" required="" value="${avaliacaoInstance?.usuarioAluno?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: avaliacaoInstance, field: 'aula', 'error')} required">
	<label for="aula">
		<g:message code="avaliacao.aula.label" default="Aula" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aula" name="aula.id" from="${com.yourapp.Aula.list()}" optionKey="id" required="" value="${avaliacaoInstance?.aula?.id}" class="many-to-one"/>

</div>

