<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Workbench.aspx.cs" Inherits="SampleProjectDHA.Workbench" MasterPageFile="~/Master/uiStaticPage.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <link id="style_colors" href="Library/Metronic/assets/admin/layout/css/themes/default.css" rel="stylesheet" type="text/css" />
    <link href="Library/Metronic/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.css" rel="stylesheet" type="text/css" />
    <link href="Library/Metronic/assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
    <link href="Library/Metronic/assets/global/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <link href="Library/Metronic/assets/global/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" type="text/css" />
    <link href="Library/Metronic/assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css" />
    <link href="Library/Metronic/assets/admin/pages/css/timeline-old.css" rel="stylesheet" type="text/css" />
    <link href="Library/Metronic/assets/admin/pages/css/profile-old.css" rel="stylesheet" type="text/css" />
    <link href="Library/Metronic/assets/global/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="Library/Metronic/assets/global/plugins/select2/select2.css" />
    <link rel="stylesheet" type="text/css" href="Library/Metronic/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css" />
    <link href="Library/Metronic/assets/global/plugins/ion.rangeslider/css/ion.rangeSlider.css" rel="stylesheet" />
    <link href="Library/Metronic/assets/global/plugins/ion.rangeslider/css/ion.rangeSlider.Metronic.css" rel="stylesheet" />
    <link href="Library/Metronic/assets/global/plugins/jstree/dist/themes/default/style.min.css" rel="stylesheet" />
    <link href="Library/Metronic/Oreassets/global/plugins/owl-carousel/owl.theme.css" rel="stylesheet" />
    <link href="Library/Metronic/Oreassets/global/plugins/owl-carousel/owl.carousel.css" rel="stylesheet" />
    <link href="Library/Common/Global/select2.min.css" rel="stylesheet" />
    
    <script src="Library/Kui/js/cultures/kendo.culture.ar-OM.min.js"></script>
    <style>
        /*Global Container css*/
       
    </style>

    <link rel="stylesheet" href="RCMIPStyle.css" type="text/css">    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentHTML" runat="server">
    

    <!-- Extention of stay -->
    <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 np extension-stay mdl-shadow--2dp">
        <div class="row bb-thin nm">
            <div class="col-md-4 col-sm-4 pl-10 pl-10 bg-green pt-10 pb-10">
                <i class="fa fa-plus-square-o font-white fs-20 spacer-5"></i>
                <span class="font-white fs-16">Extension of Stay</span>
            </div>
            <div class="col-md-8 col-sm-8 pl-10 pl-10 pt-10 pb-10">
                
            <div class="rpActions visit">
                 <div class=" mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored rpActprint" id="btnvisitclear" data-upgraded=",MaterialButton,MaterialRipple" tabindex="0">
                    <i class="fa fa-lg icon-refresh rpActSIcon"></i>
                <span class="mdl-button__ripple-container"><span class="mdl-ripple is-animating" style="width: 81.196px; height: 81.196px; transform: translate(-50%, -50%) translate(8px, 11px);"></span></span></div>
                <div class="mdl-tooltip" for="btnvisitclear" data-upgraded=",MaterialTooltip" style="left: 1251px; margin-left: -20.5px; top: 232px;">
                    Clear
                </div>
                <div class=" mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored rpActCancelBtn" id="btnvisitclose" data-upgraded=",MaterialButton,MaterialRipple" tabindex="0">
                    <i class="fa fa-lg fa-close rpActCIcon"></i>
                <span class="mdl-button__ripple-container"><span class="mdl-ripple"></span></span></div>
                <div class="mdl-tooltip" for="btnvisitclose" data-upgraded=",MaterialTooltip" style="left: 1283px; margin-left: -21px; top: 232px;">
                    Close
                </div>
                <div class=" mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored rpActSaveBtn" id="btnVisitSave" data-upgraded=",MaterialButton,MaterialRipple" tabindex="0">
                    <i class="fa fa-lg fa-save rpActSIcon"></i>
                <span class="mdl-button__ripple-container"><span class="mdl-ripple"></span></span></div>
                <div class="mdl-tooltip" for="btnVisitSave" data-upgraded=",MaterialTooltip">
                    Save
                </div>
            </div>

        </div>                
            </div>
        </div>

        <div class="row bb-thin">
            <div class="col-md-10 col-lg-10 col-sm-10 br-thin" style="min-height: 85px;">
                <div class="row">
                    <div class="col col-md-3 col-lg-3 col-sm-3 col-xs-12 pr-5">
                        <i class="fa fa-plus-square-o fs-20 spacer-5"></i>
                      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label has-icon">
                        <input class="mdl-textfield__input" type="text" id="sample3">
                        <label class="mdl-textfield__label" for="sample3">Extension Days</label>
                      </div>
                    </div>
                    <div class="col col-md-3 col-lg-3 col-sm-3 col-xs-12 pr-5">
                        <i class="fa fa-file fs-20 spacer-5"></i>
                      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label has-icon">
                        <input class="mdl-textfield__input extReasonfield" type="text" id="extReason">
                        <label class="mdl-textfield__label" for="extReason">Reason</label>
                      </div>
                    </div>
                    <div class="col col-md-6 col-lg-6 col-sm-6 col-xs-12 pr-5">                        
                      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" id="sample3">
                        <label class="mdl-textfield__label" for="sample3"></label>
                      </div>
                    </div>
                </div>
            </div>            
            <div class="col-md-2 col-sm-2 col-lg-2 col-xs-12">
                <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12 pt-10 npl npr">
                        <i class="fa fa-book fs-20 spacer-5"></i>
                        <span class="fs-10"> EXT1234 </span>
                    </div>

                    <div class="col-md-12 col-lg-12 col-sm-12 pt-10 npl npr">
                        <i class="fa fa-calendar fs-20 spacer-5"></i>
                        <span class="fs-10"> 07/02/2017 10:30 AM </span>
                    </div>
                    
                </div>
            </div>
        </div>

        <div class="row bb-thin">
            <div class="col-md-7 col-lg-7 col-sm-7">
                <div class="row" style="height:50px; margin-top:20px !important;">
                    <div class="col-md-12 col-sm-12 col-xs-12 pt-15" style="margin-left:-28px;">
                        <label class="mdl-radio mdl-js-radio" for="option1">
                            <input type="radio" id="option1" name="gender" class="mdl-radio__button" checked>
                            <span class="mdl-radio__label">Direct Admission</span>
                        </label>    
                        <label class="mdl-radio mdl-js-radio" for="option2">
                            <input type="radio" id="option2" name="gender" class="mdl-radio__button" checked>
                            <span class="mdl-radio__label">Through Request</span>
                        </label>
                    </div>
                    
                </div>
                <div class="row mt-20" style="margin-top:20px !important;">
                    <div class="col col-md-6 col-lg-6 col-sm-6 col-xs-12 pr-5">
                        <i class="fa fa-futbol-o fs-20 spacer-5"></i>
                      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label has-icon">
                        <input class="mdl-textfield__input extAdmissionTypefield" type="text" id="extAdmissionType">
                        <label class="mdl-textfield__label" for="extAdmissionType">Admission Type</label>
                      </div>
                    </div>
                    <div class="col col-md-6 col-lg-6 col-sm-6 col-xs-12 pr-5">
                        <i class="fa fa-cubes fs-20 spacer-5"></i>
                      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label has-icon">
                        <input class="mdl-textfield__input extAdmissionSourcefield" type="text" id="extAdmissionSource">
                        <label class="mdl-textfield__label" for="extAdmissionSource">Admission Source</label>
                      </div>
                    </div>
                </div>

                <div class="row" style="margin-top:20px !important;">
                    <div class="col col-md-4 col-lg-4 col-sm-4 col-xs-12 pr-5">
                        <i class="fa fa-calendar fs-20 spacer-5"></i>
                      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label has-icon">
                        <input class="mdl-textfield__input extAdmissionDatefield" type="text" id="extAdmissionDate">
                        <label class="mdl-textfield__label" for="extAdmissionDate">Admission Date</label>
                      </div>
                    </div>
                    <div class="col col-md-4 col-lg-4 col-sm-4 col-xs-12 pr-5">
                        <i class="fa fa-calendar fs-20 spacer-5"></i>
                      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label has-icon">
                        <input class="mdl-textfield__input extTotalfield" type="text" id="extTotal">
                        <label class="mdl-textfield__label" for="extTotal">Total LOS</label>
                      </div>
                    </div>
                    <div class="col col-md-4 col-lg-4 col-sm-4 col-xs-12 pr-5">
                        <i class="fa fa-calendar fs-20 spacer-5"></i>
                      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label has-icon">
                        <input class="mdl-textfield__input extDischargeDatefield" type="text" id="extDischargeDate">
                        <label class="mdl-textfield__label" for="extDischargeDate">Expected Discharge Date</label>
                      </div>
                    </div>
                </div>
            </div>            
            <div class="col-md-5 col-sm-5 col-lg-5 col-xs-12 np bl-thin">    
                    
            <div class="template-scroll" style="height: 350px; width:100%">
                    <div class="row no-data" align="center" style="display: none;">
                        <div class="col-md-12" style="padding-top:20%;">
                            <i class="fa fa-yelp" style="color:lightgray; font-size:70px;"></i><br><br>
                            <span class="fs-20" style="color:lightgray;"> No data found </span>
                        </div>
                    </div>
                    <table class="table">
                    <!-- template -->
                        <tr class="row bb-thin">
                            <td class="col-md-1 col-sm-1 col-lg-1 br-thin" align="center" style="min-width: 50px;">
                                <i class="fa fa-plus fs-50" style="margin-top: 25%; font-size: 22px;"></i>
                            </td>
                            <td class="col-md-11 col-sm-11 col-lg-11">
                                <div class="row">
                                    <div class="col-md-8 col-sm-8 col-lg-8">
                                        <span class="fs-12"> 30/07/2017 10:00 AM to 01/08/2017 10:00 AM</span>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-lg-4">
                                        <span class="fs-12">3 Days</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 col-sm-12 col-lg-12">
                                        <span class="fs-12"> Disease not cured</span>
                                    </div>                                  
                                </div>
                            </td>
                        </tr>
                        <tr class="row bb-thin">
                            <td class="col-md-1 col-sm-1 col-lg-1 br-thin" align="center" style="min-width: 50px;">
                                <i class="fa fa-plus fs-50" style="margin-top: 25%; font-size: 22px;"></i>
                            </td>
                            <td class="col-md-11 col-sm-11 col-lg-11">
                                <div class="row">
                                    <div class="col-md-8 col-sm-8 col-lg-8">
                                        <span class="fs-12"> 30/07/2017 10:00 AM to 01/08/2017 10:00 AM</span>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-lg-4">
                                        <span class="fs-12">3 Days</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 col-sm-12 col-lg-12">
                                        <span class="fs-12"> Disease not cured</span>
                                    </div>                                  
                                </div>
                            </td>
                        </tr>
                        <tr class="row bb-thin">
                            <td class="col-md-1 col-sm-1 col-lg-1 br-thin" align="center" style="min-width: 50px;">
                                <i class="fa fa-plus fs-50" style="margin-top: 25%; font-size: 22px;"></i>
                            </td>
                            <td class="col-md-11 col-sm-11 col-lg-11">
                                <div class="row">
                                    <div class="col-md-8 col-sm-8 col-lg-8">
                                        <span class="fs-12"> 30/07/2017 10:00 AM to 01/08/2017 10:00 AM</span>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-lg-4">
                                        <span class="fs-12">3 Days</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 col-sm-12 col-lg-12">
                                        <span class="fs-12"> Disease not cured</span>
                                    </div>                                  
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>    
                </div>
            </div>
        </div>
    </div>
