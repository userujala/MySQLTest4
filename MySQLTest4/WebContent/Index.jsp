<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CG-DashBoard</title>
<link href='http://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
<style type="text/css">
table, td, th
{
border:1px solid green;
font-family: 'Oxygen', sans-serif;
}
th
{
background-color:green;
color:white;
}
body
{
 text-align: center;
}
.container
{
	margin-left: auto;
	margin-right: auto;
	width: 40em;
}

</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
 $("#tablediv").hide();
     $("#showTable").click(function(event){
           $.get('PopulateTable',function(responseJson) {
            if(responseJson!=null){
                $("#serverstat").find("tr:gt(0)").remove();
                var table1 = $("#serverstat");
                $.each(responseJson, function(key,value) {
                     var rowNew = $("<tr><td></td><td></td></tr>");
                      //  rowNew.children().eq(0).text(value['id']);
                        rowNew.children().eq(0).text(value['servername']);
                      //  rowNew.children().eq(2).text(value['hostname']);
                        rowNew.children().eq(1).text(value['status']);
                        rowNew.appendTo(table1);
                });
                }
            });
            $("#tablediv").show();         
  });     
});
</script>

</head>
<body class="container">
<input type="button" value="Server Status" id="showTable"/>
<div id="tablediv">
<table id="serverstat">
    <tr>
      <!--  <th scope="col">ID</th> -->
        <th scope="col">ServerName</th>    
      <!--   <th scope="col">HostName</th> -->
        <th scope="col">Status</th>     
    </tr>
</table>
</div>
</body>
</html>