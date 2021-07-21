$(document).ready(function () {
    $('#opcoes li a').click(function () {
       $('#opcoes li a').removeClass('target');
       $(this).addClass('target');
       console.log("HERE");
    });
});

function permiteIP() {
  if (document.getElementById("dinamico").checked == true) {
    //alert("You have selected Option estatico");
    document.getElementById("ip").disabled = true;
    document.getElementById("mask").disabled = true;
    document.getElementById("gateway").disabled = true;
    document.getElementById("dns1").disabled = true;
    document.getElementById("dns2").disabled = true;
  }
  else if (document.getElementById("estatico").checked == true) {
    //alert("You have selected Option dinamico");
    document.getElementById("ip").disabled = false;
    document.getElementById("mask").disabled = false;
    document.getElementById("gateway").disabled = false;
    document.getElementById("dns1").disabled = false;
    document.getElementById("dns2").disabled = false;
  }
  else {
        // DO NOTHING
  }
}

function mudaInfoDB() {
  if (document.getElementById("mysql").checked == true) {
    document.getElementById("server").value = "10.91.14.14";
    document.getElementById("code").value = "3306";
    document.getElementById("db_freq_write").value = "200ms";
  }
  else if (document.getElementById("sqlserver").checked == true) {
    document.getElementById("server").value = "10.91.14.13";
    document.getElementById("code").value = "1433";
    document.getElementById("db_freq_write").value = "200ms";
  }
  else if (document.getElementById("mongodb").checked == true) {
    document.getElementById("server").value = "10.91.14.15";
    document.getElementById("code").value = "27017";
    document.getElementById("db_freq_write").value = "200ms";
  }
}

function atualizapag(item) {
  //var itens = ["apresentacao", "op1", "op2", "op3", 'op4']; 
  var itens = ["apresentacao"];
  $('.menuItem').each(function () {
      itens.push(this.id);
  });
  var index = itens.indexOf(item);

  if (index > -1) {
    itens.splice(index, 1);
  }
  document.getElementById(item).style.display = "inline";
  for (var i = 0; i < itens.length; i++) {
    document.getElementById(itens[i]).style.display = "none";
  }
}

google.charts.load('current', {
  callback: function () {
    drawChart();
    $(window).resize(drawChart);
  },
  packages:['corechart']
});

function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ['Tempo', 'Temperatura'],
    [0, 0],
    [1, 1],
    [2, 3],
    [3, 7],
    [4, 15],
    [5, 31]
    ]);

  var options = {
    chartArea: {
      /*left: 40,*/
      width: '80%'
    },
    legend: {
      position: 'top'
    },
    width: '100%',
    backgroundColor: { fill:'transparent' },
    curveType: 'function',

    hAxis: {
      title: 'Tempo',
      textStyle: {
        color: '#fff',
        fontSize: 10,
        bold: true,
        italic: true
      },
      titleTextStyle: {
        color: '#fff',
        fontSize: 16,
        bold: true,
        italic: true
      }
    },
    vAxis: {
      title: 'Temperatura',
      textStyle: {
        color: '#fff',
        fontSize: 10,
        bold: true,
        italic: true
      },
      titleTextStyle: {
        color: '#fff',
        fontSize: 16,
        bold: true,
        italic: true
      }
    },
    colors: ['#19bbd5'],
    lineWidth: 5
  };

  var container = document.getElementById('chart_div');
  var chart = new google.visualization.LineChart(container);
  chart.draw(data, options);
}

google.charts.load('current', {'packages':['gauge']});
google.charts.setOnLoadCallback(drawChart2);

function drawChart2() {

  var data = google.visualization.arrayToDataTable([
    ['Label', 'Value'],
    ['Memória', 80],
    ['CPU', 55],
    ['Rede', 68]
    ]);

  var options = {
    
    redFrom: 90, redTo: 100,
    yellowFrom:75, yellowTo: 90,
    minorTicks: 5
  };

  var chart = new google.visualization.Gauge(document.getElementById('chart_div2'));

  chart.draw(data, options);

  function resizeHandler () {
        chart.draw(data, options);
    }
    if (window.addEventListener) {
        window.addEventListener('resize', resizeHandler, false);
    }
    else if (window.attachEvent) {
        window.attachEvent('onresize', resizeHandler);
    }

  setInterval(function() {
    data.setValue(0, 1, 40 + Math.round(60 * Math.random()));
    chart.draw(data, options);
  }, 13000);
  setInterval(function() {
    data.setValue(1, 1, 40 + Math.round(60 * Math.random()));
    chart.draw(data, options);
  }, 5000);
  setInterval(function() {
    data.setValue(2, 1, 60 + Math.round(20 * Math.random()));
    chart.draw(data, options);
  }, 26000);
}

