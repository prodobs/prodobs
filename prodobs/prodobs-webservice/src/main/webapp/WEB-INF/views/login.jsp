<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="content-type" content="text/html; charset=us-ascii" />
  <title>Airline reservation</title>
  <link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" />
  <link rel="stylesheet" href="resources/css/datepicker.css" type="text/css" />
  <link rel="stylesheet" href="resources/css/prettify.css" type="text/css" />
  <script src="resources/js/prettify.js" type="text/javascript"></script>
  <script src="resources/js/jquery.js" type="text/javascript"></script>
  <script src="resources/js/bootstrap-datepicker.js" type="text/javascript"></script>
  <script src="resources/js/bootstrap-typeahead.js" type="text/javascript"></script>
  <script src="resources/js/urchin.js" type="text/javascript"></script>
  <script type="text/javascript">
//<![CDATA[
  $(function(){
  window.prettyPrint && prettyPrint();
  $('#startDate').datepicker({
  format: 'mm-dd-yyyy'
  });
  $('#endDate').datepicker({
  format: 'mm-dd-yyyy'
  });
  });
  //]]>
  </script>
  <script type="text/javascript">
//<![CDATA[
  _uacct = "UA-106117-1";
  urchinTracker();
  //]]>
  </script>
</head>

<body>
  <div style="display: none; top: 195px; left: 423.5px;" class=
  "datepicker dropdown-menu">
    <div style="display: block;" class="datepicker-days">
      <table class="table-condensed">
        <thead>
          <tr>
            <th class="prev"></th>
            <th colspan="5" class="switch">February 2012</th>
            <th class="next"></th>
          </tr>

          <tr>
            <th class="dow">Su</th>
            <th class="dow">Mo</th>
            <th class="dow">Tu</th>
            <th class="dow">We</th>
            <th class="dow">Th</th>
            <th class="dow">Fr</th>
            <th class="dow">Sa</th>
          </tr>
        </thead>

        <tbody>
          <tr>
            <td class="day old">29</td>
            <td class="day old">30</td>
            <td class="day old">31</td>
            <td class="day">1</td>
            <td class="day">2</td>
            <td class="day">3</td>
            <td class="day">4</td>
          </tr>

          <tr>
            <td class="day">5</td>
            <td class="day">6</td>
            <td class="day">7</td>
            <td class="day">8</td>
            <td class="day">9</td>
            <td class="day">10</td>
            <td class="day">11</td>
          </tr>

          <tr>
            <td class="day">12</td>
            <td class="day">13</td>
            <td class="day">14</td>
            <td class="day">15</td>
            <td class="day active">16</td>
            <td class="day">17</td>
            <td class="day">18</td>
          </tr>

          <tr>
            <td class="day">19</td>
            <td class="day">20</td>
            <td class="day">21</td>
            <td class="day">22</td>
            <td class="day">23</td>
            <td class="day">24</td>
            <td class="day">25</td>
          </tr>

          <tr>
            <td class="day">26</td>
            <td class="day">27</td>
            <td class="day">28</td>
            <td class="day">29</td>
            <td class="day new">1</td>
            <td class="day new">2</td>
            <td class="day new">3</td>
          </tr>

          <tr>
            <td class="day new">4</td>
            <td class="day new">5</td>
            <td class="day new">6</td>
            <td class="day new">7</td>
            <td class="day new">8</td>
            <td class="day new">9</td>
            <td class="day new">10</td>
          </tr>
        </tbody>
      </table>
    </div>

    <div style="display: none;" class="datepicker-months">
      <table class="table-condensed">
        <thead>
          <tr>
            <th class="prev"></th>

            <th colspan="5" class="switch">2012</th>

            <th class="next"></th>
          </tr>
        </thead>

        <tbody>
          <tr>
            <td colspan="7"><span class="month">Jan</span><span class=
            "month active">Feb</span><span class="month">Mar</span><span class=
            "month">Apr</span><span class="month">May</span><span class=
            "month">Jun</span><span class="month">Jul</span><span class=
            "month">Aug</span><span class="month">Sep</span><span class=
            "month">Oct</span><span class="month">Nov</span><span class=
            "month">Dec</span></td>
          </tr>
        </tbody>
      </table>
    </div>

    <div style="display: none;" class="datepicker-years">
      <table class="table-condensed">
        <thead>
          <tr>
            <th class="prev"></th>

            <th colspan="5" class="switch">2010-2019</th>

            <th class="next"></th>
          </tr>
        </thead>

        <tbody>
          <tr>
            <td colspan="7"><span class="year old">2009</span><span class=
            "year">2010</span><span class="year">2011</span><span class=
            "year active">2012</span><span class="year">2013</span><span class=
            "year">2014</span><span class="year">2015</span><span class=
            "year">2016</span><span class="year">2017</span><span class=
            "year">2018</span><span class="year">2019</span><span class=
            "year old">2020</span></td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>

  <div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
      <div class="container-fluid">
        <a data-toggle="collapse" data-target=".nav-collapse" class=
        "btn btn-navbar"></a><a href="#" class="brand">Reservation System</a>

        <div class="btn-group pull-right">
          <a data-toggle="dropdown" href="#" class="btn dropdown-toggle">Username</a>

          <ul class="dropdown-menu">
            <li><a href="#">Profile</a></li>

            <li><a href="#">Sign Out</a></li>
          </ul>
        </div>

        <div class="nav-collapse">
          <ul class="nav">
            <li class="active"><a href="#">Home</a></li>

            <li><a href="#about">About</a></li>

            <li><a href="#contact">Contact</a></li>

            <li><a href="http://localhost:3000/logout">Logout</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>

  <div class="container">
    <br />
    <br />
    <br />
    <br />
    <br />

    <div id="main">
      <form action="/login" method="post">
        <div id="login">
          <label for="user">Login</label><input value="" name="user" type=
          "text" />
        </div>

        <div id="password">
          <label for="password">Password</label><input name="password" type="password" />
        </div>

        <div id="submit">
          <input type="submit" />
        </div>
      </form>
    </div>    
  </div>
</body>
</html>
