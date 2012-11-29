function logSummary() 
{
    // Copy local-storage into variable. 
    var key;
    var postThis = {};
    for (var i = 0, len = localStorage.length; i < len; i++) {
        key = localStorage.key(i);
        postThis[key] = "" + localStorage.getItem(key);
   }

   // Use ajax to ask PHP to save this to a logfile
   $.ajax({
	url: 'logSummary.php',
	type: 'POST',
	data: postThis,

	success: function(response, textStatus, jqXHR){
            //console.log("Hooray, it worked!");
        },

	error: function(jqXHR, textStatus, errorThrown){
	    //console.log("Didn't work so good...");
	}

   });
}
