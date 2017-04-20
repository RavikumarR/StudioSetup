<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BedStatus.aspx.cs" Inherits="SampleProjectDHA.Workbench" MasterPageFile="~/Master/uiStaticPage.Master" %>

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

    </style>

    <link rel="stylesheet" href="RCMIPStyle.css" type="text/css">    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentHTML" runat="server">
    
    <div class="row no-margin">
        <div class="col col-md-12 col-sm-12 col-xs-12 col-lg-12 no-padding bg-lightgray">
            <div class="row no-margin">
                <div class="col-md-3 col-sm-3 col-xs-3 col-lg-3 np">
                    <div class="c-header bg-green ph pl-10 pt-10 pb-10">
                        <i class="c-header-icon fa fa-bed data-white fs-18 spacer-10"></i>
                        <span class="c-header-title data-white fs-16">Bed Status</span>
                        <span></span>
                        <span></span>
                    </div>
                </div>
                <div class="col-md-9 col-sm-9 col-xs-9 col-lg-9 header-search-box bg-white" style="height:40px !important;">
                    <i class="fa fa-search"></i>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label search-input" style="width: calc( 100% - 70px ) !important; margin-top:-12px; min-width:70% !important;">
                            <input class="mdl-textfield__input" spellcheck='false' type="text" id="search1"/>
                            <label class="mdl-textfield__label" for="search1">Search</label>
                        </div>

                    <button class="mdl-button mdl-js-button mdl-button--icon pull-right  fs-18">
                      <i class="fa fa-ellipsis-v pointer"></i> 
                    </button>
                </div>   
            </div>
        </div>

        <div class="col col-md-3 filter-panel np" id="filterPanel" style="display:block;" >
         <div class="portlet box bg-white">
            <div class="portlet-title">
                <div class="caption">
                    Filter 
                </div>
                <span class="pull-right pointer" id="filterMenuToggle">
                    <i class="fa fa-bars"></i>
                </span>
            </div>
            <div class="portlet-body no-padding" style="height: calc(100vh - 157px) !important;">
            
            
                    <!-- <div class="panel-group accordion" id="accordion3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle accordion-toggle-styled" data-toggle="collapse" data-parent="#accordion3" href="#collapse_3_1"> Item 1</a>
                            </h4>
                        </div>
                        <div id="collapse_3_1" class="panel-collapse in">
                            <div class="panel-body">
                                <p> Duis autem vel eum iriure dolor in hendrerit in vulputate. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut. </p>                                 
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle accordion-toggle-styled collapsed" data-toggle="collapse" data-parent="#accordion3" href="#collapse_3_2"> Item 2 </a>
                            </h4>
                        </div>
                        <div id="collapse_3_2" class="panel-collapse collapse">
                            <div class="panel-body" style="height:200px; overflow-y:auto;">
                                <p> Duis autem vel eum iriure dolor in hendrerit in vulputate. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut. </p>
                             
                            </div>
                        </div>
                    </div>
                    
                </div> -->
                
            <!--     <div class="panel panel-default no-margin">
                    <div class="panel-heading item-header">
                        <div class="row">
                            <div class="col col-md-10 col-sm-10 col-xs-12">
                                <span>Grouping</span>
                            </div>
                            <div class="col col-md-2 col-sm-2 col-xs-12">
                                <span class="item-state">+</span>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-body item-content in-active pl-4 no-margin no-pt">
                    <div id="maintree" style="margin-left:-12px;"></div>
                    </div>
                </div> -->

                <div class="panel panel-default no-margin">
                    <div class="panel-heading item-header">
                        <div class="row">
                            <div class="col col-md-10 col-sm-10 col-xs-12">
                                <span>Bed Type</span>
                            </div>
                            <div class="col col-md-2 col-sm-2 col-xs-12">
                                <!-- <span class="item-state">+</span> -->
                                <i class="fa fa-caret-down item-state"></i>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-body item-content in-active pl-4 no-margin no-pt">
                    <!-- Search -->
                        <div class="row no-margin no-padding">
                             <div class="col-md-12 col-sm-12 col-xs-12 no-pl pull-up-1">
                                <i class="fa fa-search"></i>
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label search-input" style="width:90% !important;">
                                    <input class="mdl-textfield__input "  spellcheck='false' type="text" id="search1"/>
                                    <label class="mdl-textfield__label" for="search1">Search</label>
                                </div>
                            </div>
                        </div>
                         <label class="mdl-checkbox mdl-js-checkbox" for="cbox11">
                            <input type="checkbox" id="checkbox11" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Patient</span>
                         </label>

                         <label class="mdl-checkbox mdl-js-checkbox" for="checkbox12">
                            <input type="checkbox" id="checkbox12" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Doctor</span>
                         </label>
                         <label class="mdl-checkbox mdl-js-checkbox" for="checkbox13">
                            <input type="checkbox" id="checkbox13" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">GOD</span>
                         </label>
                         <div class="row more-data" id="moreData">
                             <div class="col col-md-12">
                                 <a href="#" data-toggle="modal" data-target="#filterModal">
                                 <span class="bind-data pull-right">
                                    +25 More
                                 </span></a>
                             </div>
                         </div>
                    </div>
                </div>

                <div class="panel panel-default no-margin">
                    <div class="panel-heading item-header">
                        <div class="row">
                            <div class="col col-md-10">
                                <span>Ward</span>
                            </div>
                            <div class="col col-md-2">
                                <!-- <span class="item-state">+</span> -->
                                <i class="fa fa-caret-down item-state"></i>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-body item-content in-active pl-4 no-margin no-pt">
                        <!-- Search -->
                        <div class="row no-margin no-padding">
                             <div class="col-md-12 col-sm-12 col-xs-12 no-pl pull-up-1">
                                <i class="fa fa-search"></i>
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label search-input" style="width:90% !important;">
                                    <input class="mdl-textfield__input "  spellcheck='false' type="text" id="Text3"/>
                                    <label class="mdl-textfield__label" for="search1">Search</label>
                                </div>
                            </div>
                        </div>
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox1">
                            <input type="checkbox" id="cbox1" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 1</span>
                        </label>
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox2">
                            <input type="checkbox" id="cbox2" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 2</span>
                        </label>
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox3">
                            <input type="checkbox" id="cbox3" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 3</span>
                        </label>
                        <div class="row more-data" id="Div7">
                             <div class="col col-md-12">
                                 <a href="#" data-toggle="modal" data-target="#filterModal">
                                 <span class="bind-data pull-right">
                                    +25 More
                                 </span></a>
                             </div>
                         </div>
                    </div>
                    
                </div>

                <div class="panel panel-default no-margin">
                    <div class="panel-heading item-header">
                        <div class="row">
                            <div class="col col-md-10">
                                <span>Bed</span>
                            </div>
                            <div class="col col-md-2">
                                <!-- <span class="item-state">+</span> -->
                                <i class="fa fa-caret-down item-state"></i>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-body item-content in-active pl-4 no-margin no-pt">
                    <!-- Search -->
                        <div class="row no-margin no-padding">
                             <div class="col-md-12 col-sm-12 col-xs-12 no-pl pull-up-1">
                                <i class="fa fa-search"></i>
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label search-input" style="width:90% !important;">
                                    <input class="mdl-textfield__input "  spellcheck='false' type="text" id="Text4"/>
                                    <label class="mdl-textfield__label" for="search1">Search</label>
                                </div>
                            </div>
                        </div>
                        <label class="mdl-checkbox mdl-js-checkbox" for="checkbox14">
                            <input type="checkbox" id="checkbox14" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 1</span>
                        </label>
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox12">
                            <input type="checkbox" id="cbox12" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 2</span>
                        </label>
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox13">
                            <input type="checkbox" id="cbox13" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 3</span>
                        </label>
                        <div class="row more-data" id="Div9">
                             <div class="col col-md-12">
                                 <a href="#" data-toggle="modal" data-target="#filterModal">
                                 <span class="bind-data pull-right">
                                    +25 More
                                 </span></a>
                             </div>
                         </div>
                    </div>

                </div>

            </div>
        </div>
                                
        <!-- END ACCORDION PORTLET-->
        <!-- @Filter Modal -->
        <div id="filterModal" class="modal fade filter-modal" role="dialog">
          <div class="modal-dialog no-margin">
            <!-- Modal content-->
            <div class=" no-margin">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title data-dag size-3 bold">Change Category</h4>
              </div>
              <div class="modal-body no-margin no-pt">
              <!-- Search -->
                        <div class="row no-margin no-padding">
                             <div class="col-md-12 col-sm-12 col-xs-12 no-pl">
                                <i class="fa fa-search"></i>
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label search-input" style="width:90% !important;">
                                    <input class="mdl-textfield__input "  spellcheck='false' type="text" id="Text5"/>
                                    <label class="mdl-textfield__label" for="search1">Search</label>
                                </div>
                            </div>
                        </div>
            <div class="custom-modal-body">
                <div class="row">
                    <div class="col col-md-4">
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox13">
                            <input type="checkbox" id="Checkbox1" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 3</span>
                        </label>
                    </div>
                    <div class="col col-md-4">
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox14">
                            <input type="checkbox" id="cbox14" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 3</span>
                        </label>
                    </div>
                    <div class="col col-md-4">
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox15">
                            <input type="checkbox" id="cbox15" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 3</span>
                        </label>
                    </div>
                    <div class="col col-md-4">
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox16">
                            <input type="checkbox" id="cbox16" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 3</span>
                        </label>
                    </div>
                    <div class="col col-md-4">
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox17">
                            <input type="checkbox" id="cbox17" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 3</span>
                        </label>
                    </div>
                    <div class="col col-md-4">
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox18">
                            <input type="checkbox" id="cbox24" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 3</span>
                        </label>
                    </div>
                    <div class="col col-md-4">
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox19">
                            <input type="checkbox" id="cbox19" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 3</span>
                        </label>
                    </div>
                    <div class="col col-md-4">
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox20">
                            <input type="checkbox" id="cbox20" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 3</span>
                        </label>
                    </div>
                    <div class="col col-md-4">
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox22">
                            <input type="checkbox" id="cbox22" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 3</span>
                        </label>
                    </div>
                    <div class="col col-md-4">
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox23">
                            <input type="checkbox" id="cbox23" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 3</span>
                        </label>
                    </div>
                    <div class="col col-md-4">
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox24">
                            <input type="checkbox" id="Checkbox2" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 3</span>
                        </label>
                    </div>
                    <div class="col col-md-4">
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox25">
                            <input type="checkbox" id="cbox25" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 3</span>
                        </label>
                    </div>
                    <div class="col col-md-4">
                        <label class="mdl-checkbox mdl-js-checkbox" for="cbox26">
                            <input type="checkbox" id="cbox26" class="mdl-checkbox__input">
                            <span class="mdl-checkbox__label">Category 3</span>
                        </label>
                    </div>
                    </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">OK</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
              </div>
            </div>

          </div>
        </div>
        </div>

        <div class="col-md-9 col-sm-9 col-xs-9 col-lg-9 main-template-div">
            <div class="row no-margin">
                <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 main-scroll" style="width:100% !important;">
                    
                <div class="row no-data" align="center" style="display: none;">
                    <div class="col-md-12" style="padding-top:20%;">
                        <i class="fa fa-yelp" style="color:lightgray; font-size:70px;"></i><br><br>
                        <span class="fs-20" style="color:lightgray;"> No data found </span>
                    </div>
                </div>

                    <div class="row no-margin">
                      <!-- Occupied -->
                      <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6 np border-lightgray template-div">
                           <table class="table no-margin">
                               <tr>
                                   <td class="template-head">
                                      <div class="row no-margin">
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-wrapper">
                                                <i class="fa fa-bed bed-icon template-icon"></i> 
                                          </div>
                                          
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-box pt-5" style="height:30px;">
                                             <span class="bed-status">Occupied</span>
                                          </div>
                                      </div> 
                                   </td>
                                   <td class="np template-border">
                                       <table class="table template-table">
                                           <tr>
                                               <td><i class="fa fa-bed spacer-3"></i> <span>501</span></td>
                                               <td><i class="fa fa-cog spacer-3"></i> <span>Private Bed A/C</span></td>
                                               <td><i class="fa fa-building spacer-3"></i> <span>5th Floor</span></td>
                                               <td class="tool-box"> 
                                                    <label class="mdl-checkbox mdl-js-checkbox" for="cbox1112">
                                                    <input type="checkbox" id="cbox1112" class="mdl-checkbox__input">
                                                    <span class="mdl-checkbox__label"></span>
                                                 </label>                         
                                                 <i class="fa fa-ellipsis-v pointer menu-icon"></i>              
                                                </td>
                                           </tr>
                                           <tr>
                                               <td colspan="3"><i class="fa fa-user spacer-3"></i><span>764765767 -  Lawrence David Pillai</span></td>
                                               
                                               <td><i class="fa fa-male spacer-3"></i><span>72 - years</span></td>
                                           </tr>
                                           <tr>
                                               <td colspan="4"> <i class="fa fa-sign-out spacer-3"></i><span>Expected Discharge : 31/12/2016 </span></td>                         
                                           </tr>
                                       </table>
                                   </td>
                               </tr>
                           </table>
                       </div>

                      <!-- vacant -->
                       <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6 np border-lightgray template-div">
                           <table class="table no-margin">
                               <tr>
                                   <td class="template-head">
                                      <div class="row no-margin">
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-wrapper">
                                                <i class="fa fa-bed bed-icon template-icon"></i> 
                                          </div>
                                          
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-box pt-5" style="height:30px;">
                                             <span class="bed-status">Vacant</span>
                                          </div>
                                      </div> 
                                   </td>
                                   <td class="np template-border">
                                       <table class="table template-table">
                                           <tr>
                                               <td style="height:25px;">  </td>   
                                               <td style="height:25px;">  </td>   
                                               <td style="height:25px;">  </td>   
                                               <td class="tool-box" style="min-width: 67px;"> 
                                                    <label class="mdl-checkbox mdl-js-checkbox" for="cbox11">
                                                        <input type="checkbox" id="checkbox11" class="mdl-checkbox__input">
                                                        <span class="mdl-checkbox__label"></span>
                                                     </label>                         
                                                 <i class="fa fa-ellipsis-v pointer menu-icon"></i>              
                                                </td>
                                           </tr>
                                           <tr>
                                               <td><i class="fa fa-bed spacer-3"></i> <span>501</span></td>
                                               <td><i class="fa fa-cog spacer-3"></i> <span>Private Bed A/C</span></td>
                                               <td><i class="fa fa-building spacer-3"></i> <span>5th Floor</span></td>
                                               
                                           </tr>
                                           <tr>
                                               <td colspan="3" style="height:25px;">  </td>
                                           </tr>
                                       </table>
                                   </td>
                               </tr>
                           </table>
                       </div>
                    </div>
                    
                    <!-- Template 2 -->
                    <div class="row no-margin">
                        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6 np border-lightgray template-div">
                           <table class="table no-margin">
                               <tr>
                                   <td class="template-head">
                                      <div class="row no-margin">
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-wrapper">
                                                <i class="fa fa-bed bed-icon template-icon"></i> 
                                          </div>
                                          
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-box pt-5" style="height:30px;">
                                             <span class="bed-status">Blocked</span>
                                          </div>
                                      </div> 
                                   </td>
                                   <td class="np template-border">
                                       <table class="table template-table">
                                           <tr>
                                               <td><i class="fa fa-bed spacer-3"></i> <span>501</span></td>
                                               <td><i class="fa fa-cog spacer-3"></i> <span>Private Bed A/C</span></td>
                                               <td><i class="fa fa-building spacer-3"></i> <span>5th Floor</span></td>
                                               <td class="tool-box"> 
                                                    <label class="mdl-checkbox mdl-js-checkbox" for="cbox11">
                                                    <input type="checkbox" id="checkbox11" class="mdl-checkbox__input">
                                                    <span class="mdl-checkbox__label"></span>
                                                 </label>                         
                                                 <i class="fa fa-ellipsis-v pointer menu-icon"></i>              
                                                </td>
                                           </tr>
                                           <tr>
                                               <td colspan="3"><i class="fa fa-file-o spacer-3"></i><span>Maintanence Work</span></td>
                                               
                                               <td><i class="fa fa-male spacer-3"></i><span>72 - years</span></td>
                                           </tr>
                                           <tr>
                                               <td colspan="4"> <i class="fa fa-calendar spacer-3"></i><span> Blocked on : 31/12/2016 </span></td>                         
                                           </tr>
                                       </table>
                                   </td>
                               </tr>
                           </table>
                       </div>

                      <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6 np border-lightgray template-div">
                           <table class="table no-margin">
                               <tr>
                                   <td class="template-head">
                                      <div class="row no-margin">
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-wrapper">
                                                <i class="fa fa-bed bed-icon template-icon"></i> 
                                          </div>
                                          
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-box pt-5" style="height:30px;">
                                             <span class="bed-status">Reserved</span>
                                          </div>
                                      </div> 
                                   </td>
                                   <td class="np template-border">
                                       <table class="table template-table">
                                           <tr>
                                               <td><i class="fa fa-bed spacer-3"></i> <span>501</span></td>
                                               <td><i class="fa fa-cog spacer-3"></i> <span>Private Bed A/C</span></td>
                                               <td><i class="fa fa-building spacer-3"></i> <span>5th Floor</span></td>
                                               <td class="tool-box"> 
                                                    <label class="mdl-checkbox mdl-js-checkbox" for="cbox11">
                                                    <input type="checkbox" id="checkbox11" class="mdl-checkbox__input">
                                                    <span class="mdl-checkbox__label"></span>
                                                 </label>                         
                                                 <i class="fa fa-ellipsis-v pointer menu-icon"></i>              
                                                </td>
                                           </tr>
                                           <tr>
                                               <td colspan="3"><i class="fa fa-user spacer-3"></i><span>764765767 -  Lawrence David Pillai</span></td>
                                               
                                               <td><i class="fa fa-male spacer-3"></i><span>72 - years</span></td>
                                           </tr>
                                           <tr>
                                               <td colspan="4"> <i class="fa fa-sign-out spacer-3"></i><span>Expected Discharge : 31/12/2016 </span></td>                         
                                           </tr>
                                       </table>
                                   </td>
                               </tr>
                           </table>
                       </div>
                    </div>
                    <div class="row no-margin">
                      <!-- Occupied -->
                      <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6 np border-lightgray template-div">
                           <table class="table no-margin">
                               <tr>
                                   <td class="template-head">
                                      <div class="row no-margin">
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-wrapper">
                                                <i class="fa fa-bed bed-icon template-icon"></i> 
                                          </div>
                                          
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-box pt-5" style="height:30px;">
                                             <span class="bed-status">Occupied</span>
                                          </div>
                                      </div> 
                                   </td>
                                   <td class="np template-border">
                                       <table class="table template-table">
                                           <tr>
                                               <td><i class="fa fa-bed spacer-3"></i> <span>501</span></td>
                                               <td><i class="fa fa-cog spacer-3"></i> <span>Private Bed A/C</span></td>
                                               <td><i class="fa fa-building spacer-3"></i> <span>5th Floor</span></td>
                                               <td class="tool-box"> 
                                                    <label class="mdl-checkbox mdl-js-checkbox" for="cbox111">
                                                    <input type="checkbox" id="cbox111" class="mdl-checkbox__input">
                                                    <span class="mdl-checkbox__label"></span>
                                                 </label>                         
                                                 <i class="fa fa-ellipsis-v pointer menu-icon"></i>              
                                                </td>
                                           </tr>
                                           <tr>
                                               <td colspan="3"><i class="fa fa-user spacer-3"></i><span>764765767 -  Lawrence David Pillai</span></td>
                                               
                                               <td><i class="fa fa-male spacer-3"></i><span>72 - years</span></td>
                                           </tr>
                                           <tr>
                                               <td colspan="4"> <i class="fa fa-sign-out spacer-3"></i><span>Expected Discharge : 31/12/2016 </span></td>                         
                                           </tr>
                                       </table>
                                   </td>
                               </tr>
                           </table>
                       </div>

                      <!-- vacant -->
                       <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6 np border-lightgray template-div">
                           <table class="table no-margin">
                               <tr>
                                   <td class="template-head">
                                      <div class="row no-margin">
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-wrapper">
                                                <i class="fa fa-bed bed-icon template-icon"></i> 
                                          </div>
                                          
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-box pt-5" style="height:30px;">
                                             <span class="bed-status">Vacant</span>
                                          </div>
                                      </div> 
                                   </td>
                                   <td class="np template-border">
                                       <table class="table template-table">
                                           <tr>
                                               <td style="height:25px;">  </td>   
                                               <td style="height:25px;">  </td>   
                                               <td style="height:25px;">  </td>   
                                               <td class="tool-box" style="min-width: 67px;"> 
                                                    <label class="mdl-checkbox mdl-js-checkbox" for="cbox11">
                                                        <input type="checkbox" id="checkbox11" class="mdl-checkbox__input">
                                                        <span class="mdl-checkbox__label"></span>
                                                     </label>                         
                                                 <i class="fa fa-ellipsis-v pointer menu-icon"></i>              
                                                </td>
                                           </tr>
                                           <tr>
                                               <td><i class="fa fa-bed spacer-3"></i> <span>501</span></td>
                                               <td><i class="fa fa-cog spacer-3"></i> <span>Private Bed A/C</span></td>
                                               <td><i class="fa fa-building spacer-3"></i> <span>5th Floor</span></td>
                                               
                                           </tr>
                                           <tr>
                                               <td colspan="3" style="height:25px;">  </td>
                                           </tr>
                                       </table>
                                   </td>
                               </tr>
                           </table>
                       </div>
                    </div>

                    <div class="row no-margin">
                        <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6 np border-lightgray template-div">
                           <table class="table no-margin">
                               <tr>
                                   <td class="template-head">
                                      <div class="row no-margin">
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-wrapper">
                                                <i class="fa fa-bed bed-icon template-icon"></i> 
                                          </div>
                                          
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-box pt-5" style="height:30px;">
                                             <span class="bed-status">Blocked</span>
                                          </div>
                                      </div> 
                                   </td>
                                   <td class="np template-border">
                                       <table class="table template-table">
                                           <tr>
                                               <td><i class="fa fa-bed spacer-3"></i> <span>501</span></td>
                                               <td><i class="fa fa-cog spacer-3"></i> <span>Private Bed A/C</span></td>
                                               <td><i class="fa fa-building spacer-3"></i> <span>5th Floor</span></td>
                                               <td class="tool-box"> 
                                                    <label class="mdl-checkbox mdl-js-checkbox" for="cbox11">
                                                    <input type="checkbox" id="checkbox11" class="mdl-checkbox__input">
                                                    <span class="mdl-checkbox__label"></span>
                                                 </label>                         
                                                 <i class="fa fa-ellipsis-v pointer menu-icon"></i>              
                                                </td>
                                           </tr>
                                           <tr>
                                               <td colspan="3"><i class="fa fa-file-o spacer-3"></i><span>Maintanence Work</span></td>
                                               
                                               <td><i class="fa fa-male spacer-3"></i><span>72 - years</span></td>
                                           </tr>
                                           <tr>
                                               <td colspan="4"> <i class="fa fa-calendar spacer-3"></i><span> Blocked on : 31/12/2016 </span></td>                         
                                           </tr>
                                       </table>
                                   </td>
                               </tr>
                           </table>
                       </div>

                      <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6 np border-lightgray template-div">
                           <table class="table no-margin">
                               <tr>
                                   <td class="template-head">
                                      <div class="row no-margin">
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-wrapper">
                                                <i class="fa fa-bed bed-icon template-icon"></i> 
                                          </div>
                                          
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-box pt-5" style="height:30px;">
                                             <span class="bed-status">Reserved</span>
                                          </div>
                                      </div> 
                                   </td>
                                   <td class="np template-border">
                                       <table class="table template-table">
                                           <tr>
                                               <td><i class="fa fa-bed spacer-3"></i> <span>501</span></td>
                                               <td><i class="fa fa-cog spacer-3"></i> <span>Private Bed A/C</span></td>
                                               <td><i class="fa fa-building spacer-3"></i> <span>5th Floor</span></td>
                                               <td class="tool-box"> 
                                                    <label class="mdl-checkbox mdl-js-checkbox" for="cbox11">
                                                    <input type="checkbox" id="checkbox11" class="mdl-checkbox__input">
                                                    <span class="mdl-checkbox__label"></span>
                                                 </label>                         
                                                 <i class="fa fa-ellipsis-v pointer menu-icon"></i>              
                                                </td>
                                           </tr>
                                           <tr>
                                               <td colspan="3"><i class="fa fa-user spacer-3"></i><span>764765767 -  Lawrence David Pillai</span></td>
                                               
                                               <td><i class="fa fa-male spacer-3"></i><span>72 - years</span></td>
                                           </tr>
                                           <tr>
                                               <td colspan="4"> <i class="fa fa-sign-out spacer-3"></i><span>Expected Discharge : 31/12/2016 </span></td>                         
                                           </tr>
                                       </table>
                                   </td>
                               </tr>
                           </table>
                       </div>
                    </div>

                    <div class="row no-margin">
                      <!-- Occupied -->
                      <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6 np border-lightgray template-div">
                           <table class="table no-margin">
                               <tr>
                                   <td class="template-head">
                                      <div class="row no-margin">
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-wrapper">
                                                <i class="fa fa-bed bed-icon template-icon"></i> 
                                          </div>
                                          
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-box pt-5" style="height:30px;">
                                             <span class="bed-status">Occupied</span>
                                          </div>
                                      </div> 
                                   </td>
                                   <td class="np template-border">
                                       <table class="table template-table">
                                           <tr>
                                               <td><i class="fa fa-bed spacer-3"></i> <span>501</span></td>
                                               <td><i class="fa fa-cog spacer-3"></i> <span>Private Bed A/C</span></td>
                                               <td><i class="fa fa-building spacer-3"></i> <span>5th Floor</span></td>
                                               <td class="tool-box"> 
                                                    <label class="mdl-checkbox mdl-js-checkbox" for="cbox11">
                                                    <input type="checkbox" id="checkbox11" class="mdl-checkbox__input">
                                                    <span class="mdl-checkbox__label"></span>
                                                 </label>                         
                                                 <i class="fa fa-ellipsis-v pointer menu-icon"></i>              
                                                </td>
                                           </tr>
                                           <tr>
                                               <td colspan="3"><i class="fa fa-user spacer-3"></i><span>764765767 -  Lawrence David Pillai</span></td>
                                               
                                               <td><i class="fa fa-male spacer-3"></i><span>72 - years</span></td>
                                           </tr>
                                           <tr>
                                               <td colspan="4"> <i class="fa fa-sign-out spacer-3"></i><span>Expected Discharge : 31/12/2016 </span></td>                         
                                           </tr>
                                       </table>
                                   </td>
                               </tr>
                           </table>
                       </div>

                      <!-- vacant -->
                       <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6 np border-lightgray template-div">
                           <table class="table no-margin">
                               <tr>
                                   <td class="template-head">
                                      <div class="row no-margin">
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-wrapper">
                                                <i class="fa fa-bed bed-icon template-icon"></i> 
                                          </div>
                                          
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-box pt-5" style="height:30px;">
                                             <span class="bed-status">Vacant</span>
                                          </div>
                                      </div> 
                                   </td>
                                   <td class="np template-border">
                                       <table class="table template-table">
                                           <tr>
                                               <td style="height:25px;">  </td>   
                                               <td style="height:25px;">  </td>   
                                               <td style="height:25px;">  </td>   
                                               <td class="tool-box" style="min-width: 67px;"> 
                                                    <label class="mdl-checkbox mdl-js-checkbox" for="cbox11">
                                                        <input type="checkbox" id="checkbox11" class="mdl-checkbox__input">
                                                        <span class="mdl-checkbox__label"></span>
                                                     </label>                         
                                                 <i class="fa fa-ellipsis-v pointer menu-icon"></i>              
                                                </td>
                                           </tr>
                                           <tr>
                                               <td><i class="fa fa-bed spacer-3"></i> <span>501</span></td>
                                               <td><i class="fa fa-cog spacer-3"></i> <span>Private Bed A/C</span></td>
                                               <td><i class="fa fa-building spacer-3"></i> <span>5th Floor</span></td>
                                               
                                           </tr>
                                           <tr>
                                               <td colspan="3" style="height:25px;">  </td>
                                           </tr>
                                       </table>
                                   </td>
                               </tr>
                           </table>
                       </div>
                    </div>
                    <div class="row no-margin">
                      <!-- Occupied -->
                      <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6 np border-lightgray template-div">
                           <table class="table no-margin">
                               <tr>
                                   <td class="template-head">
                                      <div class="row no-margin">
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-wrapper">
                                                <i class="fa fa-bed bed-icon template-icon"></i> 
                                          </div>
                                          
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-box pt-5" style="height:30px;">
                                             <span class="bed-status">Occupied</span>
                                          </div>
                                      </div> 
                                   </td>
                                   <td class="np template-border">
                                       <table class="table template-table">
                                           <tr>
                                               <td><i class="fa fa-bed spacer-3"></i> <span>501</span></td>
                                               <td><i class="fa fa-cog spacer-3"></i> <span>Private Bed A/C</span></td>
                                               <td><i class="fa fa-building spacer-3"></i> <span>5th Floor</span></td>
                                               <td class="tool-box"> 
                                                    <label class="mdl-checkbox mdl-js-checkbox" for="cbox11">
                                                    <input type="checkbox" id="checkbox11" class="mdl-checkbox__input">
                                                    <span class="mdl-checkbox__label"></span>
                                                 </label>                         
                                                 <i class="fa fa-ellipsis-v pointer menu-icon"></i>              
                                                </td>
                                           </tr>
                                           <tr>
                                               <td colspan="3"><i class="fa fa-user spacer-3"></i><span>764765767 -  Lawrence David Pillai</span></td>
                                               
                                               <td><i class="fa fa-male spacer-3"></i><span>72 - years</span></td>
                                           </tr>
                                           <tr>
                                               <td colspan="4"> <i class="fa fa-sign-out spacer-3"></i><span>Expected Discharge : 31/12/2016 </span></td>                         
                                           </tr>
                                       </table>
                                   </td>
                               </tr>
                           </table>
                       </div>

                      <!-- vacant -->
                       <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6 np border-lightgray template-div">
                           <table class="table no-margin">
                               <tr>
                                   <td class="template-head">
                                      <div class="row no-margin">
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-wrapper">
                                                <i class="fa fa-bed bed-icon template-icon"></i> 
                                          </div>
                                          
                                          <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 icon-box pt-5" style="height:30px;">
                                             <span class="bed-status">Vacant</span>
                                          </div>
                                      </div> 
                                   </td>
                                   <td class="np template-border">
                                       <table class="table template-table">
                                           <tr>
                                               <td style="height:25px;">  </td>   
                                               <td style="height:25px;">  </td>   
                                               <td style="height:25px;">  </td>   
                                               <td class="tool-box" style="min-width: 67px;"> 
                                                    <label class="mdl-checkbox mdl-js-checkbox" for="cbox11">
                                                        <input type="checkbox" id="checkbox11" class="mdl-checkbox__input">
                                                        <span class="mdl-checkbox__label"></span>
                                                     </label>                         
                                                 <i class="fa fa-ellipsis-v pointer menu-icon"></i>              
                                                </td>
                                           </tr>
                                           <tr>
                                               <td><i class="fa fa-bed spacer-3"></i> <span>501</span></td>
                                               <td><i class="fa fa-cog spacer-3"></i> <span>Private Bed A/C</span></td>
                                               <td><i class="fa fa-building spacer-3"></i> <span>5th Floor</span></td>
                                               
                                           </tr>
                                           <tr>
                                               <td colspan="3" style="height:25px;">  </td>
                                           </tr>
                                       </table>
                                   </td>
                               </tr>
                           </table>
                       </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentJs" runat="server">
   
    <script>
        $(document).ready(function () {

            var lsData = [{ "id": 0, "text": "01_060102_02 PG subsidy % is 0.35.", "parent": null },
{ "id": 1, "text": "01_060102_02 category is STANDARD.", "parent": 0 },
{ "id": 2, "text": "The patient is eligible for subsidies.", "parent": 0 },
{ "id": 3, "text": "The patient's payment class is B2.", "parent": 2 },
{ "id": 4, "text": "The patient is eligible for Pioneer Generation subsidy.", "parent": 0 },
{ "id": 5, "text": "01_060102_02 SOC subsidy % is 0.6.", "parent": null },
{ "id": 6, "text": "The patient's MTSOC band is MT2.", "parent": 5 },
{ "id": 7, "text": "The patient's age is 31.", "parent": 5 },
{ "id": 8, "text": "The patient's date of birth is 28/01/1986.", "parent": 7 },
{ "id": 9, "text": "The institution type is SOC.", "parent": 5 },
{ "id": 10, "text": "The patient is eligible for subsidies.", "parent": 5 },
{ "id": 11, "text": "The patient's payment class is B2.", "parent": 10 },
{ "id": 12, "text": "01_060102_02 group is DRUG.", "parent": 5 }]

            function uiSample() {
            
                var filter = JSLINQ(lsData).Where(function (item) { return item.parent == null });
                var lsString = '<ul>';
                for (var j = 0; j <= filter.items.length - 1; j++) {
                    lsString = lsString + "<li>" + filter.items[j].text;
                    var filterData = JSLINQ(lsData).Where(function (item) { return item.parent == filter.items[j].id });
                    if (filterData.items.length > 0) {
                        lsString = lsString + uiCreateList(filterData);
                    }
                    lsString = lsString + "</li>";
                }
                lsString = lsString + "</ul>";
                alert(lsString);
            }
           
            function uiCreateList(filter) {
                var lsString = '<ul>';
                for (var j = 0; j <= filter.items.length - 1; j++) {
                    lsString = lsString + "<li>" + filter.items[j].text + "</li>";
                    var filterData = JSLINQ(lsData).Where(function (item) { return item.parent == filter.items[j].id });
                    if (filterData.items.length > 0) {
                        lsString = lsString + uiCreateList(filterData);
                    }
                }
                lsString = lsString + "</ul>";
                return lsString;
            }

            uiSample();



            $(".filter-panel .portlet.box .portlet-body").slimScroll({
                    
            });

               $(".filter-panel .item-header").click(function(){
                    $(this).siblings(".item-content").slideToggle("fast").toggleClass('opened');

                    var isVisible = $(this).siblings(".item-content").is(".opened");
                    if(isVisible == true){                        
                        $(this).find(".item-state").removeClass("fa-caret-down").addClass("fa-caret-up");
                    }else{                        
                        $(this).find(".item-state").removeClass("fa-caret-up").addClass("fa-caret-down");
                    }                  
               });


               $(document).on('click', "#filterMenuToggle", function(){
                        $("#filterPanel").toggleClass("filter-collapse");                        

                if ($("#filterPanel").hasClass('filter-collapse') == true) {
                    $(".main-template-div").removeClass("col-md-9 col-sm-9 col-lg-9 col-xs-9").addClass("new-width");
                    $("#filterPanel").removeClass("col-md-3 col-sm-3 col-lg-3 col-xs-3").addClass("new-small-width");
                } else {
                    $(".main-template-div").removeClass("new-width").addClass("col-md-9 col-sm-9 col-lg-9 col-xs-9");
                    $("#filterPanel").removeClass("new-small-width").addClass("col-md-3 col-sm-3 col-lg-3 col-xs-3");
                }


                });

                $("#fsFilterMenuToggle").click(function(){    
                        // $("#filterPanel").toggleClass("filter-collapse");
                        // $("#ipProfileView").toggleClass("profile-collapse");
                        // $("#ipbillingview").toggleClass("grid-expand");
                   
                });

                $('.main-scroll').slimScroll({
                    width:"100%"
                });

        }); 
    </script>    
</asp:Content>



