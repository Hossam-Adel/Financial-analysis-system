<%@page import="dto.User"%>
<HTML>
<head>
<TITLE>Mo4</title>
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
height:1200px;
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
height:1200;
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
background-color:#99ff99;
padding-left:20;
height:50;
padding-top:50;
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

.ctus{
margin-left:100;
color:#006600;
font-size:25;
margin-top:50;
}

.contactu{
margin-left:150;
margin-top:50;
color:#007277;
border-top: 2px solid #d3d3d3;
border-bottom: 2px solid #d3d3d3 ;
padding-top:50;
padding-bottom:50;
font-size:18;
}

.address{
color:#005b5f;
}

.mail{
color:#00898e;
}

video{
width:1300;
height:295;
}
#video{
background-color:#0c0c0c;
}
</style>


</head>
<body>
<jsp:include page="header.jsp"/>
<div class="pic1"> 
<video id="video" src="video.mp4" autoplay="autoplay"  loop="loop" >
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
<div class="ctus">
<b>About Us</b>
</div>
<div class="contactu">
<h2 class="Address">Who We Are</h2>
<p>
It's a financial services website that will introduce 9 features and tools to enable small investors<br>, people who interested in the market and Undergraduates analyze and collect the desired data<br> to make the best decisions about the selected stocks in the market by using tools, calculations and charts.<br><br>
<h2 class="Address"> What We Do</h2>
Presenting the effective financial ratios for each stock (Beta, P/E, EPS, Market cap, etc.….)<br><br>
Interactive charts that will be available in two types (Line charts, candlesticks)<br><br>
Technical analysis tools (Simple Moving Average, Bollinger Bands)<br><br>
Financial ratios calculator<br><br>
Educational Blog
</p>
</div>
<jsp:include page="footer.jsp"/>
</body>
</HTML>