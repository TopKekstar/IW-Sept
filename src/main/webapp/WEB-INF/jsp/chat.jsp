<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<script>
window.onload = function() {
	// code in here will only be executed when page fully loaded
	console.log("entered into chat");

	var socket = new WebSocket("${endpoint}");
	$("#escrito").submit(function (e) {
		var t = $("#texto").val();
		socket.send(t);
		$("#texto").val("");
		e.preventDefault(); // avoid actual submit
	});
	socket.onmessage = function(e) {
		var ta = $("#recibido");
		ta.val(ta.val() + '\n' + e.data);
	}
}
</script>

<div class="starter-template">
	<h1>Chat</h1>

	<input id="texto" size="80" placeholder="escribe algo y pulsa enter para enviarlo"/>
</div>

<%@ include file="../jspf/footer.jspf"%>
