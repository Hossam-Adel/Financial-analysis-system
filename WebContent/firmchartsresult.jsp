<%@page import="dto.User"%>
<%@page import="model.Equations"%>
<%@page import="dto.Firm"%>

<HTML>
<head>
<TITLE>Mo4</title>
<%String stock= (String) request.getAttribute("stock"); %>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

      // Load the Visualization API and the piechart package.
      google.charts.load('current', {'packages':['line']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      
      var dt = <%= stock%>;
      var dt2= <%= stock%>
          
    	  var rows = [];
    	  for (i = 0; i < dt.length; i++) {
    		  var dtrow = dt[i];
    		  var row = [];

    		 row.push(dtrow.day,dtrow.close );
    		 
    		    	
    		 }
    	  for (i = 0; i < dt2.length; i++) {
    		  var dt2row = dt[i];
    		  var row2 = [];

    		 row2.push(dt2row.close );  	
    		 }        
    	  rows.push(row,row2); 
        
        function drawChart() {
    	  
    	  var data = new google.visualization.DataTable();
          data.addColumn('string', 'Day');
          data.addColumn('number', 'Juhayna');
          
          

          data.addRows(rows);
          
      

        // Set chart options
        var options = {'title':'How Much Pizza I Ate Last Night',
                       'width':600,
                       'height':300,
                       };
 
        // Instantiate and draw our chart, passing in some options.
        var chart = new google.charts.Line(document.getElementById('chartt'));
		
        function selectHandler() {
          var selectedItem = chart.getSelection()[0];
          if (selectedItem) {
            var topping = data.getValue(selectedItem.row, 0);
            alert('The user selected ' + topping);
          }
        }

        google.visualization.events.addListener(chart, 'ready', selectHandler);    
        chart.draw(data, options);
        
      }
      
  	function PrintDiv() {    
  	    var divToPrint = document.getElementById('chartt');
  	    var divToPrint2 = document.getElementById('overall');
  	    var popupWin = window.open();
  	    popupWin.document.open();
  	    popupWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML +divToPrint2.innerHTML + '</html>');
  	     popupWin.document.close();
  	         }
      </script>
<style>
body{
font-family:   'Futura Std';
margin-top:0;
}
@font-face{
font-family:Futura Std Medium ;
src:url(FuturaStd-Medium.otf);
}
a{

	color:#555;

	text-decoration:none;

}
a:hover{

	color:#fff;

	}
nav{
float:right;
}
nav ul{
font-size:0.8vw;
}
.ssub li{
display:inline;
letter-spacing:0.2vw;
padding:9px;
}
#wrapper{

width:1282px;
margin:auto;
height:1100px;
}

#social li{
display:inline;
}
#social{
margin-top:10px;
width:200px;
}
#logo{
text-align:center;
height:135;
}

#header{
}



nav ul li a.ff99cc:hover{
			background-color:#ff99cc;
			}
nav ul li a.c66ffcc:hover{
			background-color:#66ffcc;
			}
nav ul li a.cc99ff:hover{
			background-color:#cc99ff;
			}
nav ul li a.ffcc99:hover{
			background-color:#ffcc99;
			}

	.main-nav ul li a.a:hover{
			background-color:#ff99cc;
			}			

.main-nav ul li a.b:hover{
			background-color:#66ffcc;
			}			

.main-nav ul li a.c:hover{
			background-color:#cc99ff;
			}			

			
.main-nav ul li a.d:hover{
			background-color:#ffcc99;
			}						

			
.main-nav ul li a.e:hover{
			background-color:#66ffcc;
			}



.main-nav ul li a.f:hover{
			background-color:#cc99ff;
			}	



.main-nav ul li a.g:hover{
			background-color:#ffcc99;
			}						
			
			
.main-nav ul li a.h:hover{
			background-color:#ff99cc;
			}
.main-nav{
width:100%;
font-size: 1;
letter-spacing: 0.3vw;
text-transform: uppercase;
border-top: 1px solid #ccc;
padding-right:5px;
font-weight:500;
}		

.main-nav ul li{
font-size:120%;
font-weight:500;
}	
.menusch{
margin-left:25;
}
.compare{
margin-left:25;
}
.pic{
clear:both;
width:1170;
height:340;
padding-left:100;
background:url(pano.png);
background-repeat: no-repeat;
background-position:center;
}

