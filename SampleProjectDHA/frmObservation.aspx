<%@ Page Title="" Language="C#" MasterPageFile="~/Master/uiStaticPage.Master" AutoEventWireup="true" CodeBehind="frmObservation.aspx.cs" Inherits="SampleProjectDHA.Master.WebForm3" %>



<asp:content id="Content1" contentplaceholderid="ContentHead" runat="server">

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

    </style>

    <link rel="stylesheet" href="RCMIPStyle.css" type="text/css">    
    
    <link rel="stylesheet" href="observation.css" type="text/css">    
    

</asp:content>

<asp:content id="Content2" contentplaceholderid="ContentHTML" runat="server">
        
        <div class="container np shadow-smooth mt-15 soft-edge of-hidden">
            <div class="row no-margin">
                
                <!-- POPUPS -->
                
                <!-- text popup -->
                    <div class="observation-popup text-popup padding-15">
                        <div class="row no-margin mt-15 ">
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <div class="flex pw">
                                    <i class="cool-font fa fa-keyboard-o fs-14 spacer-10" style="margin-top:4px;"></i>
                                    <span class="cool-font fs-12 bold">Observation Value</span>
                                </div>

                                <textarea class="observation-textarea"></textarea>
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12 button-row" style="position:absolute; bottom:20px;    padding: 0px; right: 25px;">
                                <button class="btn btn-primary pull-right right-button cancel-popup">
                                    CANCEL
                                </button>
                                <button class="btn btn-primary pull-right spacer-10 left-button">
                                    OK
                                </button>
                            </div>
                        </div>
                    </div>
                <!-- text popup End -->

                <!-- number popup -->
                    <div class="observation-popup number-popup padding-15">
                        <div class="row no-margin mt-15 ">
                             <div class="col-md-6 col-sm-6 col-lg-6 flex mt-15">
                                <i class="input-icon fa fa-lg fa-keyboard-o"></i>
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="text" id="observationValue" />
                                    <label class="mdl-textfield__label" for="observationValue">Observation Value</label>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-lg-6 flex mt-15">
                                <i class="input-icon fa fa-lg fa-cog"></i>
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="text" id="observationUnit" />
                                    <label class="mdl-textfield__label" for="observationUnit">Observation Unit</label>
                                </div>                                        
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12 button-row" style="position:absolute; bottom:20px;    padding: 0px; right: 25px;">
                                <button class="btn btn-primary pull-right right-button cancel-popup">
                                    CANCEL
                                </button>
                                <button class="btn btn-primary pull-right spacer-10 left-button">
                                    OK
                                </button>
                            </div>
                        </div>
                    </div>
                <!-- number popup End -->

                <!-- COmbo popup -->
                    <div class="observation-popup combo-popup padding-15">
                        <div class="row no-margin mt-15 ">
                            <div class="combo-box pw" style="height:176px !important;">
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-top: -17px;">
                                    <input class="mdl-textfield__input icnInp" type="text" id="qRegSearch" placeholder="Search" />
                                    <i class="searchIcon fa fa-lg fa-search" id="srchCtrl" style="    font-size: 14px;color: #6f6f6f;"></i>
                                </div>
                               <div class="row no-margin" style="position: relative;top: -10px;">
                                   <div class="col-md-4 col-sm-4 col-lg-4">
                                       <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                            <input type="checkbox" id="chkmrm" class="mdl-checkbox__input">
                                            <span class="mdl-checkbox__label">Tooth 1</span>
                                        </label>
                                   </div>
                                   <div class="col-md-4 col-sm-4 col-lg-4">
                                       <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                            <input type="checkbox" id="Checkbox1" class="mdl-checkbox__input">
                                            <span class="mdl-checkbox__label">Tooth 2</span>
                                        </label>
                                   </div>
                                   <div class="col-md-4 col-sm-4 col-lg-4">
                                       <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                            <input type="checkbox" id="Checkbox2" class="mdl-checkbox__input">
                                            <span class="mdl-checkbox__label">Tooth 3</span>
                                        </label>
                                   </div>
                                   <div class="col-md-4 col-sm-4 col-lg-4">
                                       <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                            <input type="checkbox" id="Checkbox3" class="mdl-checkbox__input">
                                            <span class="mdl-checkbox__label">Tooth 4</span>
                                        </label>
                                   </div>
                                   <div class="col-md-4 col-sm-4 col-lg-4">
                                       <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                            <input type="checkbox" id="Checkbox4" class="mdl-checkbox__input">
                                            <span class="mdl-checkbox__label">Tooth 5</span>
                                        </label>
                                   </div>
                                   <div class="col-md-4 col-sm-4 col-lg-4">
                                       <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                            <input type="checkbox" id="Checkbox5" class="mdl-checkbox__input">
                                            <span class="mdl-checkbox__label">Tooth 6</span>
                                        </label>
                                   </div>
                                   <div class="col-md-4 col-sm-4 col-lg-4">
                                       <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                            <input type="checkbox" id="Checkbox6" class="mdl-checkbox__input">
                                            <span class="mdl-checkbox__label">Tooth 7</span>
                                        </label>
                                   </div>
                                   <div class="col-md-4 col-sm-4 col-lg-4">
                                       <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                            <input type="checkbox" id="Checkbox7" class="mdl-checkbox__input">
                                            <span class="mdl-checkbox__label">Tooth 8</span>
                                        </label>
                                   </div>
                                   <div class="col-md-4 col-sm-4 col-lg-4">
                                       <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                            <input type="checkbox" id="Checkbox8" class="mdl-checkbox__input">
                                            <span class="mdl-checkbox__label">Tooth 8</span>
                                        </label>
                                   </div>
                                   <div class="col-md-4 col-sm-4 col-lg-4">
                                       <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                            <input type="checkbox" id="Checkbox9" class="mdl-checkbox__input">
                                            <span class="mdl-checkbox__label">Tooth 8</span>
                                        </label>
                                   </div>
                                   <div class="col-md-4 col-sm-4 col-lg-4">
                                       <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                            <input type="checkbox" id="Checkbox10" class="mdl-checkbox__input">
                                            <span class="mdl-checkbox__label">Tooth 8</span>
                                        </label>
                                   </div>
                                   <div class="col-md-4 col-sm-4 col-lg-4">
                                       <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                            <input type="checkbox" id="Checkbox11" class="mdl-checkbox__input">
                                            <span class="mdl-checkbox__label">Tooth 8</span>
                                        </label>
                                   </div>
                                   <div class="col-md-4 col-sm-4 col-lg-4">
                                       <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                            <input type="checkbox" id="Checkbox12" class="mdl-checkbox__input">
                                            <span class="mdl-checkbox__label">Tooth 8</span>
                                        </label>
                                   </div>
                                   <div class="col-md-4 col-sm-4 col-lg-4">
                                       <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                            <input type="checkbox" id="Checkbox13" class="mdl-checkbox__input">
                                            <span class="mdl-checkbox__label">Tooth 8</span>
                                        </label>
                                   </div>
                                   <div class="col-md-4 col-sm-4 col-lg-4">
                                       <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                            <input type="checkbox" id="Checkbox14" class="mdl-checkbox__input">
                                            <span class="mdl-checkbox__label">Tooth 8</span>
                                        </label>
                                   </div>
                               </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12 button-row" style="position:absolute; bottom:20px;    padding: 0px; right: 25px;">
                                <button class="btn btn-primary pull-right right-button cancel-popup">
                                    CANCEL
                                </button>
                                <button class="btn btn-primary pull-right spacer-10 left-button">
                                    OK
                                </button>
                            </div>
                        </div>
                    </div>
                <!-- COmbo popup End -->

                <!-- POPUPS End -->


                <div class="col-md-3 col-sm-3 col-lg-3 np" style="background: #f2f2f2; height:345px;">
                    <div class="row no-margin">
                        <div class="col-md-12 col-sm-12 col-lg-12 h-30" style="background: #00BCD4;">
                            <span class="pull-right font-white bold fs-13 mt-5">786979</span>
                        </div>

                        <div class="col-md-12 col-sm-12 col-lg-12 padding-15">
                            <ul class="observation-list">
                                
                            </ul>
                        </div>    
                    </div>                    
                </div>

                <div class="col-md-9 col-sm-9 col-lg-9 np">
                    <div class="row no-margin">
                        <div class="col-md-12 col-sm-12 col-lg-12 h-30" style="background: #e4e4e4;">
                            <table class="header-table">
                                <tr>
                                    <td><span class="font-gray bold fs-12 mt-5 npl" style="color:#138e9f">Thyrogloblin, Tumor Marker, Serum</span></td>
                                    <td><i class="fa fa-file-text-o fs-12 spacer-10" style="color:#4285f4"></i><span class="cool-font bold fs-12 mt-5">1 - NOS</span></td>
                                    <td><i class="fa fa-dollar fs-12 spacer-10" style="color:#38cf38"></i><span class="cool-font bold fs-12 mt-5">750.00</span></td>
                                    <td><i class="fa fa-money fs-12 spacer-10" style="color:#cf6c4e"></i><span class="cool-font bold fs-12 mt-5">750.00</span></td>
                                    <td><i class="fa fa-calendar fs-12 spacer-10" style="color:gray"></i><span class="cool-font bold fs-12 mt-5">08/03/2017 10:00 AM</span></td>
                                </tr>
                            </table>
                            <i class="fa fa-times-circle pull-right mr-10 close-observation"></i>
                        </div>
                         <!-- Result Div -->
                                    <div class="col-md-12 col-sm-12 col-lg-12 dynamic-div result-div np">
                                        <i class="fa fa-eye fs-15 cool-font show-icon"></i>
                                        <div id="observationGrid"></div>
                                    </div>
                        
                        <!-- Text div -->
                        <div class="col-md-7 col-sm-7 col-lg-7 pl-15 pt-15 npr">
                            <div class="control-container ph pw">
                                <div class="row no-margin mt-15" style="position:relative; height:300px;">
                                    <div class="col-md-6 col-sm-6 col-lg-6 flex">
                                        <i class="input-icon fa fa-lg fa-shirtsinbulk"></i>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <input class="mdl-textfield__input observationTypeField" type="text" id="observationType" />
                                            <label class="mdl-textfield__label" for="observationType">Observation Type</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-lg-6  flex">
                                        <i class="input-icon fa fa-lg fa-empire"></i>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <input class="mdl-textfield__input observationCodeField" type="text" id="observationCode" />
                                            <label class="mdl-textfield__label" for="observationCode">Observation Code</label>
                                        </div>                                        
                                    </div>

                                    <!-- Text div -->
                                    <div class="col-md-12 col-sm-12 col-lg-12 dynamic-div text-div np">
                                        <div class="row no-margin mt-15 ">
                                            <div class="col-md-12 col-sm-12 col-lg-12">
                                                <div class="flex pw">
                                                    <i class="cool-font fa fa-keyboard-o fs-14 spacer-10" style="margin-top:4px;"></i>
                                                    <span class="cool-font fs-12 bold">Observation Value</span>
                                                </div>

                                                <textarea class="observation-textarea"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <!-- Number Div -->
                                    <div class="col-md-12 col-sm-12 col-lg-12 np dynamic-div number-div">
                                        <div class="row no-margin mt-15 ">
                                            <div class="col-md-6 col-sm-6 col-lg-6 flex">
                                                <i class="input-icon fa fa-lg fa-keyboard-o"></i>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <input class="mdl-textfield__input" type="text" id="Text1" />
                                                    <label class="mdl-textfield__label" for="observationValue">Observation Value</label>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-6 col-lg-6  flex">
                                                <i class="input-icon fa fa-lg fa-cog"></i>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <input class="mdl-textfield__input" type="text" id="Text2" />
                                                    <label class="mdl-textfield__label" for="observationUnit">Observation Unit</label>
                                                </div>                                        
                                            </div>
                                        </div>
                                    </div>

                                    <!-- File div -->
                                    <div class="col-md-12 col-sm-12 col-lg-12 dynamic-div file-div np">
                                        <div class="row no-margin mt-15 ">
                                            <div class="col-md-12 col-sm-12 col-lg-12">
                                                <div class="flex pw">
                                                    <i class="cool-font fa fa-keyboard-o fs-14 spacer-10" style="margin-top:4px;"></i>
                                                    <span class="cool-font fs-12 bold">Observation Value</span>
                                                </div>
                                                <div class="file-icon-wrapper">
                                                     <label for="observationFile" style="margin-top:18px;margin-left: 20px;">
                                                         <i class="fa fa-paperclip file-icon"></i>
                                                         <span class="attach-text">Attach</span>
                                                     </label>   
                                                </div>
                                                <input type="file" name="" id="observationFile" hidden="">
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Combo div -->
                                    <div class="col-md-12 col-sm-12 col-lg-12 dynamic-div combo-div np">
                                        <div class="row no-margin mt-15 ">
                                            <div class="col-md-12 col-sm-12 col-lg-12">
                                                <div class="flex pw">
                                                    <i class="cool-font fa fa-keyboard-o fs-14 spacer-10" style="margin-top:4px;"></i>
                                                    <span class="cool-font fs-12 bold">Observation Value</span>
                                                </div>
                                                
                                                <div class="combo-box pw">
                                                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-top: -17px;">
                                                        <input class="mdl-textfield__input icnInp" type="text" id="Text3" placeholder="Search" />
                                                        <i class="searchIcon fa fa-lg fa-search" id="I1" style="    font-size: 14px;color: #6f6f6f;"></i>
                                                    </div>
                                                   <div class="row no-margin" style="position: relative;top: -10px;">
                                                       <div class="col-md-4 col-sm-4 col-lg-4">
                                                           <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                                                <input type="checkbox" id="Checkbox15" class="mdl-checkbox__input">
                                                                <span class="mdl-checkbox__label">Tooth 1</span>
                                                            </label>
                                                       </div>
                                                       <div class="col-md-4 col-sm-4 col-lg-4">
                                                           <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                                                <input type="checkbox" id="Checkbox16" class="mdl-checkbox__input">
                                                                <span class="mdl-checkbox__label">Tooth 2</span>
                                                            </label>
                                                       </div>
                                                       <div class="col-md-4 col-sm-4 col-lg-4">
                                                           <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                                                <input type="checkbox" id="Checkbox17" class="mdl-checkbox__input">
                                                                <span class="mdl-checkbox__label">Tooth 3</span>
                                                            </label>
                                                       </div>
                                                       <div class="col-md-4 col-sm-4 col-lg-4">
                                                           <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                                                <input type="checkbox" id="Checkbox18" class="mdl-checkbox__input">
                                                                <span class="mdl-checkbox__label">Tooth 4</span>
                                                            </label>
                                                       </div>
                                                       <div class="col-md-4 col-sm-4 col-lg-4">
                                                           <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                                                <input type="checkbox" id="Checkbox19" class="mdl-checkbox__input">
                                                                <span class="mdl-checkbox__label">Tooth 5</span>
                                                            </label>
                                                       </div>
                                                       <div class="col-md-4 col-sm-4 col-lg-4">
                                                           <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                                                <input type="checkbox" id="Checkbox20" class="mdl-checkbox__input">
                                                                <span class="mdl-checkbox__label">Tooth 6</span>
                                                            </label>
                                                       </div>
                                                       <div class="col-md-4 col-sm-4 col-lg-4">
                                                           <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                                                <input type="checkbox" id="Checkbox21" class="mdl-checkbox__input">
                                                                <span class="mdl-checkbox__label">Tooth 7</span>
                                                            </label>
                                                       </div>
                                                       <div class="col-md-4 col-sm-4 col-lg-4">
                                                           <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="chkmrm">
                                                                <input type="checkbox" id="Checkbox22" class="mdl-checkbox__input">
                                                                <span class="mdl-checkbox__label">Tooth 8</span>
                                                            </label>
                                                       </div>
                                                   </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>                                   

                                   

                                    <!-- Button row -->
                                    <div class="col-md-12 col-sm-12 col-lg-12 button-row" style="position:absolute; bottom:55px;">
                                        <button class="btn btn-primary pull-right right-button">
                                            CANCEL
                                        </button>
                                        <button class="btn btn-primary pull-right spacer-10 left-button">
                                            OK
                                        </button>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-lg-12 desc-box flex">
                                    <span><i class="fa fa-question-circle desc-icon fs-20 spacer-10"></i></span>
                                    <div class="show-desc fs-11"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5 col-sm-5 col-lg-5 pl-15 npr">
                             <div class="row no-margin">
                                <div class="col-md-12 col-sm-12 col-lg-12 h-30 pt-5 observation-info" style="background:#f2f2f2; height:315px;">
                                        <i class="fa cool-font fa-dashboard spacer-10 fs-15" style="margin-top:2px;"></i>
                                        <span class="cool-font bold fs-13">Observation Info</span><br><br><br>

                                        <div class="big-labels pw" style="padding-left: 15%;">
                                        <div class="mb-30">
                                            <i class="fa cool-font fa-calendar spacer-10 fs-15" style="margin-top:2px;"></i>
                                            <span class="cool-font fs-13">03/03/2017 10:00 AM</span><br>
                                        </div>                                       
                                        <div class="mb-30">
                                            <i class="fa cool-font fa-file-text-o spacer-10 fs-15" style="margin-top:2px;"></i>
                                            <span class="cool-font fs-13">876867868768</span><br>
                                        </div>
                                        <div class="mb-30">                                       
                                            <i class="fa cool-font fa-user spacer-10 fs-15" style="margin-top:2px;"></i>
                                            <span class="cool-font fs-13">Ragavendran. S</span><br>
                                        </div>                                        
                                        </div>

                                </div>

                                <div class="col-md-12 col-sm-12 col-lg-12 h-30 padding-5 observation-scroll" style="background:#f2f2f2; height:315px; width:100% !important; display:none;">
                                    
                                    <!-- Template -->
                                    <table class="observation-template">
                                        <tr>
                                            <td style="background: #00bcd4; color:white;" align="center">
                                                Type
                                            </td>

                                            <td>
                                                <table>
                                                    <tr>
                                                        <td colspan="2">Observation Code</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Observation Value</td>
                                                        <td style="padding-left: 20px;">Unit</td>                             
                                                    </tr>          
                                                </table>    
                                            </td>
                                            <td>
                                                <button class="mdl-button mdl-js-button mdl-button--icon pull-right" style="font-size:13px; color:#00bcd4;">
                                                  <i class="fa fa-trash"></i>
                                                </button>

                                                <button class="mdl-button mdl-js-button mdl-button--icon pull-right" style="position:relative; top:1px; font-size:13px; color:#c46e6e;">
                                                  <i class="fa fa-edit"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>

                                    <table class="observation-template">
                                        <tr>
                                            <td style="background: #00bcd4; color:white;" align="center">
                                                Type
                                            </td>

                                            <td>
                                                <table>
                                                    <tr>
                                                        <td colspan="2">Observation Code</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Observation Value</td>
                                                        <td style="padding-left: 20px;">Unit</td>                             
                                                    </tr>          
                                                </table>    
                                            </td>
                                            <td>
                                                <button class="mdl-button mdl-js-button mdl-button--icon pull-right" style="font-size:13px; color:#00bcd4;">
                                                  <i class="fa fa-trash"></i>
                                                </button>

                                                <button class="mdl-button mdl-js-button mdl-button--icon pull-right" style="position:relative; top:1px; font-size:13px; color:#c46e6e;">
                                                  <i class="fa fa-edit"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </table>

                                </div> 
                            </div>       
                        </div>    
                    </div>       
                </div>

            </div>
        </div>

</asp:content>
<asp:content id="Content3" contentplaceholderid="ContentJs" runat="server">
    <script>
        
    </script>
<script src="observation.js"></script>    
</asp:content>

              