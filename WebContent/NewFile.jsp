<html>
  <head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

      // Load the Visualization API and the piechart package.
      google.charts.load('current', {'packages':['line']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
     function drawChart() {
      var jsonData = $.ajax({
          url: "/firstservice/json",
          dataType: "json",
          async: false
          }).responseText;
      var data = new google.visualization.DataTable(jsonData);

      
      

        // Set chart options
        var options = {'title':'How Much Pizza I Ate Last Night',
                       'width':900,
                       'height':500,
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
      function PrintDiv() {    
          var divToPrint = document.getElementById('chart_div');
          var popupWin = window.open();
          popupWin.document.open();
          popupWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</html>');
           popupWin.document.close();
               }

    </script>
  </head>
  <body>
    
    <div id="chart_div" style="width:900; height:500"></div>
    <div>
    <button id='print' onclick="PrintDiv()">Print this page</button></div>
  </body>
</html>
