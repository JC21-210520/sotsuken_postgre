<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:useBean id="bean" class="query.Bean" scope="request" />
    <link href="style.css" rel="stylesheet">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>機能5結果</title>
</head>
<body>
<a href="./index.jsp">機能選択に戻る</a>

<h3>表示件数 <%=bean.getTrade_date_List().size() %>件</h3>
	
	<table>	
	<tbody>
		<tr class = "under">
			<td>年月</td>
			<td>輸出 0 /輸入 1</td>
			<td>国コード</td>
			<td>関税</td>
			<td>HSコード</td>
			<td>第1単位</td>
			<td>第2単位</td>
			<td>金額</td>
		</tr>

		<% for(int i = 0; i < bean.getTrade_date_List().size(); i++){ %>
	  		<tr>
	  			<td><%=bean.getTrade_date_List().get(i)  %></td>
	  			
	  			<td><%=bean.getImport_export_code_List().get(i)  %></td>
	  			
	  			<td><%=bean.getCountry_code_List().get(i)  %></td>
	  			
	  			<td><%=bean.getCustoms_code_List().get(i)  %></td>
	  			
	  			<td><%=bean.getHs_code_List().get(i)  %></td>
	  			
	  			<td><%=bean.getUnit1_List().get(i)  %></td>
	  			
	  			<td><%=bean.getUnit2_List().get(i)  %></td>
	  			
	  			<td><%=bean.getTransaction_price_List().get(i)  %> 百万</td>
	  		</tr>
	  	<% } %>

	</tbody>
	</table>

</body>
</html>