var $j=jQuery.noConflict();
$j(document).ready(function(){
$j("#Log").click(function() {
 	if($j("#UserID").val()=="" && $j("#password").val()=="") {
 		alert("Please enter UserID and Password!!");
 		$j("#UserID").focus();
                return false;
    }
    else if($j("#UserID").val()==""){
    	alert("Please enter UserID!!");
    	$j("#UserID").focus();
    	return false;
    } else if($j("#password").val()=="") {
    	alert("Please enter Password!!");
    	$j("#password").focus();
    	return false;
    } else {

		var context = $j("#context").val();
		var type= $j("input[name=rbutn]:checked").val();
		var log=$j("#Log").val();
    	var parms = "UserID="+$j("#UserID").val()+"&password="+$j("#password").val()+"&submit="+$j("#Log").val()+"&log="+type;
    	 new Ajax.Request(context+"/Controller",{
    	 			type:"POST",
    	 			parameters:parms,
    	 			onSuccess: function(transport) {
    					var response = transport.responseText || "no response text";
						if(response=="admin"){
							 window.location=context+"/JSP/CustomerMang.jsp";
						}
						if(response=="customer"){
							 window.location=context+"/JSP/Home.jsp";
						}
						if(response=="ID") {
							alert('- Sorry ID or PASSWORD is not correct!!!');
						}
					}
    });
    }
}) ;
}) ;