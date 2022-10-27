<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>LOGIN/SIGNUP</title>
<style type="text/css">

@import url('https://fonts.googleapis.com/css2?family=Cabin+Sketch:wght@700&family=Poppins:wght@400;500&display=swap');

body {
  margin: 0;
  font-family: 'Lucida Grande', tahoma,verdana,arial,sans-serif;
  line-height: 1.28;
}

#navwrapper {
  width: 100%;
  height: 90px;
  background-color: #000;
  opacity : 0.93;
}

#navbar {
  margin: 0 auto;
  width:980px;
  height:45px;
}

#contentwrapper {
  width: 100%;
  height: 606px;
  background: linear-gradient(rgba(0, 0, 0, 0.815), transparent),url("https://images.unsplash.com/photo-1535320903710-d993d3d77d29?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80");
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
  color: #fff;
}

#content {
  margin: 0 auto;
  width:980px;
  padding-top:20px;
}

h1 {
display : flex;
  font-size: 26px;
  letter-spacing:0.05px;
  margin: 0;
  color:#fab700 ;
  font-family : 'Cabin Sketch', 'cursive';
}

.logowrapper {
  display: block;
  padding: 30px 0;
}

#button {
  position:relative;
  width:45px;
  height:18px;
  background-color: #5b72a9;
  border: 1px solid #999;
  border-color:#8b9dc3 #2f477a #29447e #1a356e;
  -webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, .1);
  cursor:pointer;
  font-size:11px;
  font-weight:bold;
  text-align:center;
  color:#fff;
}

.tablewrapper {
  float:right;
  margin-top:15px;
}

.row1 {
  
  color:#fff;
  font-size:11px;
  width:164px;
  cursor:pointer;
}

.inputtext {
  border-color: #1d2a5b;
  margin: 0;
  width: 142px;
  border: 1px solid #bdc7d8;
  margin: 0;
  padding: 3px;
  background-color: #fff;
}

#leftbod {
  width:45%;
  display:inline-block;
}

.connect  {
  width:409px;
  height: 72px;
  padding: 42px 0 24px;
  font-size: 26px;
  font-weight: 700;
  line-height: 36px;
  color: #333;
  display:inline-block;
}

.leftbar {
  
  padding-bottom:10px;
  margin-top:20px;
}


.rowtext {
  font-size:16px;
  font-weight:bold;
  color:#fff;
}


.fb1 {
  display:inline-block;
  vertical-align: middle;
}

.rowtext2 {
  font-size:15px;
  color:#fff;
  margin-left:10px;
}

#rightbod {
  display:inline-block;
  vertical-align:top;
  width:399px;
  height:200px;
  float:right;
}

.signup {
  font-size:36px;
  font-weight:700;
  margin-bottom:5px;
}

.bolder {
  font-family: 'Open Sans',sans-serif;
  text-rendering:optimizelegibility;
  color:#fff;
}

.free {
  font-size:19px;
  margin-bottom:20px;
}

.formbox {
  display: inline-block;
  width:399px;
}

.inputbody {
  display: inline-block;
  font-size: 18px;
  padding: 8px 10px;
  border: 1px solid #bdc7d8;
-webkit-border-radius: 5px;
  color:#333;
  margin-bottom:10px;
}

::-webkit-input-placeholder {
   color: #999;
}

::-moz-placeholder {
   color: #999;  
}

:-ms-input-placeholder {  
   color: #999;  
}

.in1 {
  width:172px;
}

.in2 {
  width:377px;
}

.fr {
  float:right;
}

.fl {
  float:left;
}

.bday {
  font-size:19px;
  color:#141823;
  -webkit-font-smoothing: antialiased;
  margin-bottom:5px;
}

.selectbody {
  display: inline-block;
  height:30px;
  font-size: 13px;
  border: 1px solid #bdc7d8;
  -webkit-border-radius: 5px;
  color:#141823;
 
}

.why {
  font-size: 11px;
  color: #3b5998;
  width:150px;
  margin-left:10px;
  cursor:pointer;
}

.h:hover {
  text-decoration: underline;
}

.gender {
  font-size: 18px;
  color: #141823;
  cursor: pointer;
  padding: 0 10px 0 3px;
  margin-right: 4px;
  line-height: 18px;
  vertical-align: middle;
}

.spanpad {
  padding: 5px 0 5px 4px;
  display: inline-block;
}

.mt1 {
  margin-top:15px;
}

.m0 {
  margin: 0;
}

.agree {
  font-size: 11px;
  color: #777;
  width:316px;
  margin: 11px 0 11px ;
}

.link {
  color:#3b5998;
  display: inline-block;
  cursor: pointer;
}

