<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="SampleProjectDHA.Workbench" MasterPageFile="~/Master/uiStaticPage.Master"%>

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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>    
    <script src="Messages.js"></script>
    <link rel="stylesheet" href="Messages.css">    
    <style>
        .k-table, .k-table td {
    outline: 0 !important;
    border: 0px !important;
}
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentHTML" runat="server">
<div class="row">
	<div class="col-md-9">
		<textarea id="editor"></textarea>
	</div>
    <div class="col-md-3">
		
	</div>
	<div class="col-md-9">
		<div class="messages-container row no-margin" style="padding:10px;">		
		<div class="col-md-4 col-sm-4 col-lg-4 col-xs-12 padding-5 group-container">
		    <div class="portlet light bordered np group-panel">
	            <div class="portlet-title pl-10 pr-10">
	                <div class="caption">
	                    <i class="icon-social-dribbble font-blue-sharp"></i>
	                    <span class="caption-subject font-blue-sharp bold uppercase">Menu</span>
	                </div>
	                <div class="actions">
	                    <a class="btn btn-circle btn-icon-only btn-default" id="switchMsgPanels" href="javascript:;">
	                        <i class="fa fa-bars"></i>
	                    </a>
	                </div>
	            </div>
	            <div class="portlet-body group-list-panel" id="groups">
	                <div class="list-menu">
						<ul class="np">
							<li class="group-list-item parent">
								<div class="group-list-title pw"><i class="fa fa-user item-icon"></i> Group 1</div>
								<ul class="sub-group">
									<li class="group-list-item child">
										<div class="group-list-title pw">Item 1</div>
									</li>
									<li class="group-list-item child">
										<div class="group-list-title pw">Item 2</div>
									</li>
									<li class="group-list-item child">
										<div class="group-list-title pw">Item 3</div>										
									</li>
								</ul>
							</li>
							<li class="group-list-item parent">
								<div class="group-list-title pw"><i class="fa fa-user item-icon"></i> Group 2</div>
								<ul class="sub-group">
									<li class="group-list-item child">
										<div class="group-list-title pw">Item 1</div>
									</li>
									<li class="group-list-item child">
										<div class="group-list-title pw">Item 2</div>
									</li>
									<li class="group-list-item child">
										<div class="group-list-title pw">Item 3</div>										
									</li>
								</ul>
							</li>
							<li class="group-list-item parent">
								<div class="group-list-title pw"><i class="fa fa-user item-icon"></i> Group 3</div>
								<ul class="sub-group">
									<li class="group-list-item child">
										<div class="group-list-title pw">Item 1</div>
									</li>
									<li class="group-list-item child">
										<div class="group-list-title pw">Item 2</div>
									</li>
									<li class="group-list-item child">
										<div class="group-list-title pw">Item 3</div>										
									</li>
								</ul>
							</li>
						</ul>
	                </div>
	            </div>
	        </div>
		</div>

        <div class="col-sm-8 col-lg-8 col-md-8 col-xs-12 padding-5 message-container">
			<div class="portlet light bordered np message-panel">
	            <div class="portlet-title pl-10 pr-10">
	                <div class="caption">
	                    <i class="icon-bubble font-hide hide"></i>
	                    <span class="caption-subject font-hide font-blue-sharp bold">Description about Message</span>
	                </div>
	            </div>
	            <div class="portlet-body padding-15 no-pb message-list-panel" id="chats">
	                    <ul class="chats" id="chatdescription">
	                        <li class="out">
	                            <img class="avatar" alt="" src="user.png">
	                            <div class="message">
	                                <span class="arrow"> </span>
	                                <a href="javascript:;" class="name"> Lisa Wong </a>
	                                <span class="datetime"> at 20:11 </span>
	                                <div class="message-content">
		                                <span class="body"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
		                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
		                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</span>
	                                </div>
	                            </div>
	                        </li>
	                        <li class="out">
	                            <img class="avatar" alt="" src="user.png">
	                            <div class="message">
	                                <span class="arrow"> </span>
	                                <a href="javascript:;" class="name"> Lisa Wong </a>
	                                <span class="datetime"> at 20:11 </span>
	                                <div class="message-content">
		                                <span class="body"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
		                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
		                                Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
	                                </div>
	                            </div>
	                        </li>
	                        <li class="in">
	                            <img class="avatar" alt="" src="user.png">
	                            <div class="message">
	                                <span class="arrow"> </span>
	                                <a href="javascript:;" class="name"> Bob Nilson </a>
	                                <span class="datetime"> at 20:30 </span>
	                                <div class="message-content">
		                                <span class="body"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
	                                </div>
	                            </div>
	                        </li>
	                        <li class="in">
	                            <img class="avatar" alt="" src="user.png">
	                            <div class="message">
	                                <span class="arrow"> </span>
	                                <a href="javascript:;" class="name"> Bob Nilson </a>
	                                <span class="datetime"> at 20:30 </span>
	                                <div class="message-content">
		                                <span class="body"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
		                            </div>
	                            </div>
	                        </li>
	                        <li class="out">
	                            <img class="avatar" alt="" src="user.png">
	                            <div class="message">
	                                <span class="arrow"> </span>
	                                <a href="javascript:;" class="name"> Richard Doe </a>
	                                <span class="datetime"> at 20:33 </span>
	                                <div class="message-content">
		                                <span class="body"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
		                            </div>
	                            </div>
	                        </li>
	                        <li class="in">
	                            <img class="avatar" alt="" src="user.png">
	                            <div class="message">
	                                <span class="arrow"> </span>
	                                <a href="javascript:;" class="name"> Richard Doe </a>
	                                <span class="datetime"> at 20:35 </span>
	                                <div class="message-content">
		                                <span class="body"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
		                            </div>
	                            </div>
	                        </li>
	                        <li class="out">
	                            <img class="avatar" alt="" src="user.png">
	                            <div class="message">
	                                <span class="arrow"> </span>
	                                <a href="javascript:;" class="name"> Bob Nilson </a>
	                                <span class="datetime"> at 20:40 </span>
	                                <div class="message-content">
		                                <span class="body"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
		                             </div>
	                            </div>
	                        </li>
	                        <li class="in">
	                            <img class="avatar" alt="" src="user.png">
	                            <div class="message">
	                                <span class="arrow"> </span>
	                                <a href="javascript:;" class="name"> Richard Doe </a>
	                                <span class="datetime"> at 20:40 </span>
	                                <div class="message-content">
		                                <span class="body"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
	                                </div>
	                            </div>
	                        </li>
	                        <li class="out">
	                            <img class="avatar" alt="" src="user.png">
	                            <div class="message">
	                                <span class="arrow"> </span>
	                                <a href="javascript:;" class="name"> Bob Nilson </a>
	                                <span class="datetime"> at 20:54 </span>
	                                <div class="message-content">
		                                <span class="body"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. sed diam nonummy nibh euismod tincidunt ut laoreet.
		                                   </span>
	                                 </div>
	                            </div>
	                        </li>
	                    </ul>
	                
	                </div>
	                
	            </div>
	        </div>	
        </div>	
	</div>
</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentJs" runat="server">
	<div id="template">

	</div>
</asp:Content>
