 'use strict';
 
    var Save = function(){
        var data = document.getElementById("textSaveGame").value;
		JSWebView.SaveData(data);
  	}

  	var Load = function(){
  		var result = JSWebView.LoadData();
		document.getElementById("textLoadGame").innerHTML = result;
  	}