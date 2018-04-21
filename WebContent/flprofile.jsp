<%@page import="dto.User"%>
<HTML>
<head>
<TITLE>THE STOCK</title>

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
width:200;
height:300;
padding-left:100;
background:url(photo.jpg.png);
background-repeat: no-repeat;
background-position:left;
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

.homepic{
margin-top:100;
margin-left:250;
background-image:url(map.png);
width:750;
height:350;
}

.headh{
margin-left:250;
}

.eg{
margin-left:340;
margin-top:;
width:70;
height:20;
}

.uae{
margin-left:450;
margin-top:110;
width:70;
height:20;
}
.homepic a:hover{
color:#b27300;
}

.premium{
width:380;
height:200;
color:#b27300;
border:2px dashed #ffdb99;
padding-left:10;
float:left;
margin-right:30;
}

.preim{
margin-left:90;
}

.ours{
color:#664200;
margin-left:50;
}

.our{
margin-top:50;
}

.homepic{
margin-top:100;
}
</style>
</head>
<body>


<jsp:include page="header.jsp"/>

<center> <script>
document.write(Date());
</script>  </center>
<br>





<article>
<div class="pic"> 
<div id="v">
  <a href="view market.html"><img src="v.png" alt="view" ></a>  
  </div>

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

<h1> offers for jobs </h1>

<marquee scrollamount="5" direction="up">
<a href="single.html" ="">

   <h3>  WANT FINANCIAL PLAN  </h3>
  </a> 
<a href="single.html" ="">

   <h3>REQUEST FINANCIAL ADVISOR  </h3>
  </a> 
<a href="breaking.html" ="">

   <h3>  I NEED RECOMMENDATIONS  </h3>
  </a> 
<a href="breaking.html" ="">

   <h3>  HELP ME IN BUSIENSS PLAN  </h3>
  </a> 
<a href="single.html" ="">

   <h3>  I NEED TO BE FINANCIAL ANALYST </h3>
  </a> 
<a href="breaking.html" ="">

   <h3>  FINANCIAL REPORT </h3>
  </a> 
<a href="single.html" ="">

   <h3>  TECHNICAL REPORT </h3>
  </a> 
<a href="breaking.html" ="">

   <h3>  FEASIBILITY STYDY </h3>
  </a> 
 
  
  </marquee>




<marquee scrollamount="5" direction="left">
<a href="index.html" ="">

   <img src="za.jpg" width="140" height="142">
  </a> 
<a href="short-codes.html" ="">

   <img src="5985683_orig.jpg" width="140" height="142">
  </a> 
<a href="icons.html" ="">

   <img src="Corporate-Finance-and-Accounting_11.png" width="140" height="142">
  </a> 
<a href="index.html" ="">

   <img src="cx.jpg" width="140" height="142">
  </a> 
<a href="short-codes.html" ="">

   <img src="Fotolia_26772395_XS.jpg" width="140" height="142">
  </a> 
<a href="icons.html" ="">

   <img src="ganar-dinero-con-forex.jpg" width="140" height="142">
  </a> 
<a href="index.html" ="">

   <img src="zz.png" width="140" height="142">
  </a> 
<a href="icons.html" ="">

   <img src="zx.jpg" width="140" height="142">
  </a> 
<a href="short-codes.html" ="">

   <img src="zv.jpg" width="140" height="142">
  </a> 
  
  </marquee>



<div class="homepic">
<h2 class="ours"> Our Stock Market Coverage </h2>
<div class="uae"><a href="listing-dubai.html">UAE</a>
<img src="ae.png" width="20" height="20">
</div>
<div class="eg"><a href="listing-eg.html">Egypt</a>
<img src="e.png" width="20" height="20">
</div>
</div>

<div class="our">
<h1 class="ours">Our Services</h1>
<div class="premium">
<img class="preim" src="pre.png" width="70" height="70"><br>
<p>
<span style="color:#664200; padding-left:20;">Premium Research & Analysis</span><br><br>

We'll help you make the right investment moves by providing the technical reports and financial researches prepared by specialized analysts.

</p>
</div>
<div class="premium">
<img class="preim" src="stock.png" width="70" height="70"><br>
<p>
<span style="color:#664200; padding-left:20;">Stock Market Analysis Tools</span><br><br>

We have a wide range of tools to make you all caught up to the latest changes in the market as fundamentals, charts, indicators, calculations and much more....

</p>
</div>
<div class="premium">
<img class="preim" src="freelance.png" width="70" height="70"><br>
<p>
<span style="color:#664200; padding-left:20;">Business Consulting and freelacing services</span><br><br>

We offer you a help in your business plan or feasibility study for your new project. Also, we have a freelancing service in a various fields

</p>
</div>

</div>
<jsp:include page="footer.jsp"/>
</body>
</HTML>
