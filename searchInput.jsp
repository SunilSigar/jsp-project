<script> 
        function validate()
        {
            var state = document.forms["form1"]["ss"].value;
            if(state == null)
            {
                document.getElementById("demo").innerHTML = "state must be filled out";
                return false;
            }
			  var dis = document.forms["form1"]["ds"].value;
            if(dis == null)
            {
                document.getElementById("demo").innerHTML = "district must be filled out";
                return false;
            }
            return true;
            
        }
    </script>
<font color="Green"><h2>Search Donor</h2></font>
<p id="demo"></p>
<form name="form1" action="search.jsp" method="post" onsubmit="return validate()">
<pre>Blood Group    : <select name="bg"></pre>
<option value="A">A+</option>
<option value="AB">AB+</option>
<option value="O">O+</option>
<option value="B">B+</option>
</select>
<pre>State          : <input type="text" name="ss" /></br>
District       : <input type="text" name="ds" /></br>
   <input value="Search" type="submit" /></pre>
</form>