.footer {
    padding-top:50;
    background-color:#eee1f7;
    color: #999	;
	height:160;
	font-family: 'Futura Std';
	clear:both;margin:20px auto 0px auto;
	width: 94.9%;
	font-size:1vw;
	letter-spacing: 0.05vw;
	}
	
	
article{
width:1282;
height:1100;
}

.footer-logo{
float:left;
width:45%;
height:150;
}

.footer-left{
width:56%;
display:inline-block;

	vertical-align:top;
}



.links{
display: inline-block;
	vertical-align: top;
	margin-left: 7%;
	padding-left: 7%;
	-moz-column-count: 2;
	-moz-column-gap: 2;
	-webkit-column-count: 2;
	-webkit-column-gap: 2;
	column-count: 2;
	column-gap: 2;
	border-right:1px dashed #555;
	border-left:1px dashed #555;

}

.links li{
color: #555;

    text-transform: uppercase;

    font-size:12;

    line-height: 120%;

    padding-bottom:3%;
	list-style:none;
}

.links li a{

}

.searchform{
float:right;
}

#v{
padding-top:270;
margin-left:380;

}

.i{
margin-left:60;
margin-bottom:5;
}

#mar{
margin-left:120;
color:#00898e;
font-style:bold;
width:800;
margin-top:-10;
}

.ppp{
float:left;
}

.status{
color:red;
padding-top:10;
font-size:15;
width:800;
}

#l{
float:right;
width:250;
margin-top:-40;
margin-right:120;
}

.dropbtn {
    background-color: transparent;
    color: white;
    padding: 16px;
        border: none;
    cursor: pointer;
	
	
}


/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
	float:right;
width:350;
height:60;
margin-top:-60;
margin-right:120;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color:white;
    width: 300px;
	height:300px;
	
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
    color: black;
    padding:1px 16px;
    text-decoration: none;
    display: block;
}


/* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
.show {display:block;}



.hf{
color:#885ead;
font-size:14;
}

input{
margin-bottom:;
}

.checkbox{
float:left;
color:#885ead;
margin-bottom:10;
}
.tex{
margin-bottom:10;
}
#forg a{
color:#bba3d0;
}
#forg{
margin-bottom:20;
}

button{
margin-left:80;
background-color:#7647a2;
color:white;
border:none;
cursor:pointer;
padding-left:20;
padding-right:20;
padding-top:5;
padding-bottom:5;
}

.ii{
margin-left:20;
color:#bba3d0;
}

.ii a{
color:#885ead;
}
.f{
color:#00a0a6;
}

.main-nav
{
	margin-top:
}

.main-nav ul
{
	list-style:none;
	position:relative;
	float:left;
	margin:0;
	padding-left:80;
}

.main-nav ul a
{
	display:block;
	
	text-decoration:none;
	
	font-size:12px;
	
	margin-top:10;
	margin-right:30;
	
}

.main-nav ul li
{
	position:relative;
	float:left;
	margin:0;
	padding:0
}





.main-nav ul ul
{
	display:none;
	position:absolute;
	
	left:0;
	background-color:#dbd0b6;
	padding:0
}

.main-nav ul ul li
{
	float:none;
	width:150px;
	padding-left:5;
	
	
}

.main-nav ul li:hover > ul
{
	display:block
	
}
.contact{
float:right;
margin-right:80;
color:#555;
}
.el{
color:#635664;
margin-left:50;
margin-top:40;
}

td{
width:150;
padding-bottom:10;
padding-top:10;
}

table{
margin-left:20;
margin-top:50;
}

.eq{
background-color:#bba3d0;
color:white;
}

.sto{
background-color:#dbdbdb;
}

table a:hover{
color:#555;
}

.cl{
color:red;
}

.clh{
color:green;
}

.vie{
color:#26867c;
font-size:15;
}

h2 a:hover{
color:#26867c;
}

.com{
color:#939393;
}

.cu{
width:30;
font-size:12;
margin-left:60;
font-family:'Futura Std';
color:#4c3100;
}

.ell{
margin-left:60;
margin-top:50;
color:white;
}

#sih{
background-color:#00a0a6;
}

input{
border-radius:5px;
}

.textlabel{

width:20em;
float:left;
text-align:right;
margin-right:10px;
padding-bottom:10px;
margin-bottom:10;
}
#container input{
margin-left:10px;
}
fieldset{
width:600;
margin-left:350;
padding-left:10;
margin-top:50;
}

input:hover{
background-color:#e5e5e5;
}

#submit{
margin-left:200px;
}

#wrappersign{
width:1282px;
margin:auto;
height:1000px;
}

.articlesign{
width:1282px;
height:1000px;
}

.items ul li{
padding-bottom:30;
color:white;
}
.over {
list-style-image:url(ov.png);
}
.holding {
list-style-image:url(hold.png);
}
.anl{
list-style-image:url(analys.png);
}
.fil{
list-style-image:url(filter.png);
}
.corre{
list-style-image:url(cor.png);
}
.calc{
list-style-image:url(cal.png);
}
.items{
width:200;
height:310;
background-color:#333333;
padding-top:10;
margin-left:;
}


.items a{
color:white;
}
.elw{
color:white;
margin-left:50;
margin-top:40;
background-color:#333333;
padding-left:20;
height:45;
}


.tri{
font-size:12;
}

.textlabelp{
margin-left:20;
}

.textlabell{
margin-left:20;
}

.fcal{
margin-bottom:20;
color:#926239;
}

.tei{
margin-bottom:50;
margin-top:20;
color:#7a5230;
}

#fcalc{
margin-left:250;
border:1px solid #ffe4b2;
padding-left:40;
color:#4c3100;
padding-top:20;
}

#fcalc1{
margin-top:100;
margin-left:250;
border:1px solid #ffe4b2;
padding-left:40;
color:#4c3100;
padding-top:20;

}
.framcalc{
width:1000;
}

.nf{
color:#7f5200;
}

.sd{
color:#aa7243;
}

#submit1{
margin-top:10;
margin-left:;
padding-bottom:10;
}

.calcul{
background-color:#6666b2;
width:130;
height:35;
}

.cancel{
background-color:#7e7e7e;
width:100;
height:35;
}

#filldetails:hover{
color:#555;
}

.textlabeli{
margin-left:10;
}

#timep{
border:1px solid #7e7e7e;
width:500;
padding-left:10;
padding-bottom:10;
color:#8996F2;
}

.hist{
color:#1564b2;
}

#fcalcc{
margin-left:250;
border:1px solid #ffe4b2;
padding-left:40;
color:#1564b2;
padding-top:20;
}

.fcalh{
margin-bottom:20;
color:#0c3966;
}

.sections ul li{
list-style:none;
display:inline;
margin-left:25;
border-left:1px solid #696969;
padding-left:10;
}

.sections{
margin-left:60;
margin-top:20;
border-bottom:2px solid #c3834c;
width:660;
}
.sections a{
color:#125699;
}
.sections a:hover{
color:#8e4600;
}

.sechead{
width:700;
margin-left:50;
padding-bottom:;
}

.quotedet{
font-size:12;
width:165;
height:100;
float:left;
}

.stockpr{
font-size:20;
}

.chgtime{
font-size:10;
}

.quotedet{
border-right:1px solid #a8a8a8;
}

#quotegeneral{
margin-left:100;
margin-top:20;
border-bottom:2px solid #a8a8a8;
height:110;
width:850;
}

.pricechg{
font-size:12;
width:155;
height:100;
float:left;
border-right:1px solid #a8a8a8;
padding-left:5;
}

.pvalue{
font-size:19;
}

.pprecent{
font-size:14;
}


.neg{
color:#DC0A0A;
}

.topr{
height:50;
border-bottom:1px dashed #a8a8a8;
}

.prv{
font-size:14;
}

.downo{
padding-top:5;
}

.clop{
font-size:12;
width:150;
height:100;
float:left;
border-right:1px solid #a8a8a8;
padding-left:10;
padding-right:10;
}

.gre{
color:#458D37;
}

.hlop{
font-size:12;
width:150;
height:100;
float:left;
padding-left:10;
padding-right:10;
}

.chartt{
margin-left:70;
margin-top:30;
float:left;
}

.aboutt{
color:#666666;
font-size:12;
width:400;
float:left;
margin-left:40;
margin-top:30;
}

.overa{
clear:both;
float:left;
font-size:12;
margin-top:20;
margin-right:25;
}

.overaa{
float:left;
font-size:12;
margin-top:20;
}

.overaa td{
border-bottom:1px dashed #00898e;
}

.overa td{
border-bottom:1px dashed #00898e;
}

.overall{
margin-left:100;
float:left;
width:900;
border-bottom:2px solid #CCCCCC;
padding-bottom:5;
}

.menusch{
color:red;
margin-bottom:20;
margin-top:20;
margin-right:10;
float:left;
}
.indicator{
margin-top:20;
width:330;
height:40;
float:left;
}
.compare{
clear:both;
margin-top:20;
}
.draw{
margin-top:20;
}

.draw a:hover{
color:#00898e;
}

.graphc{
margin-top:40;
margin-left:50;
}

.men{
margin-left:50;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="pic1">  
<img src="pr.jpg">
</div>
<div id="mar">
 <img class="ppp" src="m.png"> <p class="status"> Closed</p>
</div>

<%
User user = (User)session.getAttribute("user");
if(user == null){
%>
<jsp:include page="sigin.jsp"/>
<%}else{ %>
<jsp:include page="logedin.jsp"/>
<%} %>
<div class="profc">
<div class="sechead">
<%Firm f = (Firm)request.getAttribute("firm");
      Equations eqn = new Equations();
      %>
<h1><%=f.getName() %>(<%=f.getStock().getSymbol() %>)</h1>
</div>
<div class="sections">

<ul>

				<li> <a href="firmpro?id=<%=f.getId()%>"> Overview </a></li>
				<li> <a href="financials?id=<%=f.getId()%>"> Financials </a> </li>
				<li> <a href="firmchart?id=<%=f.getId()%>"> Charts </a> </li>
				<li> <a href="firmhistorica?id=<%=f.getId()%>">Historical price</a> </li>
				

</ul>
</div>
<div id="quotegeneral">
<div class="quotedet">

<p><b><%=f.getStock().getSymbol() %> on <%=f.getSector() %> Stock Exchange</b></p>
<p class="stockpr"><b><%=f.getStock().getClose() %></b><span style="font-size:12;">EGP </span><br><span class="chgtime"><%=f.getStock().getDay() %></span> </p>
</div>
<div class="pricechg">
<p class="pricedetl"><b>Change (% chg)</b></p>
<p class="pvalue">
<span class="neg">
<b><%=f.getStock().getClose() - f.getStock().getPrev_close() %></b>
<span class="pprecent"><%= (f.getStock().getClose()-f.getStock().getPrev_close())/f.getStock().getPrev_close() * 100%>%</span></p>
</span>
</div>
<div class="clop">
<div class="topr">
<span class="prv"> <b>Prev Close <br><%=f.getStock().getPrev_close() %> EGP</b></span>
</div>
<div class="downo">
<span class="prv"> <b>Open <br><%=f.getStock().getOpen() %> EGP</b></span>
</div>
</div>

<div class="clop">
<div class="topr">
<span class="prv"> <b>Day's High <br><span class="gre"><%=f.getStock().getHigh() %></b></span></span>
</div>
<div class="downo">
<span class="prv"> <b>Day's Low <br><span class="neg"><%=f.getStock().getLow() %></b></span> </span>
</div>
</div>

<div class="hlop">
<div class="topr">
<span class="prv"> <b>52-wk High<br><span class="gre">9.37 EGP</b></span></span>
</div>
<div class="downo">
<span class="prv"> <b>52-wk Low <br><span class="neg">3.06 EGP</b></span> </span>
</div>
</div>
</div>

</div>
<form method="get" action="firmcandlestick">
<div class="menusch">
Chart-Style:
<select name="chartstyle">

<option value="candlestick">candlestick</option>
</select>
<button type="submit" class="calcul1" >Apply</button>
</div>
</form>

<div class="indicator">
Indicator:
<input type="checkbox" name="s" value="sma"/>SMA
<input type="checkbox" name="b" value="bb" />Bollinger-Band

</div>


<form method="post" action="firmcomparison">
<div class="Compare">
Compare:
<input type="text" size="30" placeholder="firm name" name="compare">
<button type="submit" class="calcul1" id="add" >Compare</button>
</div>
</form>
<div class="chartt"id="chartt" style="width:600; height:300;align:left"></div>
</div>
</body>

</HTML>
<jsp:include page="footer.jsp"/>
