 $(document).ready(function(){
	 

         $("#editor").kendoEditor({
             tools: [
                 "bold",
                 "italic",
                 "underline",
                 "strikethrough",
                 "justifyLeft",
                 "justifyCenter",
                 "justifyRight",
                 "justifyFull",
                 "insertUnorderedList",
                 "insertOrderedList",
                 "indent",
                 "outdent",
                 "createLink",
                 "unlink",
                 "insertImage",
                 "subscript",
                 "superscript",
                 "createTable",
                 "addRowAbove",
                 "addRowBelow",
                 "addColumnLeft",
                 "addColumnRight",
                 "deleteRow",
                 "deleteColumn",
                 "viewHtml",
                 "fontName"
             ]
         });

     $("#switchMsgPanels").click(function () {
 		$(".group-panel").toggleClass("collapsed-groups");

 		if($(".group-panel").hasClass("collapsed-groups") == true){
 			$(".group-container").addClass("collapse-group");
 			$(".message-container").addClass("collapse-message");
 		}else{
 			$(".group-container").removeClass("collapse-group");
 			$(".message-container").removeClass("collapse-message");
 		}

     });

 	// $(".message-content").click(function(){
 	// 	$(this).toggleClass("message-expand");

 	// 	if($(this).hasClass("message-expand") == true){
 	// 		$(this).animate({
 	// 			height: "auto"
 	// 		}, 1000);
 	// 	}else{
 	// 		$(this).animate({
 	// 			height: "62px"
 	// 		}, 1000);
 	// 	}
 	// })

 	 // $(".message-content").toggle(function(){
	  //   $(this).animate({height:auto},200);
	  // },function(){
	  //   $(this).animate({height:62},200);
	  // });

	   $(".message-content").click(function(){
	   		$(this).toggleClass("message-expand");
	  });

	   $(".sub-group").hide();

	   $(".group-list-title").click(function(){

	   		var parent = $(this).closest(".group-list-item");
	   		parent.toggleClass("expand");
	   		var submenu = parent.find(".sub-group");
	   		$(submenu[0]).slideToggle("slow");

	   		// if(parent.hasClass("expand") == true){
	   		// 	var submenu = parent.find(".sub-group");
	   		// 	$(submenu[0]).show("toggle");
	   		// }else{
	   		// 	var submenu = parent.find(".sub-group")
	   		// 	$(submenu[0]).hide("toggle");
	   		// }
	   });

	   $(".group-list-panel").slimScroll({
	   		
	   });

	   $(".message-list-panel").slimScroll({

	   });
 });