.signbut {
  font-size: 19px;
  font-weight: 700;
  letter-spacing: 1px;
  color:#fff;
  min-width: 194px;
  padding: 7px 20px;
  text-align: center;
  -webkit-border-radius: 5px;
  background: -webkit-linear-gradient(#67ae55, #578843);
  -webkit-box-shadow: inset 0 1px 1px #a4e388;
  border: 1px solid;
border-color: #3b6e22 #3b6e22 #2c5115;
  margin-top: 10px;
margin-bottom: 10px;
  text-shadow: 0 1px 2px rgba(0,0,0,.5);
  cursor:pointer;
}

.signbut:hover {
  background: -webkit-linear-gradient(#79bc64, #578843);
}

.create {
  border-top: 1px solid #a0a9c0;
  color: #666;
  font-size: 13px;
  font-weight: bold;
  margin-top: 10px;
  padding-top: 15px;
}


</style>
</head>
<body>
<div id="navwrapper">
  <div id="navbar"> <table class="tablewrapper">
    <tr>
      <td class="row1">Email or Phone</td>
      <td class="row1">Password</td>
    </tr>
    <form action = "LoginServlet" method = "post">
    <tr>
      <td><input type="text" name = "emailid" placeholder = "Email/Mobile" class="inputtext">
      </td>
      <td><input type="text" name = "password" placeholder = "Password" class="inputtext">
      </td>
      <td><div id="button"><button type = "submit" name = "login" value = "LOGIN">Login</button></div></td>
    </tr>
    </form>
    
  </table>
    
    <h1 class="logowrapper">StockMarket Solutions</h1>
   
  </div>
  </div>

  <div id="contentwrapper">
    <div id="content">
      
      <div id="leftbod">
        
       <form action ="StudentLogin" method = "post">
       <table>
       <tr><td>ID :</td><td><input type = "number" placeholder = "studentid"  class="inputtext"></td></tr>
        <tr><td>Password :</td><td><input type = "password" placeholder = "studentdob"  class="inputtext"></td></tr>
       </table>
       </form>
        </div> 
       
            
      </div>
       
      <div id="rightbod">
        <div class="signup bolder">Sign Up</div>
        <div class="free bolder">It's free and always will be</div>
        <form action="RegisterServlet" method = "post">
        <div class="formbox">
        <input type="text" name= "firstname" class="inputbody in1" placeholder="First name">
        <input type="text" name= "lastname" class="inputbody in1 fr" placeholder="Last name">
        </div>
        <div class="formbox">
        <input type="text" name= "emailmobile" class="inputbody in2" placeholder="Email or mobile number">
        </div>
        <div class="formbox">
        <input type="text" class="inputbody in2" placeholder="Re-enter email or mobile number">
        </div>
        <div class="formbox">
        <input type="password" name= "password" class="inputbody in2" placeholder="New password">
        </div>
        <div class="formbox">
          <div class="bday">Birthday</div>
        </div>
        <div class="formbox">
          <span data-type="selectors">
            <span>
              <select type="text" name = "month" title="Month" class="selectbody"><option value="0" selected="1">Month</option><option value="1">Jan</option><option value="2">Feb</option><option value="3">Mar</option><option value="4">Apr</option><option value="5">May</option><option value="6">Jun</option><option value="7">Jul</option><option value="8">Aug</option><option value="9">Sep</option><option value="10">Oct</option><option value="11">Nov</option><option value="12">Dec</option></select>
              <select type="number" name="date" title="Day" class="selectbody fl"><option value="0" selected="1">Day</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select>
              <select type="number" name="year" title="Year" class="selectbody fl"><option value="0" selected="1">Year</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option><option value="1913">1913</option><option value="1912">1912</option><option value="1911">1911</option><option value="1910">1910</option><option value="1909">1909</option><option value="1908">1908</option><option value="1907">1907</option><option value="1906">1906</option><option value="1905">1905</option></select>
            </span>
           </div>
            <div class="formbox mt1">
              <span data-type="radio" class="spanpad">
                <input type="radio" name = "gender" id="fem" class="m0">
                <label for="fem" class="gender">Female
                </label>
                <input type="radio" name = "gender" id="male" class="m0">
                <label for="male" class="gender">Male
                </label>
              </span>
            </div>
            <div class="formbox">
              <div class="agree">
                By clicking Sign Up, you agree to our <div class="link">Terms</div> and that you have read our <div class="link">Data Use Policy</div>, including our <div class="link">Cookie Use</div>.
              </div>  
            </div>
            <div class="formbox">
              <button type="submit" class="signbut bolder">Sign Up</button>
            </div>
              </form>
      </div>
     </div>
    </div>
</body>
</html>