<%@page import="java.util.ArrayList"%>
<%@page import="dto.Firm"%>
<%@page import="dto.User"%>
<%@page import="dto.Ratios"%>
<HTML>
<head>
<TITLE>THE STOCK</title>
<link rel="stylesheet" href="ggg.css" type="text/css"> 
<style>
.ra{
width:1282;
height:2600;
}

#wrapperra{
width:1282px;
margin:auto;
height:2200px;


}

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
height:1300px;
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

.pic{
clear:both;
width:1170;
height:340;
padding-left:100;
background:url(pano.png);
background-repeat: no-repeat;
background-position:center;
}


	
article{
width:1282;
height:1300;
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
	
	
	column-count: 2;
	
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
margin-top:0;
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
height:250;
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

.Results{

margin-left:150;
color:#005b5f;
}

.ratype{
float:left;
padding-left:20;
padding-right:20;
margin-bottom:50;
border-right:1px solid #c3834c;
}
.ratype a{
color:#125699;
}
.ratype a:hover{
color:#8e4600;
}
.outer {
  position:absolute;
  top: 430px;
  left: 250px;
  
  opacity: 1;
  width:1000;
}
</style>

</head>
<body>

<jsp:include page="header.jsp"/>





<center> <script>
document.write(Date());
</script>  </center>
<br>
<%if(session.getAttribute("user")==null){
		RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
	   rd.forward(request,response);
	  
} %>
<%User user = (User)session.getAttribute("user"); %>

<div class="pic1"> 
<h2 class="elw">STOCK WATCHLIST </h2>
</div>
<div id="mar">
 <img class="ppp" src="m.png"> <p class="status"> Closed</p>
</div>

<div class="outer" style="height: 70px">

<h2 class="fcal">Beta filter</h2>
<form class="myform" method="POST" action="search" >
<p>
<label class="textlabel1">
from:
<input type="text" name="beta1" size="30"   />
to:
<input type="text" name="beta2" size="30"   />
</label>
<button type="submit" class="calcul" >search</button>
</p>
</form>
<table>
<tr class="eq">
<th>Company</th>
<th>Industry</th>
<th>Market</th>
<th>Beta</th>
</tr>
<%if(request.getAttribute("array")!=null){ %>
<%ArrayList<Firm> al = (ArrayList<Firm>)request.getAttribute("array");
for(int i=0;al.size()>i;i++){
Firm firm = al.get(i);
%>
<tr >
<td align="center"><a href="firmpro?id=<%=firm.getId()%>"><%=firm.getName() %></a></td>
<td align="center" ><%= firm.getSector() %></td>
<td align="center" ><%= firm.getMarket() %></td>
<td align="center" ><%= firm.getBeta() %></td>
</tr>
<%} }else{%>
<% } %>
</table>
</div>
<div class="items">
<ul>
			<li class="holding"><a href="watchlist">My Holdings</a></li>
			<li class="fil"><a href="search">Filter</a></li>
			<li class="corre"><a onclick="myFunction(3)" href="#">correlation</a></li>
			</ul>
</div>

<div id="donutchart" style="width: 900px; height: 500px;"></div>
<jsp:include page="footer.jsp"/>
</body>
</HTML>
