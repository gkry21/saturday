function ajaxCall(url,type,param,successBack){
	 if(param == ""){
		 param = new Object();
		 param.userId = localStorage.getItem('userId');
	 }else if(typeof(param) == "object"){
		 param.userId = localStorage.getItem('userId');
	 }
	 
	 $.ajax({
         url:url,
         type:type,
         async: false ,
         data:JSON.stringify(param),
         dataType:'json',
         timeout: 3000,
         contentType : "application/json; charset=UTF-8",
         error: function (request, status, error) {            
        	 
         }, success: function (data) {
        	 successBack(data);
         }, beforeSend: function () {
  
         }
         
     });
	 
}