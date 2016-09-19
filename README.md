# JavaScriptCore-Sample
Simple implementation about JavaScriptCore



Use JavaScriptCore to push to WebViewController from ViewController and store the value input in webView 


1/ In ViewController we have "Call" button which use to call JavaScript code to push to WebViewController

2/ In WebViewController we have a webView with 2 button in content. Their function is save and load the string which stored by NSUserDefaut.


JAVA SCRIPT CORE


<!--javaScriptCore sử dụng JSContext để thực hiện tương tác với code java -->
<!--Có 2 loại:-->
<!--1/ Sử dụng code Java không để thực hiện tác vụ. ví dụ như mình có code java mà không muốn viết lại swift thì dùng.-->
<!--2/ Sử dụng tương tác với javaScript chạy trên webView-->

<!--Phần 1/ thì trên mạng có nhiều tut rồi-->

<!--Phần 2/-->
<!-- - lấy context trong webView : let context = webView.valueForKeyPath("documentView.webView.mainFrame.javaScriptContext") as! JSContext-->
<!--- để javaScript trong html gọi được func trong swift cần: -->
<!--   + context!.setObject(CoreUtils.self, forKeyedSubscript: "Name")  ( CoreUtils là model. Name là tên của CoreUils dùng bên Java.-->
<!--  + trong swift implement protocol : @objc protocol GameJSExports: JSExport { func a() }-->
<!-- Lúc đó java gọi  "Name.a " là ok-->

<!--Để swift gọi java :-->
<!--//Swift-->
<!--let check = Context!.objectForKeyedSubscript("Continue")-->
<!--        check.callWithArguments([moduleID])-->
<!--//Java-->

<!--var Continue = func(moduleID){-->
<!--     alert("hahaha")-->
<!--}-->
