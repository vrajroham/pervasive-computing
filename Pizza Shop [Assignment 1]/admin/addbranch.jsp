<html>
  <head>
   <title>Pizza Center</title>
  </head>
  <body bgcolor="black"><br><br>
	<font color="white"><center><h1>Administrator : Add New Branch</h1></center>
	<hr width="60%">
	<div style="margin-left:270px;">
		<form action="doAddBranches.jsp" method="post">
		<h3>Branch Name : <input type="text" name="bname" placeholder="Enter Branch Name" style="margin-left:50px;" autofocus></h3>
		<h3>Branch Location : <input type="text" name="blocation" placeholder="Enter Branch Location" style="margin-left:18px;"></h3>		<h3>Branch Details : <textarea placeholder="Enter Branch Details" name="bdetail" style="margin-left:38px;" cols=25></textarea></h3>
		<input type="submit" value="Add Branch"> | <input type="reset" value="Reset Form">
		</form>
	</div>	
	<hr width=60%>
	<center><h2>Active Branches </h2></center>
	<div style="margin-left:270px; margin-right:270px;">
	<table width=100% border=0 id="blist">
		<tr bgcolor="brown">
			<th><font color="white">#</font></th>
			<th><font color="white">Branch Name</font></th>
			<th><font color="white">Branch Location</font></th>
		</tr>
		
	</table>
	</div>
<script>
if (window.XMLHttpRequest)
		  {
		  xmlhttp=new XMLHttpRequest();
		  }
		else
		  {
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
			xmlhttp.open("GET","../branches.xml",false);
			xmlhttp.send();
			xmlDoc=xmlhttp.responseXML; 
			txt="";	
			var bname,bloc;
			itemcnt=xmlDoc.getElementsByTagName("item");
			for(i=0;i<itemcnt.length;i++){
				bname=xmlDoc.getElementsByTagName("item")[i].getAttribute("bname");
				bloc=xmlDoc.getElementsByTagName("item")[i].getAttribute("blocation");
				additem("blist",bname,bloc);
var table = document.getElementById(tableID);
					var rowCount = table.rows.length;
					var row = table.insertRow(rowCount);

					var cell1 = row.insertCell(0);
					var element1 = document.createElement("label");
					element1.type = "label";
					element1.name="label";
					element3.innerHTML="<center><b><font color=white>" +bnames;
					cell1.appendChild(element1);

					var cell2 = row.insertCell(1);
					var element3 = document.createElement("label");
					element3.type = "label";
					element3.id= "label";
					element3.name = "label";
					element3.innerHTML="<center><b><font color=white>" + blocs;
					cell2.appendChild(element3);
			}
			

			function additem(tableID,bnames,blocs) {
					
					var table = document.getElementById(tableID);
					var rowCount = table.rows.length;
					var row = table.insertRow(rowCount);

					var cell1 = row.insertCell(0);
					var element1 = document.createElement("label");
					element1.type = "label";
					element1.name="label";
					element3.innerHTML="<center><b><font color=white>" +bnames;
					cell1.appendChild(element1);

					var cell2 = row.insertCell(1);
					var element3 = document.createElement("label");
					element3.type = "label";
					element3.id= "label";
					element3.name = "label";
					element3.innerHTML="<center><b><font color=white>" + blocs;
					cell2.appendChild(element3);
				}
</script>
</body>
</html>
