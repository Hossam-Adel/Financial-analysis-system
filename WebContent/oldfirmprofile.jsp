<%@page import="model.Equations"%>
<%@page import="dto.Firm"%>


<HTML>
<head>
<TITLE>the stock</title>
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
</style>
<%Firm f = (Firm)request.getAttribute("firm");
      Equations eqn = new Equations();
      String stock = (String) request.getAttribute("stock");
      %>
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
      
          
    	  var rows = [];
    	  for (i = 0; i < dt.length; i++) {
    		  var dtrow = dt[i];
    		  var row = [];

    		 row.push(dtrow.day,dtrow.close );
    		 
    		 rows.push(row);    	
    		 }
    	  
    	  
      
      
      
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
        var chart = new google.charts.Line(document.getElementById('chart_div'));
		
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
      function myFunction() {
    	    document.getElementById("myDropdown").classList.toggle("show");
    	}
    	addEvent(selectContainer, "change", filterChar, false);

    	function filterChar(e){
    	    var select = e.target;
    	    alert("The selected item was index "+select.selectedIndex);
    	}
    	window.onclick = function(event) {
    	  if (!event.target.matches('.dropbtn')) {

    	    var dropdowns = document.getElementsByClassName("dropdown-content");
    	    var i;
    	    for (i = 0; i < dropdowns.length; i++) {
    	      var openDropdown = dropdowns[i];
    	      if (openDropdown.classList.contains('show')) {
    	        openDropdown.classList.remove('show');
    	      }
    	    }
    	  }
    	}
    	function PrintDiv() {    
    	    var divToPrint = document.getElementById('home');
    	    var popupWin = window.open();
    	    popupWin.document.open();
    	    popupWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</html>');
    	     popupWin.document.close();
    	         }
    	</script>


</head>


      
<body >
<div id="wrapper">
<div id="header">
<nav class="ssub">
<ul>

				<li> <a href="aboutus"  class="ff99cc"> ABOUT US </a></li>
				<li> <a href="clients.html" class="cc99ff"> CLIENTS </a> </li>
				<li> <a href="career.html" class="ffcc99"> CAREERS </a> </li>
				<li> <a href="contactus.html" class="c66ffcc"> CONTACT US </a> </li>

				

</ul>

</nav>
<div id="social">
<ul>           <li> <a href="http://www.facebook.com"><img src="fa.png" alt="facebook"></a> </li>
               <li><a href="http://www.twitter.com"> <img src="tw.png" alt="twitter"> </a></li>
               <li><a href="http://www.instagram.com"><img src="in.png" alt="instagram"></a> </li>
			   <li><a href="http://www.snapchat.com"><img src="sn.png" alt="snapchat"></a> </li>
</ul>
</div>
<div id="logo">
<img class="i" src="ch1.png" alt="logo" height="150" align="center">
<div class="search-wrap">



</div>
</div>

<nav class="main-nav">

		<ul>

			<li> <a href="home.html" class="a">  Home </a> </li>
		 <li> <a href="markets.html" class="b" >Markets </a>
		 <ul>
      <li><a href="Egypt.html">Egypt</a></li>
      <li><a href="dubai market .html">UAE</a></li>
      
      
      
      
    </ul>
		 </li>
		 
			<li> <a href="listings.html" class="c" >awareness  </a> 
			<ul>
      <li><a href="Egypt.html">CFA</a></li>
      <li><a href="uae.html">technical courses </a></li>  
    </ul>
			</li>

			<li> <a href="companies.html" class="d" > Calculate </a>
			<ul>
			<li><a href="CAPM.html">CAPM</a></li>
			<li><a href="Ratios.html">Ratios</a></li>
			<li><a href="irr.html">IRR</a></li>
			<li><a href="NPV.html">NPV</a></li>
			</ul>
			</li>
			

			<li> <a href="tools.html" class="e" > Analysis tools </a>
			<ul>
			<li><a href="charts.html">Charts</a></li>
			<li><a href="Historical.html">Historical data</a></li>
			</ul>
			</li>
		

			<li> <a href="knowhow.html" class="f" > know-how  </a>
			<ul>
			<li><a href="glossary.html">Glossary</a></li>
			<li><a href="technical.html">Technical</a></li>
			<li><a href="courses.html">Courses</a></li>
			</ul>
		
			</li>
		
            <li><a href="news.html" class="g">News</a></li>
			

			<li> <form action="http://thestock.com"  method="get"  class="searchform">

<input type="text" name="word" size="30" />
<input type="image" src="search.png" width="20" height="20">

</form> </li>

		</ul>

	</nav>
</div>

<div id="mar">
 <img class="ppp" src="m.png"> <p class="status"> Closed</p>
</div>

 <div class="dropdown">
  <button onclick="myFunction()" class="dropbtn"><img src="r.png"></button>
  <div id="myDropdown" class="dropdown-content">
  <a>
    <form id="login-form" method="POST" action="" accept-charset="UTF-8" data-validate="parsley">
	<p class="hf"> PLEASE SIGN IN </p>
                    <input class="tex" type="text" id="uid"  name="uid" size="30" placeholder="EMAIL" data-trigger="change" data-required="true" data-type="email">
                    <input class="tex" type="password" id="pwd" name="pwd" size="30" placeholder="PASSWORD" data-required="true" data-trigger="change">
                            
                            <div id="cb"><label class="checkbox">
                                <input type="checkbox" name="remember" value="1">Remember Me</label></div>
								<br>

						<div id="forg"><a href "ForgotPassword">Forgot Password?</a></div>
                        
                          
                        
                   
                    <button id="login-submit-btn" type="submit" name="submit" class="btn btn-primary span12" data-loading-text="Logging In..." data-error-text="Error! Try Again" data-success-text="Login Successful">Log in</button>
					<p class="ii">  or <a href="google.com"> SIGN UP FOR AN ACCOUNT </a> </p>
                </form>
    </a>
  </div>
