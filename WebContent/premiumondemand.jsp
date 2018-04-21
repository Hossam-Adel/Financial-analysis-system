

<%@page import="dto.User"%>
<HTML>

<head>
<TITLE>Mo4</title>
<style>
.ra{
width:1282;
height:2000;
}

#wrapperra{
width:1282px;
margin:auto;
height:2000;


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



.textlabell{
margin-left:20;
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





.textlabeli{
margin-left:10;
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

.intro{
float:left;
margin-left:350;
margin-bottom:20;
color:#cc8400;
font-size:18;
}
.bp{
float:left;
margin-left:350;
margin-bottom:20;
margin-top:200;
color:#7f7f00;
font-size:18;
}
.fcal{
color:#926239;
}

.hs{
color:#696969;
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

<div class="framcalc">
<h2 class="fcal">Premium On-Demand services</h2>


<h3 class="hs"> Looking for a report? Fill out the form and one of our representatives<br> will reach out to you.</h3>

<h4 style="color:#7647a2;"> Select a service that you need:</h4>

<div class="options">
<div class="ratype">
<a href="#profitab">Stock Research report</a>
</div>

<div class="ratype">
<a href="#debtr">Business related service</a>
</div>

</div>
<br>
<div class="intro" id="profitab" >The stock On Demand Reasearch report offerscost-effective solutions that would allow you to Get recommendations,ownership,deals ,private equity, estimates, fundamentals, economics, events 
</div>

<fieldset>
<form>
<h3 class="nf">Request Your report:</h3>
<p>
<label class="textlabel1">
First name:
<input type="text" name="sl" size="30" maxlength="5"  required/>
</label>
</p>

<p>
<label class="textlabel1">
Last name:
<input type="text" name="cogs" size="30" maxlength="5"  required/>
</label>
</p>
<p>
<label class="textlabel1">
Email Adress:
<input type="email" name="pr" size="30" maxlength="5"  required/>
</label>
</p>
<p>
<label class="textlabel1">
Job-title:
<input type="text" name="ni" size="30" maxlength="5"  required/>
</label>
</p>

<p>
Country:
 <select required="required">
  <option value="egypt">Egypt</option>
  <option value="saab">UAE</option>
</select> 
</p>

<p>
<label class="textlabel1">
Company name or symbol:
<input type="text" name="op" size="30" maxlength="5"  required/>
</label>
</p>
<p>
<label class="textlabel1">
Industry:
<input type="text" name="ni" size="30" maxlength="5"  required/>
</label>
</p>

<p>
Date Range:
 <select>
  <option value="week">week</option>
  <option value="month">Month</option>
  <option value="month">3 Months</option>
  <option value="month">1 year</option>
</select> 
</p>
<div id="submit1" >
<button type="submit" class="subm" >Submit</button>
</div>
</fieldset>
</form>
<div class="bp" id="debtr" > If you are struggling to make study for your upcomin own business. You need a help to make your business plan or a feasibility study to accelerate your business. 
 We have a team of experts that can reach out to you a professional studies for you.<br><br>
Just fill out that form and one our representatives will contact you shortly 
</div>
<fieldset>
<form>
<h3 class="nf">Business Related Reports</h3>
<p>
<label>
What kind of report do you need <br>
<input type="checkbox" name="service" value="Business" checked="checked"/> Business plan
<input type="checkbox" name="service" value="study" required/> Feasibility Study
</label>
</p>
<label class="textlabel1">
First name:
<input type="text" name="fn" size="30" maxlength="5"  required/>
</label>
</p>
<p>
<label class="textlabel1">
Last name:
<input type="text" name="ln" size="30" maxlength="5"  required/>
</label>
</p>
<p>
<label class="textlabel1">
Email Address:
<input type="email" name="ln" size="30" maxlength="5" required/>
</label>
</p>

<p>
<label class="textlabel1">
Industry:
<input type="text" name="industry" size="30" maxlength="5"  />
</label>
</p>

<label class="textlabel1">
legal form:
<input type="text" name="legalform" size="30" maxlength="5"  />
</label>
</p>
<div id="submit1">
<button type="submit" class="calcul" >Submit</button>
</div>

</fieldset>
</form>




</div>
<jsp:include page="footer.jsp"/>
</body>
</HTML>