<!-- Extention of stay ends-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentJs" runat="server">
    
    <!-- Extension of stay  -->
<script type="text/javascript">
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

                if (chk != "" && actValStatic != "") {
                    $($("." + psClassId).parent().parent().parent()).addClass('is-dirty').removeClass('is-focused');
                } else {
                    $($("." + psClassId).parent().parent().parent()).removeClass('is-focused').removeClass('is-dirty');
                }
            }
            catch (err) {

            }
        }

        var comboData = [
            { text: "value 1", value: 1 },
            { text: "value 1", value: 1 },
            { text: "value 1", value: 1 }
        ];

        $(document).ready(function(){


            $("#extAdmissionDate").kendoDatePicker({
                
            });

            $("#extDischargeDate").kendoDatePicker({
                
            });

            $("#extTotal").kendoNumericTextBox({
                
            });

            $("#extReason").kendoComboBox({
                dataTextField: "text",
                dataValueField: "value",
                dataSource: comboData,
                filter: "contains"
            });

            $('.extReasonfield').live('focus blur', function (e) {
               if (e.type == "focusin")
                   uiFloatComboFocus("extReasonfield");
               else
                   uiFloatComboBlur("extReasonfield");
           }); 

            $("#extAdmissionType").kendoComboBox({
                dataTextField: "text",
                dataValueField: "value",
                dataSource: comboData,
                filter: "contains"
            });

            $('.extAdmissionTypefield').live('focus blur', function (e) {
               if (e.type == "focusin")
                   uiFloatComboFocus("extAdmissionTypefield");
               else
                   uiFloatComboBlur("extAdmissionTypefield");
           }); 

            $("#extAdmissionSource").kendoComboBox({
                dataTextField: "text",
                dataValueField: "value",
                dataSource: comboData,
                filter: "contains"
            });

            $('.extAdmissionSourcefield').live('focus blur', function (e) {
               if (e.type == "focusin")
                   uiFloatComboFocus("extAdmissionSourcefield");
               else
                   uiFloatComboBlur("extAdmissionSourcefield");
           }); 

            $('.extAdmissionDatefield').live('focus blur', function (e) {
               if (e.type == "focusin")
                   uiFloatComboFocus("extAdmissionDatefield", "date");
               else
                   uiFloatComboBlur("extAdmissionDatefield", "date");
           }); 

            $('.extDischargeDatefield').live('focus blur', function (e) {
               if (e.type == "focusin")
                   uiFloatComboFocus("extDischargeDatefield", "date");
               else
                   uiFloatComboBlur("extDischargeDatefield", "date");
           }); 


            $(".template-scroll").slimScroll({

            });
        });



</script>    
<!-- Extension of stay  end -->

    
</asp:Content>


