<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>

<script type="text/javascript">
<!--
	function testInnerHTML() {

		var str = "";

		str += "<table>";

		str += "<tr>";

		str += "<td>";

		str += "HTML 태그를 삽입할 수 있습니다.";

		str += "</td>";

		str += "</tr>";

		str += "</table>";

		document.getElementById("inHere").innerHTML = str;

	}
//-->
</script>

</head>

<body>

	<table width="100%" border="0" cellspacing="0" cellpadding="0">

		<tr>

			<td width="100%">
				<input type="button" name="btn" value="클릭 시 innerHTML 출력" onclick="javascript:testInnerHTML();">
				<div id="inHere"></div>
			</td>
		</tr>

	</table>

</body>

</html>