</div>








<br>

<div class="container">
<center>

  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">overview</a></li>
    <li><a data-toggle="tab" href="#menu1"> news</a></li>
    <li><a data-toggle="tab" href="#menu2"> people</a></li>
    <li><a data-toggle="tab" href="#menu3">charts </a></li>
	    <li><a data-toggle="tab" href="#amrgamal">analysts </a></li>
    <li><a data-toggle="tab" href="#reserch">reserches </a></li>

  </ul>
</center>

  <div class="tab-content">
    	<h3>HOME</h3>
    <div id="home" class="tab-pane fade in active">
      
      
      <div id="chart_div" style="width:600; height:300;align:left"></div> 
      <p>Name:<%= f.getName() %></p>
      <p>Beta:<%=f.getBeta() %></p>
      <p>URL: <%=f.getUrl() %></p>
      <P>Sector:<%=f.getSector() %></p>
      <p>Stock symbol: <%=f.getStock().getSymbol() %></p>
      <p>number of shares: <%= f.getStock().getNumberofshares() %></p>
	  <p>current ratio:<%=eqn.current_ratio(f.getBalsheet()) %></p>
	  <p>quick ratio:<%=eqn.quick_ratio(f.getBalsheet()) %></p>
	  <p>inventory turnover:<%=eqn.inventory_turnover(f.getBalsheet(), f.getIncstat()) %></p>
	  <p>avg age of inventory:<%=eqn.avg_age_of_inventory(f.getBalsheet(), f.getIncstat()) %></p>
      <p>avg collection period:<%=eqn.avg_collection_period(f.getBalsheet(), f.getIncstat()) %></p>
      <p>avg payment period:<%=eqn.avg_payment_period(f.getBalsheet()) %></p>
      <p>total assets turnover:<%=eqn.total_assets_turn_over(f.getBalsheet(), f.getIncstat()) %></p>
      <p>debt ratio:<%=eqn.debt_ratio(f.getBalsheet()) %></p>
      <p>interest coverage ratio:<%=eqn.times_interest_earned_ratio(f.getIncstat()) %></p>
      <p>fixed payment coverage ratio:<%=eqn.fixd_payment_coverage_ratio(f.getIncstat()) %></p>
      <p>gross profit margin:<%=eqn.gross_profit_margin(f.getIncstat()) %></p>
      <p>operating profit margin:<%=eqn.operating_profit_margin(f.getIncstat()) %></p>
      <p>net profit margin:<%=eqn.net_profit_margin(f.getIncstat()) %></p>
      <p>return on assets:<%=eqn.return_on_total_assets(f.getIncstat(), f.getBalsheet()) %></p>
      <p>return on equity:<%=eqn.return_on_equity(f.getIncstat(), f.getBalsheet()) %></p>
      <p>price/earning ratio:<%=eqn.price_earning_ratio(f.getBalsheet(), f.getIncstat(), f.getStock()) %></p>
      <p>price/book value:<%=eqn.price_book_value(f.getBalsheet(), f.getStock()) %></p>
      <p> eps: <%=eqn.earning_per_share(f.getIncstat(), f.getStock()) %></p>
      <p> dividends: <%=f.getDividends() %></p>
    </div>
   
 

  </div>
  <button id='print' onclick="PrintDiv()">Print this page</button>
</div>
	
	


<br> <br>
<br> </br>

 <div class="footer" style="bottom:0px;">
<div class="footer-left" style="bottom:0px">

 <div class="footer-logo" style="bottom:0px;position:relative;"> <img src="ch1.png" height="150">  </div>
 <ul class="links">

			<li> <a href="http://thestock.com" class="a">  Home </a> </li>

			<li> <a href="Markets.html" class="b"  > Markets</a> </li>

			<li> <a href="news.html" class="c" > News </a> </li>

			<li> <a href="companies.html" class="d" >Listings </a> </li>

			<li> <a href="tools" class="e" > Analysis Tools </a> </li>

            <li><a href="knowhow.html">Know-how</a></li>
			<li><a href="blog.html">Blog</a></li>
			<li><a href="charts.html">charts</a></li>
			<li><a href="marketdata.html">Market data</a></li>
			
			
			<li> <a href="aboutus.html"  > About us </a></li>

                <li> <a href="careers.html"  > Careers </a> </li>

                <li> <a href="contactus.html" > Contact us </a> </li>

		</ul>

 
</div>
<div class="contact" style="bottom:0px">
<p> Tel: + (2) 02 24185793 / + (2) 01221 529 11 / + (2) 012 710 8 822 </p>

                <p> ADDRESS: The Library, Floor , The Greek Campus, </p>
				<p>Email: relations@thestock.com</p>
				</div>
</div>
</div>

 		 
</body>
</html>
