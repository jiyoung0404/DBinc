<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">		<!-- 뷰포트 -->
	<meta name="viewport" content="width=device-width" initial-scale="1">	<!-- 스타일시트 참조  -->
	<link rel="stylesheet" href="css/bootstrap.css">    
    <title>글쓰기 | U&I</title>
    <%@include file = "header/header_head.jsp" %>
    
    <script>
	var xE = {};

	function xFn(e)
	{
		xE.w.focus();

		var c = e.innerHTML,
			a = c + '<br>queryCommandSupported : ' + xE.d.queryCommandSupported(c);

		e = e.nextSibling;
		e = e.nodeName.toLowerCase() == 'input' ? e.value : null;

		a += '<br>queryCommandEnabled : ';
		try { a += xE.d.queryCommandEnabled(c); } catch (x) { a += 'Error : ' + x.message; }
		a += '<br>queryCommandState : ';
		try { a += xE.d.queryCommandState(c); } catch (x) { a += 'Error : ' + x.message; }
		a += '<br>queryCommandValue : ';
		try { a += xE.d.queryCommandValue(c); } catch (x) { a += 'Error : ' + x.message; }
		a += '<br>execCommand : ';
		try { a += xE.d.execCommand(c, false, e); } catch (x) { a += 'Error : ' + x.message; }

		xE.m.innerHTML = a;
	}

	function xHv()
	{
		xE.m.innerHTML =
			xE.d.body.innerHTML
				.replace(/&/g, '&amp;')
				.replace(/</g, '&lt;')
				.replace(/>/g, '&gt;')
	}

		window.onload = function()
		{
			xE.w = document.getElementById('yF').contentWindow;
			xE.d = xE.w.document;
	
			xE.d.write('<!DOCTYPE html><html><head></head><body></body></html>');
			xE.d.designMode = 'on';
	
			xE.m = document.getElementById('yM');
	
			xE.w.focus();
		}
	</script>

</head>
<body>
	<%@include file = "header/header_body.jsp" %>
	
	<!-- 게시판 -->
	<div class="container">
		<div class="row">
			<form method="post" action="writeAction.jsp">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">

					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">게시판
								글쓰기 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"/></td>
						</tr>

						<tr>
							<td>
								<!DOCTYPE html>
<body>
<div style="padding:2px">
<button type=button onclick="xFn(this)">backColor</button><input type=text size=8>
<button type=button onclick="xFn(this)">bold</button>
<button type=button onclick="xFn(this)">copy</button>
<button type=button onclick="xFn(this)">createLink</button><input type=text size=16>
<button type=button onclick="xFn(this)">cut</button>
<button type=button onclick="xFn(this)">decreaseFontSize</button>
<button type=button onclick="xFn(this)">delete</button>
<button type=button onclick="xFn(this)">enableInlineTableEditing</button>
<button type=button onclick="xFn(this)">enableObjectResizing</button>
<button type=button onclick="xFn(this)">fontName</button><input type=text size=8>
<button type=button onclick="xFn(this)">fontSize</button><input type=text size=2>
<button type=button onclick="xFn(this)">foreColor</button><input type=text size=8>
<button type=button onclick="xFn(this)">formatBlock</button><input type=text size=8>
<button type=button onclick="xFn(this)">forwardDelete</button>
<button type=button onclick="xFn(this)">heading</button><input type=text size=3>
<button type=button onclick="xFn(this)">hiliteColor</button><input type=text size=8>
<button type=button onclick="xFn(this)">increaseFontSize</button>
<button type=button onclick="xFn(this)">indent</button>
<button type=button onclick="xFn(this)">insertBrOnReturn</button>
<button type=button onclick="xFn(this)">insertHorizontalRule</button>
<button type=button onclick="xFn(this)">insertHTML</button><input type=text size=16>
<button type=button onclick="xFn(this)">insertImage</button><input type=text size=16>
<button type=button onclick="xFn(this)">insertOrderedList</button>
<button type=button onclick="xFn(this)">insertUnorderedList</button>
<button type=button onclick="xFn(this)">insertParagraph</button>
<button type=button onclick="xFn(this)">insertText</button><input type=text size=16>
<button type=button onclick="xFn(this)">italic</button>
<button type=button onclick="xFn(this)">justifyCenter</button>
<button type=button onclick="xFn(this)">justifyFull</button>
<button type=button onclick="xFn(this)">justifyLeft</button>
<button type=button onclick="xFn(this)">justifyRight</button>
<button type=button onclick="xFn(this)">outdent</button>
<button type=button onclick="xFn(this)">paste</button>
<button type=button onclick="xFn(this)">redo</button>
<button type=button onclick="xFn(this)">removeFormat</button>
<button type=button onclick="xFn(this)">selectAll</button>
<button type=button onclick="xFn(this)">strikeThrough</button>
<button type=button onclick="xFn(this)">subscript</button>
<button type=button onclick="xFn(this)">superscript</button>
<button type=button onclick="xFn(this)">underline</button>
<button type=button onclick="xFn(this)">undo</button>
<button type=button onclick="xFn(this)">unlink</button>
<button type=button onclick="xHv()">HTML</button>
</div>
<iframe id=yF src="about:blank" style="box-sizing:border-box;border:1px solid #999;padding:2px;width:100%;height:150px;"></iframe>
<div id=yM style="padding:2px"></div>
								<textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height: 350px;"></textarea>
							</td>
						</tr>
					</tbody>
				</table>	
				<input type="submit" class="btn btn-primary pull-right" value="글쓰기" />
			</form>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>