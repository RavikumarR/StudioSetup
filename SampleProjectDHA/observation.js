
var listData = [

	{ text: "LOINC", type: "number", desc: "Logical Observation Identifiers Names and Code for representing the Laboratory and Clinical Observations"},
 	{ text: "Text", type: "text", desc: "Text description to give further clarification of the performed consultation used with service code 9, 9.1, 10, 10.1, 11, 11.1, 21, 22, 23"},                 
	{ text: "File", type: "file", desc: "File providing supporting documentation to a given activity. File type must be base 64 binary encrypted"},                 
	{ text: "Universal Dental", type: "combo", desc: "Universal tooth numbering system utilized with the American Dental activity"},     
	{ text: "Financial", type: "number", desc: "Co-Payment amount of the payment share. Can be up to two digits after the decimal"},            
	{ text: "Grouping", type: "combo", desc: "Package ID to enable the linking of a given activity to a given package that facilitates a discouraged price"},             
	{ text: "ERX", type: "number", desc: "Reference to connect the prescription to a given PriorRequest or ClaimSubmission transaction <br> &nbsp&nbsp eRxReference is generated from the DHPO\eRx Hub"},
	{ text: "Result", type: "result", desc: "Observation Description"}
		
		];


$(document).ready(function(){

	$(".combo-box").slimScroll({

	});

	// Hide all popups
	$(".observation-popup").hide();

	// close popup when close button is clicked
	$(document).on("click", ".cancel-popup", function(){
		$(this).closest(".observation-popup").hide();
	});


	var list = $(".observation-list");
	console.log(list);
	console.log("hello");
	for(var i = 0; i<listData.length; i++){
		var listItem = $("<li class='observation-list-item'><i class='fa fa-folder cool-font fs-12 bold'><span class='cool-font fs-12 ml-10 bold'>"+ listData[i].text +"</span><span hidden='' class='observation-type'>"+ listData[i].type+"</span><span hidden='' class='observation-desc'>"+ listData[i].desc+"</span></li>");
		list.append(listItem);
	}
	var listItems = list.children("li");	
	var firstItem = $(listItems[0]);

// DEFAULT DATA BINDING / SHOW & HIDE
	$(".dynamic-div").hide();
	$(".number-div").show();
	firstItem.addClass("selected");
	var defaultDesc = firstItem.find(".observation-desc").html().trim();		
	$(".show-desc").html(defaultDesc);


	$(document).on("click", ".observation-list-item", function(){
		var type = $(this).find(".observation-type").html().trim();		
		var desc = $(this).find(".observation-desc").html().trim();		
		
		$(".observation-list-item").removeClass("selected");
		$(this).addClass("selected");
		$(".show-desc").html(desc);

		if(type == "number"){
			$(".dynamic-div").hide();
			$(".number-div").fadeIn();
			$(".number-div").show();
			$(".observation-info").show();
			$(".observation-scroll").hide();
			$(".left-button").text("OK");
			$(".right-button").text("CANCEL");
		}else if(type == "text"){
			$(".dynamic-div").hide();
			$(".text-div").fadeIn();
			$(".text-div").show();
			$(".observation-info").show();
			$(".observation-scroll").hide();
			$(".left-button").text("OK");
			$(".right-button").text("CANCEL");
		}else if(type == "file"){
			$(".dynamic-div").hide();
			$(".file-div").fadeIn();
			$(".file-div").show();
			$(".observation-info").show();
			$(".observation-scroll").hide();
			$(".left-button").text("OK");
			$(".right-button").text("CANCEL");
		}else if(type == "combo"){
			$(".dynamic-div").hide();
			$(".combo-div").fadeIn();
			$(".combo-div").show();
			$(".observation-info").show();
			$(".observation-scroll").hide();
			$(".left-button").text("OK");
			$(".right-button").text("CANCEL");
		}else if(type == "result"){
			$(".dynamic-div").hide();
			$(".result-div").fadeIn();
			$(".result-div").show();
			$(".observation-info").hide();
			$(".observation-scroll").hide();
			// $(".left-button").text("ADD");
			// $(".right-button").text("CLEAR");
		}
	});

	$(document).on("change", "#observationType", function(){
		var type = $(this).val();				

		if(type == "number"){
			$(".dynamic-div").hide();
			$(".number-div").fadeIn();
			$(".number-div").show();
			$(".observation-info").show();
			$(".observation-scroll").hide();
			$(".left-button").text("OK");
			$(".right-button").text("CANCEL");
		}else if(type == "text"){
			$(".dynamic-div").hide();
			$(".text-div").fadeIn();
			$(".text-div").show();
			$(".observation-info").show();
			$(".observation-scroll").hide();
			$(".left-button").text("OK");
			$(".right-button").text("CANCEL");
		}else if(type == "file"){
			$(".dynamic-div").hide();
			$(".file-div").fadeIn();
			$(".file-div").show();
			$(".observation-info").show();
			$(".observation-scroll").hide();
			$(".left-button").text("OK");
			$(".right-button").text("CANCEL");
		}else if(type == "combo"){
			$(".dynamic-div").hide();
			$(".combo-div").fadeIn();
			$(".combo-div").show();
			$(".observation-info").show();
			$(".observation-scroll").hide();
			$(".left-button").text("OK");
			$(".right-button").text("CANCEL");
		}else if(type == "result"){
			$(".dynamic-div").hide();
			$(".number-div").fadeIn();
			$(".number-div").show();
			$(".observation-info").hide();
			$(".observation-scroll").show();
			$(".left-button").text("ADD");
			$(".right-button").text("CLEAR");
		}	
	});

	$(document).on("click", ".k-grid-content tr", function(){
		var value = $(this).children();
		value = $(value[0])
		value = value.html().trim();
		console.log(value);
		console.log("clicked");

		if(value == "Number"){
			$(".observation-popup").hide();
			$(".number-popup").show();
		}else if(value == "Text"){
			$(".observation-popup").hide();
			$(".text-popup").show();
		}else if(value == "Combo"){
			$(".observation-popup").hide();
			$(".combo-popup").show();
		}


	});

});


			function uiFloatComboBlur(psClassId, psCtrlType) {
                try {
                    var chk = $('.k-state-focused').parent().parent();
                    var lsCtrlID = '';
                    var getValStatic = '';
                    if (psCtrlType == 'date') {
                        lsCtrlID = $($("." + psClassId)[1]).prop("id");
                        getValStatic = $("#" + lsCtrlID).data("kendoDatePicker");
                    }
                    else if (psCtrlType == 'datetime') {
                        lsCtrlID = $($("." + psClassId)[1]).prop("id");
                        getValStatic = $("#" + lsCtrlID).data("kendoDateTimePicker");
                    }
                    else {
                        lsCtrlID = $($("." + psClassId)[2]).prop("id");
                        getValStatic = $("#" + lsCtrlID).data("kendoComboBox");
                    }

                    var actValStatic = getValStatic.value()

                    //var valChk = uiGetCtrlProperty(lsCtrlID, "Value");

                    if (chk != "" && actValStatic != "" && actValStatic != null) {
                        $($("." + psClassId).parent().parent().parent()).addClass('is-dirty').removeClass('is-focused');
                    } else {
                        $($("." + psClassId).parent().parent().parent()).removeClass('is-focused').removeClass('is-dirty');
                    }
                }
                catch (err) {

                }
            }

        function uiFloatComboFocus(psClassId) {
            try {
                var chk = $('.k-state-focused').parent().parent();
                if (chk) {
                    $("." + psClassId).parent().addClass('is-focused');
                } else {
                    $("." + psClassId).parent().removeClass('is-focused');
                }
            }
            catch (err) {

            }
        }

            var data = [
                    {name: "LOINC", code:"number"},
                    {name: "Text", code:"text"},
                    {name: "File", code:"file"},
                    {name: "Universal Dental", code:"combo"},
                    {name: "Financial", code:"number"},
                    {name: "Grouping", code:"combo"},
                    {name: "ERX", code:"number"},
                    {name: "Result", code:"result"}
                ];
                $("#observationType").kendoComboBox({
                    dataTextField: "name",
                    dataValueField: "code",
                    dataSource: data,
                    filter: "contains"
                });

				$('.observationTypeField').live('focus blur', function (e) {
                    if (e.type == "focusin")
                        uiFloatComboFocus("observationTypeField");
                    else
                        uiFloatComboBlur("observationTypeField");
                });

            var data2 = [
                    {name: "value 1", code:"1"},
                    {name: "value 2", code:"2"},
                    {name: "value 3", code:"3"}
                ];
                $("#observationCode").kendoComboBox({
                    dataTextField: "name",
                    dataValueField: "code",
                    dataSource: data2,
                    filter: "contains"
                });

				$('.observationCodeField').live('focus blur', function (e) {
                    if (e.type == "focusin")
                        uiFloatComboFocus("observationCodeField");
                    else
                        uiFloatComboBlur("observationCodeField");
                });


                $(".observation-scroll").slimScroll({
                	width:"100%"
                });



                 $("#observationGrid").kendoGrid({
                 	
                dataSource: [
                   { ObservationType: "Number", ObservationCode: "Hello", ObservationValue: "Hello", ObservationUnit: "Hello" },                   
                   { ObservationType: "Text", ObservationCode: "Hello", ObservationValue: "Hello", ObservationUnit: "Hello" },                   
                   { ObservationType: "Combo", ObservationCode: "Hello", ObservationValue: "Hello", ObservationUnit: "Hello" }                                      
                ],
                height: 550,                
                sortable: true,               
                columns: [{                   
                    field: "ObservationType",
                    title: "Observation Type" 

                }, {
                    field: "ObservationCode",
                    title: "Observation Code"
                }, {
                    field: "ObservationValue",
                    title: "Observation Value",
                    click: function(e) {
			            alert(clicked);
			         }
                }, 
                 {
                    field: "ObservationUnit",
                    width: "Observation Unit"
                }]
            });



function showNumberPopup(){
	var observationPopup = $(".observation-popup");
	observationPopup.html(" ");
	observationPopup.html($(".number-div"))
}



$(document).ready(function(){
	$(document).on("click", ".show-icon", function(){
		$(".observation-info").css("z-index","1000");
	});
});
