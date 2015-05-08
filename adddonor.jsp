<script> 
        function validate()
        {
            var name = document.forms["form1"]["fn"].value;
            if(name == null || name =="")
            {
                document.getElementById("demo").innerHTML = "Name must be filled out";
                return false;
            }
			 var Phone = document.forms["form1"]["mn"].value;
            if(Phone == null || Phone =="")
            {
                document.getElementById("demo").innerHTML = "Please verify that your Mobile Number is valid.";
                return false;
            }
			var Email = document.forms["form1"]["ei"].value;
            if(Email == null || Email =="" || Email.indexOf('@',0) == -1 || Email.indexOf('.',0) == -1)
            {
                document.getElementById("demo").innerHTML = "Please verify that your email address is valid.";
                return false;
            }
			var add = document.forms["form1"]["a"].value;
            if(add == null || add =="")
            {
                document.getElementById("demo").innerHTML = "Address must be filled out";
                return false;
            }
            var ui = document.forms["form1"]["ui"].value;
            if(ui == null || ui =="")
            {
                 document.getElementById("demo").innerHTML = "User Id must be filled out";
                return false;
            }
             
             var Pass = document.forms["form1"]["p"].value;
            if(Pass == null || Pass =="")
            {
                document.getElementById("demo").innerHTML = "Password must be filled out";
                return false;
                
            }
            return true;
            
        }
    </script>
<font color="Green"><h2>REGISTRATION FORM</h2></font>
<font color="Red"><p id="demo"></p></font>
<form name="form1" action="add.jsp" method="post" onsubmit="return validate()">
<pre>Full Name      : <input type="text" name="fn" /></br></pre>
<pre>Blood Group    : <select name="bg"></pre>
<option value="A">A+</option>
<option value="AB">AB+</option>
<option value="O">O+</option>
<option value="B">B+</option>
</select>
<pre>Gender         : <input type="radio" name="g" value="male" checked>Male <input type="radio" name="g" value="female">Female<br>
Mobile Number  : <input id="numb" type="integer" name="mn" /><br>
State          : <input type="text" name="ss" /></br>
District       : <input type="text" name="ds" /></br>
<pre>E-Mail ID      : <input type="text" name="ei" />
<br>Address        : <textarea name="a" rows="3" cols="30">
</textarea><br>
User ID        : <input type="text" name="ui" /><br>
Password       : <input type="password" name="p" /></pre>
Please confirm
your availability : <select name="pc"><br>
<option value="A">Available</option>
<option value="AB">Unavailable</option>
</select><br>to donate blood</pre>
<input type="checkbox" name="sub">	I authorise the website to display my name and telephone number, so that the needy could contact me, as and when there is an emergency.
<pre>   <input value="submit" type="submit" /></pre>
</form>


