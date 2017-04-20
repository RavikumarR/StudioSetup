<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="DHAWorkbench.aspx.cs" Inherits="SampleProjectDHA.Workbench" MasterPageFile="~/Master/uiStaticPage.Master" %>

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
        .page-content {
            min-height: inherit;
        }

        body {
            font-size: 12px;
        }

        .page-content-wrapper.uifade {
            padding: 0!important;
        }

        .page-content-wrapper .page-content {
            padding: 5px!important;
            background: #f1f1f1!important;
        }
        /*Global Container css*/

        .np {
            padding: 0;
        }

        .npr {
            padding-right: 0;
        }

        .npl {
            padding-left: 0;
            padding-right: 5px;
        }

        .hospitalname {
            padding: 5px;
        }

        .pad-5px {
            padding: 0 5px;
        }

        .leftpanel, .mainpanel {
            min-height: 569px;
            background: #fff;
        }

            .mainpanel .wheader {
                padding: 2px 6px;
            }

        .wheader {
            background-color: #009688; /* #11add0 */
            padding: 6px;
            color: #f1f1f1;
            min-height: 31px;
        }

        .wlheader {
            background-color: #fff; /* 92dcd5 */
            padding: 6px;
            color: #333;
            min-height: 31px;
        }

        .tools {
            float: right;
        }

            .tools span {
                margin-left: 8px;
            }


        ul.customlist {
            list-style: none;
        }

            ul.customlist li {
                text-decoration: none;
                padding: 5px;
            }

                ul.customlist li a:hover, ul.customlist li a:focus {
                    text-decoration: none;
                }

                ul.customlist li a {
                    color: #333;
                }

                ul.customlist li.active a {
                    color: #fff;
                }

                ul.customlist li.active {
                    /*background-color: #76baf1;*/
                    background-color: darkgray;
                }

        span.searchc {
            display: none;
        }

        #selectTags {
            height: 20px;
            background: transparent;
            border: 0;
            border-bottom: 1px solid #fff;
            width: 200px;
            padding-bottom: 2px;
        }

            #selectTags:focus {
                outline: none;
            }

        span.backSearch {
            padding: 4px;
            cursor: pointer;
        }

        i.selectc {
            font-size: 20px;
            vertical-align: bottom;
            margin-left: -3px;
        }

        span.backSearch:focus, span.backSearch:hover {
            background: #137186;
            outline: none;
        }

        #selectTags ~ .select2-container--default .select2-selection--multiple .select2-selection__choice {
            background-color: #1565C0;
        }

        span.select2-selection.select2-selection--multiple {
            background: transparent;
            border: 0;
            border-bottom: 1px solid #fff;
            border-radius: 0;
            height: 0;
        }

        span.select2.select2-container.select2-container--default.select2-container--below.select2-container--open {
            border: 0;
        }

        span.select2.select2-container.select2-container--default.select2-container--below {
            overflow-x: auto;
        }

            span.select2.select2-container.select2-container--default.select2-container--below::-webkit-scrollbar {
                width: 4px;
            }

            span.select2.select2-container.select2-container--default.select2-container--below::-webkit-scrollbar-track {
                -webkit-box-shadow: inset 0 0 6px rgb(255, 255, 255);
            }

            span.select2.select2-container.select2-container--default.select2-container--below::-webkit-scrollbar-thumb {
                background-color: #0f7cc7;
            }


        #selectTags span.select2.select2-container.select2-container--default.select2-container--focus {
            border: 0 !important;
            outline: 0;
        }

        span.select2-container.select2-container--default.select2-container--open {
            z-index: 100000;
        }

        input.select2-search__field {
            min-height: inherit !important;
            margin: 0;
        }

        span.select2-selection__choice__remove {
            color: #fff!important;
        }

        span.select2.select2-container.select2-container--default.select2-container--focus .select2-selection {
            border: 0;
        }

        select.js-example-programmatic.select2-hidden-accessible + span.select2.select2-container.select2-container--default.select2-container--below {
            min-height: 31px;
        }

        select.js-example-programmatic.select2-hidden-accessible + span.select2.select2-container.select2-container--default.select2-container--below {
            overflow-x: hidden;
        }

        .slimScrollBar {
            background: #a09898!important;
        }

        select.js-example-programmatic.select2-hidden-accessible + .selectioncontainer span.select2-selection.select2-selection--multiple, select.js-example-programmatic.select2-hi dden-accessible span.select2-selection.select2-selection--multiple .select2-selection__rendered li.select2-search.select2-search--inline {
            min-height: 300px!important;
        }

        li.select2-search.select2-search--inline {
            min-height: inherit!important;
        }

        select.js-example-programmatic.select2-hidden-accessible .select2-container--default .select2-selection--multiple .select2-selection__rendered li {
            margin-top: 3px;
        }


        .select2-container--default .select2-selection--multiple .select2-selection__rendered li {
            margin-top: 0;
        }

        .leftcontent {
            min-height: 400px;
            max-height: 400px;
            border-bottom: 1px solid #888585;
        }

        .filteredList {
            min-height: 120px;
            max-height: 126px;
            padding: 3px;
        }

        i#filterby {
            cursor: pointer;
        }

        .temptag {
            background: darkgrey; /*#1976D2 */
            color: #fff;
            border-radius: 2px;
            padding: 4px 4px;
            margin-bottom: 2px;
        }

        div.checker {
            display: none;
        }

        select.js-example-programmatic.select2-hidden-accessible + span.select2.select2-container.select2-container--default {
            border: 1px solid;
        }

        .fab {
            border-radius: 50%;
            margin: 0;
            padding: 20px;
        }

        .material {
            position: relative;
            color: white;
            margin: 20px auto;
            height: 400px;
            width: 500px;
            background: #f45673;
        }

        .ripple {
            overflow: hidden;
        }

        .ripple-effect {
            position: absolute;
            border-radius: 50%;
            width: 50px;
            height: 50px;
            background: white;
            animation: ripple-animation 2s;
        }

        .title {
            margin-left: 5px;
        }

        .ccontent {
            padding: 5px;
            border-bottom: 1px solid #999;
        }

        .checkLabel {
            margin: 15px 0 0 30px;
        }

        .ccontent .temptag {
            background: #64B5F6;
            color: #0a0a0a;
        }

        input#dtpicker {
            width: 95%;
            border: 0;
            border-bottom: 1px solid #555;
            padding: 0 5px;
        }

        span#Span1 {
            font-size: 18px;
            padding: 2px 5px;
            cursor: pointer;
        }

        input#dtpicker + span {
            position: relative;
            left: -15px;
        }

        input#dtpicker:focus {
            outline: none;
        }

        .picker {
            padding: 10px 5px;
        }

        .mdl-textfield__label:after {
            bottom: 14px;
        }

        .mdl-textfield__input, .mdl-textfield__label {
            font-size: 13px;
        }

        .arrow {
            position: absolute;
            width: 10px;
            height: 10px;
            transform: rotate(45deg);
            top: -5px;
            right: 27px;
            background: #fff;
        }

        .filterOption {
            min-height: 536px;
            position: absolute;
            top: 31px;
            left: 0;
            width: 96%;
            box-shadow: 2px 2px 2px #ddd;
            background: #FFF;
            transition: all 600ms cubic-bezier(.25,.1,.25,1);
            -webkit-transition: all 600ms cubic-bezier(.25,.1,.25,1);
        }

        .rowtemplate.grid > .fullgrid {
            box-shadow: 1px 1px 1px 1px #d5d5d5;
            margin-bottom: 1px;
        }

        .rowtemplate {
            /* border: 1px solid; */
            min-height: 56px;
            background: #ffffff; /* f3f3f3  */
            box-shadow: 1px 1px #d5d5d5;
            margin-bottom: 3px;
            -webkit-user-select: none;
        }

        .options span {
            padding: 5px;
            display: block;
            width: 100%;
            color: #fff;
            background: #708090;
            text-align: center;
        }

        .column-serial {
            display: inline-block;
            width: 32%;
        }

        .rowtemplate.grid .column-serial.details {
            width: 30%;
        }

        span.enrsrno {
            margin-left: 10px;
        }

        .typedetails {
            display: inline-block;
            width: 4%;
            font-size: 20px;
            vertical-align: top;
            padding: 14px 10px 14px 10px;
            background-color: #708090;
            color: #fff;
        }

        .column-serials.details {
            display: inline-block;
            width: 20%;
            vertical-align: top;
            padding: 3px 0;
        }

        span.namesc {
            display: inline-block;
            width: 100%;
            padding: 2px;
        }

        .column.details {
            display: inline-block;
            width: 20%;
            float: right;
            padding: 3px;
        }

        .column-serial > span {
            width: 100%;
            padding: 3px 4px;
            vertical-align: top;
            display: block;
            /* font-size: 11px; */
        }

        .column-serial span i {
            margin: 0 5px 0 0;
        }

        i.spos {
            position: absolute;
            right: 7px;
            color: #0D47A1;
            top: 5px;
        }

        .column-serial span i {
            font-size: 15px;
        }

        .options {
            width: 7%;
            display: inline-block;
        }

        .persongendar {
            display: inline-block;
            width: 10%;
            padding: 8px 0;
            text-align: center;
            vertical-align: top;
            font-size: 28px;
            background: #708090;
            color: #FFF; /* #555*/
        }

        .column-serial > span.name {
            display: inline-block;
        }

        .options span:first-child {
            margin-bottom: 1px;
        }

        span.age {
            display: inline-block;
            width: 35%;
            font-size: 11px;
            text-align: left;
        }

        .column-serial.details {
            width: 47%;
        }

        .visitype {
            display: inline-block;
        }

        .visitype {
            font-size: 16px;
            padding: 16px 10px 18px 10px;
            /* height: 48px; */
            vertical-align: top;
            background-color: #708090;
        }

            .visitype > span {
                border: 3px solid;
                text-align: center;
                border-radius: 50%;
                padding: 5px;
                font-size: 11px;
                color: #ffffff;
            }

        .npc {
            padding: 0 0 0 4px;
        }

        span.select2-selection.select2-selection--multiple {
            min-height: 20px;
        }

        .rowtemplate.grid .column-serial {
            width: 38%;
        }

        div#contToggle.toggleclose .lp {
            width: 3%;
            padding: 0 3px;
        }

            div#contToggle.toggleclose .lp .leftcontent div,
            div#contToggle.toggleclose .lp .filteredList,
            div#contToggle.toggleclose .lp .htitle {
                display: none;
            }

        div#contToggle.toggleclose .dvopenToggle {
            display: block!important;
        }

        div#contToggle.toggleclose .mainpanel {
            width: 97%;
        }

        .scontent {
            width: 100%;
        }

        .dvgrid {
            padding: 1px;
        }

        .scontent span.reset {
            /* width: 84%; */
            /* display: table-cell; */
            /* overflow-x: auto; */
        }

        .count-drop {
            display: inline-block;
            width: 5%;
            font-size: 15px;
            text-align: center;
            padding: 17px 11px 18px 7px;
            background: #fff;
            vertical-align: top;
            cursor: pointer;
            margin-left: -3px;
        }

        .visitype.num > span {
            padding: 6px 12px;
            font-size: 12px;
        }

        .rowtemplate.grid {
            min-width: 1168px;
            display: table-cell;
        }

        .lp, .mainpanel {
            transition: all 600ms cubic-bezier(.25,.1,.25,1);
            -webkit-transition: all 600ms cubic-bezier(.25,.1,.25,1);
        }

        .dropdowncustom {
            display: none;
            position: absolute;
            min-width: 612px;
            background: #708090;
            min-height: 62px;
            padding: 3px;
            position: absolute;
            z-index: 2;
            left: -118px;
            transition: transform .3s cubic-bezier(.4,0,.2,1),opacity .2s cubic-bezier(.4,0,.2,1);
            -webkit-transition: transform .3s cubic-bezier(.4,0,.2,1),opacity .2s cubic-bezier(.4,0,.2,1),-webkit-transform .3s cubic-bezier(.4,0,.2,1);
            transform: scale(0);
            -webkit-transform-origin: 100% 0;
            transform-origin: 100% 0;
        }


        div#contToggle.toggleclose .lp .leftcontent div.hospitalname {
            display: block;
        }

        div#contToggle.toggleclose .lp span.name {
            display: none;
        }

        .reset {
            overflow: hidden;
            margin-bottom: 1.2px;
        }

            .reset.last {
                overflow-x: scroll;
            }

            .reset::-webkit-scrollbar {
                width: 4px;
                height: 5px;
            }

            .reset::-webkit-scrollbar-track {
                -webkit-box-shadow: inset 0 0 6px rgb(255, 255, 255);
            }

            .reset::-webkit-scrollbar-thumb {
                background-color: #0f7cc7;
            }

        #contToggle {
            overflow: hidden;
        }

        span.mdl-checkbox__label {
            font-size: 12px;
        }

        input.searchgrid {
            border: 0;
            background: transparent;
            border-bottom: 2px solid #0D47A1;
            width: 500px;
        }

        .rowtemplate.grid .column-serial {
            width: 26%;
        }

        .count-drop {
            display: inline-block;
            width: 5%;
            font-size: 15px;
            text-align: center;
            padding: 17px 11px 18px 7px;
            background: #fff;
            vertical-align: top;
            cursor: pointer;
            margin-left: -3px;
        }

        .visitype.num > span {
            padding: 6px 12px;
            font-size: 12px;
        }

        /*style added by Yuvaraj.S on 23-09-2016 for Delete Icon*/
        span.sDelete:hover {
            color: #CA0E0E;
        }

        .sdeleteI {
            cursor: pointer;
        }

        .drop-row {
            /* border: 1px solid; */
            min-height: 29px;
        }

        .sno {
            background: #9fc5f8;
            width: 13%;
            min-height: 20px;
            vertical-align: middle;
            float: left;
            padding: 5px;
        }

        .diseasedetails {
            float: left;
            width: 87%;
            min-height: 20px;
            vertical-align: middle;
            background: #f1f1f1;
            color: #fff;
            padding: 5px;
        }

            .diseasedetails span {
                background: #f1f1f1;
                color: #000;
            }

        .sno span {
            background: #9fc5f8;
            color: #000;
        }

        #Selectfilter ~ .select2-container--default .select2-selection--multiple .select2-selection__choice {
            background: #1565C0;
            color: #fff;
        }

        #Selectfilter ~ .select2-container--default .select2-selection--multiple .select2-selection__rendered li {
            margin-top: 5px;
        }

        #Selectfilter ~ .select2-container--default .select2-selection--multiple {
            border-bottom: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentHTML" runat="server">
    <div class="static_pageContainer">
        <div class="static_page">
            <div class="col-md-12 col-lg-12 np" id="contToggle">
                <div class="col-md-3 npl lp" style="height: 583px;">
                    <div class="leftpanel">
                        <div class="wheader">
                            <div class="dvopenToggle hide"><i class="fa fa-bars sidetoggle" style="padding-left: 5px;"></i></div>
                            <div class="htitle">
                                <span>

                                    <span class="searchc" style="display: none;">
                                        <span class="backSearch ripple" data-ripple-color="#89669b"><i class="fa fa-arrow-left"></i></span>
                                        <select class="" id="selectTags" multiple="multiple" style="width: 270px;"></select>
                                        <span style="float: right;">
                                            <i class="fa fa-plus-square-o selectc"></i>
                                        </span>

                                    </span>
                                    <span class="titlef" style="display: inline;">
                                        <span id="filter" style="display: none;"><i class="fa fa-filter"></i>&nbsp;Filter By</span>
                                        <i class="fa fa-plus-square-o addCriteria" aria-hidden="true"></i>
                                        <span id="status"></span>
                                        <span class="tools">
                                            <span class="default-action"><i class="fa fa-filter" id="filterby"></i></span>
                                            <span class="default-action"><i class="fa fa-bars sidetoggle"></i></span>
                                            <span class="filter-action" style="display: none;"><i class="fa fa-check" id="I1"></i></span>
                                            <span class="filter-action" style="display: none;"><i class="fa fa-remove"></i></span>
                                        </span>
                                    </span>

                                </span>
                            </div>

                        </div>
                        <div class="leftcontent maintreeresult">
                            <%--Changes Done by Yuvaraj.S On 23-09-2016--%>
                            <div id="maintree"></div>
                            <%--WorkQueue Tree Info--%>
                        </div>
                        <div class="filteredList result" id="WorkQueueGroup">
                            <%--Group Template Bind--%>
                        </div>
                        <div class="filterOption" style="display: none">
                            <div class="ccontent">
                                <div class="title">VISIT</div>
                                <div class="checkLabel">
                                    <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox-1">
                                        <input type="checkbox" id="checkbox-1" class="mdl-checkbox__input" checked="">
                                        <span class="mdl-checkbox__label">OP Visit</span>
                                    </label>
                                    <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox-2">
                                        <input type="checkbox" id="checkbox-2" class="mdl-checkbox__input">
                                        <span class="mdl-checkbox__label">IP Visit</span>
                                    </label>
                                    <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox3">
                                        <input type="checkbox" id="checkbox1" class="mdl-checkbox__input" checked="">
                                        <span class="mdl-checkbox__label">ER Visit</span>
                                    </label>

                                </div>

                            </div>
                            <div class="ccontent">
                                <div class="title">PAYER</div>
                                <div class="picker">

                                    <div class="temptag">
                                        <span>Bajaj Life Insurance</span>
                                        <span class="remove pull-right">x</span>
                                    </div>

                                    <div class="temptag">
                                        <span>ICICI Life Insurance</span>
                                        <span class="remove pull-right">x</span>
                                    </div>
                                    <div class="temptag">
                                        <span>Star Life Insurance</span>
                                        <span class="remove pull-right">x</span>
                                    </div>
                                </div>
                            </div>
                            <div class="ccontent">
                                <div class="title">DOCTOR</div>


                            </div>
                            <div class="ccontent">
                                <div class="title">ASSIGNED DATE</div>

                                <div class="picker">
                                    <input id="dtpicker" placeholder="from date to date"><span><i class="fa fa-calendar"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9 mainpanel np">
                    <div class="wlheader">
                        <div class="htitle">
                            <span>
                                <span class="titled" style="display: inline;">
                                    <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" style="display: inline; vertical-align: text-top;" for="checkbox7">
                                        <input type="checkbox" id="checkbox7" class="mdl-checkbox__input" checked="">
                                        <span class="mdl-checkbox__label"></span>
                                    </label>
                                    <span style="vertical-align: sub;">Medical Coding For Payer's Bill</span>
                                </span>

                            </span>
                            <span class="pull-right" id="Span1">
                                <i class="fa fa-ellipsis-v"></i>
                            </span>
                            <span class="pull-right" style="position: relative; margin-right: 15px;">
                                <input class="searchgrid" style="">
                                <i class="fa fa-search spos"></i>
                            </span>
                            <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
                                for="Span1">
                                <li class="mdl-menu__item"><i class="fa fa-check"></i>Finalize</li>
                                <li class="mdl-menu__item"><i class="fa fa-pause"></i>Hold
                                </li>
                            </ul>
                        </div>

                    </div>
                    <div class="dvgrid">
                        <div class="col-md-5 np">
                            <div class="static_grid">
                                <div class="rowtemplate">
                                    <div class="">
                                        <div class="options">
                                            <span class="" id="demo-menu-lower-left"><i class="fa fa-ellipsis-v"></i></span>
                                            <ul class="mdl-menu mdl-menu--bottom-left mdl-js-menu mdl-js-ripple-effect"
                                                for="demo-menu-lower-left">
                                                <li class="mdl-menu__item"><i class="fa fa-check"></i>Finalize</li>
                                                <li class="mdl-menu__item"><i class="fa fa-pause"></i>Hold
                                                </li>
                                            </ul>
                                            <span class="dropcustom"><i class="fa fa-user"></i></span>
                                        </div>
                                        <div class="column-serial">
                                            <span>
                                                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox2">
                                                    <input type="checkbox" id="checkbox2" class="mdl-checkbox__input" checked="">
                                                    <span class="mdl-checkbox__label">Que 1000235</span>
                                                </label>
                                            </span>
                                            <span><i class="fa fa-hospital-o"></i>DHA
                                            <i class="fa fa-cog pull-right"></i></span>
                                        </div>
                                        <div class="persongendar">
                                            <i class="fa fa-male"></i>
                                        </div>
                                        <div class="column-serial details">
                                            <span class="name">Micheal John<span class="pull-right age">55yrs</span></span>
                                            <span><i class="fa fa-newspaper-o"></i>19900000000
                                            <span class="pull-right age">Ext:2333344</span></span>
                                        </div>
                                        <div class="">
                                        </div>
                                    </div>
                                </div>
                                <div class="rowtemplate">
                                    <div class="">
                                        <div class="options">
                                            <span><i class="fa fa-ellipsis-v"></i></span>
                                            <span><i class="fa fa-user"></i></span>
                                        </div>
                                        <div class="column-serial">
                                            <span>
                                                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox2">
                                                    <input type="checkbox" id="checkbox3" class="mdl-checkbox__input" checked="">
                                                    <span class="mdl-checkbox__label">Que 1000235</span>
                                                </label>
                                            </span>
                                            <span><i class="fa fa-hospital-o"></i>DHA
                                            <i class="fa fa-cog pull-right"></i></span>
                                        </div>
                                        <div class="persongendar">
                                            <i class="fa fa-male"></i>
                                        </div>
                                        <div class="column-serial details">
                                            <span class="name">Micheal John<span class="pull-right age">55yrs</span></span>
                                            <span><i class="fa fa-newspaper-o"></i>19900000000
                                            <span class="pull-right age">Ext:2333344</span></span>
                                        </div>
                                        <div class="">
                                        </div>
                                    </div>
                                </div>
                                <div class="rowtemplate">
                                    <div class="">
                                        <div class="options">
                                            <span><i class="fa fa-ellipsis-v"></i></span>
                                            <span><i class="fa fa-user"></i></span>
                                        </div>
                                        <div class="column-serial">
                                            <span>
                                                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox2">
                                                    <input type="checkbox" id="checkbox4" class="mdl-checkbox__input" checked="">
                                                    <span class="mdl-checkbox__label">Que 1000235</span>
                                                </label>
                                            </span>
                                            <span><i class="fa fa-hospital-o"></i>DHA
                                            <i class="fa fa-cog pull-right"></i></span>
                                        </div>
                                        <div class="persongendar">
                                            <i class="fa fa-male"></i>
                                        </div>
                                        <div class="column-serial details">
                                            <span class="name">Micheal John<span class="pull-right age">55yrs</span></span>
                                            <span><i class="fa fa-newspaper-o"></i>19900000000
                                            <span class="pull-right age">Ext:2333344</span></span>
                                        </div>
                                        <div class="">
                                        </div>
                                    </div>
                                </div>
                                <div class="rowtemplate">
                                    <div class="">
                                        <div class="options">
                                            <span><i class="fa fa-ellipsis-v"></i></span>
                                            <span><i class="fa fa-user"></i></span>
                                        </div>
                                        <div class="column-serial">
                                            <span>
                                                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox2">
                                                    <input type="checkbox" id="checkbox5" class="mdl-checkbox__input" checked="">
                                                    <span class="mdl-checkbox__label">Que 1000235</span>
                                                </label>
                                            </span>
                                            <span><i class="fa fa-hospital-o"></i>DHA
                                            <i class="fa fa-cog pull-right"></i></span>
                                        </div>
                                        <div class="persongendar">
                                            <i class="fa fa-male"></i>
                                        </div>
                                        <div class="column-serial details">
                                            <span class="name">Micheal John<span class="pull-right age">55yrs</span></span>
                                            <span><i class="fa fa-newspaper-o"></i>19900000000
                                            <span class="pull-right age">Ext:2333344</span></span>
                                        </div>
                                        <div class="">
                                        </div>
                                    </div>
                                </div>
                                <div class="rowtemplate">
                                    <div class="">
                                        <div class="options">
                                            <span><i class="fa fa-ellipsis-v"></i></span>
                                            <span><i class="fa fa-user"></i></span>
                                        </div>
                                        <div class="column-serial">
                                            <span>
                                                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox2">
                                                    <input type="checkbox" id="checkbox8" class="mdl-checkbox__input" checked="">
                                                    <span class="mdl-checkbox__label">Que 1000235</span>
                                                </label>
                                            </span>
                                            <span><i class="fa fa-hospital-o"></i>DHA
                                            <i class="fa fa-cog pull-right"></i></span>
                                        </div>
                                        <div class="persongendar">
                                            <i class="fa fa-male"></i>
                                        </div>
                                        <div class="column-serial details">
                                            <span class="name">Micheal John<span class="pull-right age">55yrs</span></span>
                                            <span><i class="fa fa-newspaper-o"></i>19900000000
                                            <span class="pull-right age">Ext:2333344</span></span>
                                        </div>
                                        <div class="">
                                        </div>
                                    </div>
                                </div>
                                <div class="rowtemplate">
                                    <div class="">
                                        <div class="options">
                                            <span><i class="fa fa-ellipsis-v"></i></span>
                                            <span><i class="fa fa-user"></i></span>
                                        </div>
                                        <div class="column-serial">
                                            <span>
                                                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox2">
                                                    <input type="checkbox" id="checkbox9" class="mdl-checkbox__input" checked="">
                                                    <span class="mdl-checkbox__label">Que 1000235</span>
                                                </label>
                                            </span>
                                            <span><i class="fa fa-hospital-o"></i>DHA
                                            <i class="fa fa-cog pull-right"></i></span>
                                        </div>
                                        <div class="persongendar">
                                            <i class="fa fa-male"></i>
                                        </div>
                                        <div class="column-serial details">
                                            <span class="name">Micheal John<span class="pull-right age">55yrs</span></span>
                                            <span><i class="fa fa-newspaper-o"></i>19900000000
                                            <span class="pull-right age">Ext:2333344</span></span>
                                        </div>
                                        <div class="">
                                        </div>
                                    </div>
                                </div>
                                <div class="rowtemplate">
                                    <div class="">
                                        <div class="options">
                                            <span><i class="fa fa-ellipsis-v"></i></span>
                                            <span><i class="fa fa-user"></i></span>
                                        </div>
                                        <div class="column-serial">
                                            <span>
                                                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox2">
                                                    <input type="checkbox" id="checkbox6" class="mdl-checkbox__input" checked="">
                                                    <span class="mdl-checkbox__label">Que 1000235</span>
                                                </label>
                                            </span>
                                            <span><i class="fa fa-hospital-o"></i>DHA
                                            <i class="fa fa-cog pull-right"></i></span>
                                        </div>
                                        <div class="persongendar">
                                            <i class="fa fa-male"></i>
                                        </div>
                                        <div class="column-serial details">
                                            <span class="name">Micheal John<span class="pull-right age">55yrs</span></span>
                                            <span><i class="fa fa-newspaper-o"></i>19900000000
                                            <span class="pull-right age">Ext:2333344</span></span>
                                        </div>
                                        <div class="">
                                        </div>
                                    </div>
                                </div>
                                <div class="rowtemplate">
                                    <div class="">
                                        <div class="options">
                                            <span><i class="fa fa-ellipsis-v"></i></span>
                                            <span><i class="fa fa-user"></i></span>
                                        </div>
                                        <div class="column-serial">
                                            <span>
                                                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox2">
                                                    <input type="checkbox" id="checkbox10" class="mdl-checkbox__input" checked="">
                                                    <span class="mdl-checkbox__label">Que 1000235</span>
                                                </label>
                                            </span>
                                            <span><i class="fa fa-hospital-o"></i>DHA
                                            <i class="fa fa-cog pull-right"></i></span>
                                        </div>
                                        <div class="persongendar">
                                            <i class="fa fa-male"></i>
                                        </div>
                                        <div class="column-serial details">
                                            <span class="name">Micheal John<span class="pull-right age">55yrs</span></span>
                                            <span><i class="fa fa-newspaper-o"></i>19900000000
                                            <span class="pull-right age">Ext:2333344</span></span>
                                        </div>
                                        <div class="">
                                        </div>
                                    </div>
                                </div>
                                <div class="rowtemplate">
                                    <div class="">
                                        <div class="options">
                                            <span><i class="fa fa-ellipsis-v"></i></span>
                                            <span><i class="fa fa-user"></i></span>
                                        </div>
                                        <div class="column-serial">
                                            <span>
                                                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox2">
                                                    <input type="checkbox" id="checkbox11" class="mdl-checkbox__input" checked="">
                                                    <span class="mdl-checkbox__label">Que 1000235</span>
                                                </label>
                                            </span>
                                            <span><i class="fa fa-hospital-o"></i>DHA
                                            <i class="fa fa-cog pull-right"></i></span>
                                        </div>
                                        <div class="persongendar">
                                            <i class="fa fa-male"></i>
                                        </div>
                                        <div class="column-serial details">
                                            <span class="name">Micheal John<span class="pull-right age">55yrs</span></span>
                                            <span><i class="fa fa-newspaper-o"></i>19900000000
                                            <span class="pull-right age">Ext:2333344</span></span>
                                        </div>
                                        <div class="">
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-md-7 npc">
                            <div class="scontent">
                                <div class="reset">
                                    <div class="rowtemplate grid">
                                        <div class="fullgrid">
                                            <div class="visitype">
                                                <span>OP</span>
                                            </div>
                                            <div class="column-serial">
                                                <span>
                                                    <span class=""><i class="fa fa-user-md"></i>Joe Francis</span>
                                                    <span class="pull-right"><i class="fa fa-stethoscope"></i>Lung Dialysis</span>
                                                </span>
                                                <span><span class="enserialno">ENCC133300344</span>
                                                    <span class="enrsrno"><i class="fa fa-check"></i>133300344</span>
                                                    <span class="pull-right"><i class="fa fa-calendar"></i>30/07/2016</span>
                                                </span>


                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop dropcustom">
                                                <span>5</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="dropdowncustom mdl-menu__container is-upgraded" style="display: none;">
                                                <div class="dcontent-container">
                                                    <div class="drop-row">
                                                        <div class="sno">
                                                            <span>12344
                                                            </span>
                                                        </div>
                                                        <div class="diseasedetails">
                                                            <span>Tuber closis of bone and joint not otherwise other speciality Microscopic Diagnosis</span>
                                                        </div>
                                                    </div>
                                                    <div class="drop-row">
                                                        <div class="sno">
                                                            <span>12344
                                                            </span>
                                                        </div>
                                                        <div class="diseasedetails">
                                                            <span>Tuber closis of bone and joint not otherwise other speciality Microscopic Diagnosis</span>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop">
                                                <span>22</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="visitype num">
                                                <span>1</span>
                                            </div>

                                            <div class="column-serials details">
                                                <span class="namesc" style="">Bajaj Life Insurance<span class="pull-right "><i class="fa fa-"></i>ECD54545</span></span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>
                                                    <span class="pull-right"><i class="fa fa-calendar" style="margin-right: 5px;"></i>31/06/1990</span>
                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-bell-o"></i>
                                            </div>
                                            <div class="column details">
                                                <span class="namesc" style="">Bajaj Life Insurance</span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>

                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="reset">
                                    <div class="rowtemplate grid">
                                        <div class="fullgrid">

                                            <div class="visitype">
                                                <span>OP</span>
                                            </div>
                                            <div class="column-serial">
                                                <span>
                                                    <span class=""><i class="fa fa-user-md"></i>Joe Francis</span>
                                                    <span class="pull-right"><i class="fa fa-stethoscope"></i>Lung Dialysis</span>
                                                </span>
                                                <span><span class="enserialno">ENCC133300344</span>
                                                    <span class="enrsrno"><i class="fa fa-check"></i>133300344</span>
                                                    <span class="pull-right"><i class="fa fa-calendar"></i>30/07/2016</span>
                                                </span>


                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop dropcustom">
                                                <span>5</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="dropdowncustom mdl-menu__container is-upgraded" style="display: none;">
                                                <div class="dcontent-container">
                                                    <div class="drop-row">
                                                        <div class="sno">
                                                            <span>12344
                                                            </span>
                                                        </div>
                                                        <div class="diseasedetails">
                                                            <span>Tuber closis of bone and joint not otherwise other speciality Microscopic Diagnosis</span>
                                                        </div>
                                                    </div>
                                                    <div class="drop-row">
                                                        <div class="sno">
                                                            <span>12344
                                                            </span>
                                                        </div>
                                                        <div class="diseasedetails">
                                                            <span>Tuber closis of bone and joint not otherwise other speciality Microscopic Diagnosis</span>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop">
                                                <span>22</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="visitype num">
                                                <span>1</span>
                                            </div>

                                            <div class="column-serials details">
                                                <span class="namesc" style="">Bajaj Life Insurance<span class="pull-right "><i class="fa fa-"></i>ECD54545</span></span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>
                                                    <span class="pull-right"><i class="fa fa-calendar" style="margin-right: 5px;"></i>31/06/1990</span>
                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-bell-o"></i>
                                            </div>
                                            <div class="column details">
                                                <span class="namesc" style="">Bajaj Life Insurance</span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>

                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="reset">
                                    <div class="rowtemplate grid">
                                        <div class="fullgrid">

                                            <div class="visitype">
                                                <span>OP</span>
                                            </div>
                                            <div class="column-serial">
                                                <span>
                                                    <span class=""><i class="fa fa-user-md"></i>Joe Francis</span>
                                                    <span class="pull-right"><i class="fa fa-stethoscope"></i>Lung Dialysis</span>
                                                </span>
                                                <span><span class="enserialno">ENCC133300344</span>
                                                    <span class="enrsrno"><i class="fa fa-check"></i>133300344</span>
                                                    <span class="pull-right"><i class="fa fa-calendar"></i>30/07/2016</span>
                                                </span>


                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop dropcustom">
                                                <span>5</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="dropdowncustom mdl-menu__container is-upgraded" style="display: none;">
                                                <div class="dcontent-container">
                                                    <div class="drop-row">
                                                        <div class="sno">
                                                            <span>12344
                                                            </span>
                                                        </div>
                                                        <div class="diseasedetails">
                                                            <span>Tuber closis of bone and joint not otherwise other speciality Microscopic Diagnosis</span>
                                                        </div>
                                                    </div>
                                                    <div class="drop-row">
                                                        <div class="sno">
                                                            <span>12344
                                                            </span>
                                                        </div>
                                                        <div class="diseasedetails">
                                                            <span>Tuber closis of bone and joint not otherwise other speciality Microscopic Diagnosis</span>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop">
                                                <span>22</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="visitype num">
                                                <span>1</span>
                                            </div>

                                            <div class="column-serials details">
                                                <span class="namesc" style="">Bajaj Life Insurance<span class="pull-right "><i class="fa fa-"></i>ECD54545</span></span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>
                                                    <span class="pull-right"><i class="fa fa-calendar" style="margin-right: 5px;"></i>31/06/1990</span>
                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-bell-o"></i>
                                            </div>
                                            <div class="column details">
                                                <span class="namesc" style="">Bajaj Life Insurance</span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>

                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="reset">
                                    <div class="rowtemplate grid">
                                        <div class="fullgrid">

                                            <div class="visitype">
                                                <span>OP</span>
                                            </div>
                                            <div class="column-serial">
                                                <span>
                                                    <span class=""><i class="fa fa-user-md"></i>Joe Francis</span>
                                                    <span class="pull-right"><i class="fa fa-stethoscope"></i>Lung Dialysis</span>
                                                </span>
                                                <span><span class="enserialno">ENCC133300344</span>
                                                    <span class="enrsrno"><i class="fa fa-check"></i>133300344</span>
                                                    <span class="pull-right"><i class="fa fa-calendar"></i>30/07/2016</span>
                                                </span>


                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop dropcustom">
                                                <span>5</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="dropdowncustom mdl-menu__container is-upgraded" style="display: none;">
                                                <div class="dcontent-container">
                                                    <div class="drop-row">
                                                        <div class="sno">
                                                            <span>12344
                                                            </span>
                                                        </div>
                                                        <div class="diseasedetails">
                                                            <span>Tuber closis of bone and joint not otherwise other speciality Microscopic Diagnosis</span>
                                                        </div>
                                                    </div>
                                                    <div class="drop-row">
                                                        <div class="sno">
                                                            <span>12344
                                                            </span>
                                                        </div>
                                                        <div class="diseasedetails">
                                                            <span>Tuber closis of bone and joint not otherwise other speciality Microscopic Diagnosis</span>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop">
                                                <span>22</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="visitype num">
                                                <span>1</span>
                                            </div>

                                            <div class="column-serials details">
                                                <span class="namesc" style="">Bajaj Life Insurance<span class="pull-right "><i class="fa fa-"></i>ECD54545</span></span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>
                                                    <span class="pull-right"><i class="fa fa-calendar" style="margin-right: 5px;"></i>31/06/1990</span>
                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-bell-o"></i>
                                            </div>
                                            <div class="column details">
                                                <span class="namesc" style="">Bajaj Life Insurance</span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>

                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="reset">
                                    <div class="rowtemplate grid">
                                        <div class="fullgrid">

                                            <div class="visitype">
                                                <span>OP</span>
                                            </div>
                                            <div class="column-serial">
                                                <span>
                                                    <span class=""><i class="fa fa-user-md"></i>Joe Francis</span>
                                                    <span class="pull-right"><i class="fa fa-stethoscope"></i>Lung Dialysis</span>
                                                </span>
                                                <span><span class="enserialno">ENCC133300344</span>
                                                    <span class="enrsrno"><i class="fa fa-check"></i>133300344</span>
                                                    <span class="pull-right"><i class="fa fa-calendar"></i>30/07/2016</span>
                                                </span>


                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop dropcustom">
                                                <span>5</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="dropdowncustom mdl-menu__container is-upgraded" style="display: none;">
                                                <div class="dcontent-container">
                                                    <div class="drop-row">
                                                        <div class="sno">
                                                            <span>12344
                                                            </span>
                                                        </div>
                                                        <div class="diseasedetails">
                                                            <span>Tuber closis of bone and joint not otherwise other speciality Microscopic Diagnosis</span>
                                                        </div>
                                                    </div>
                                                    <div class="drop-row">
                                                        <div class="sno">
                                                            <span>12344
                                                            </span>
                                                        </div>
                                                        <div class="diseasedetails">
                                                            <span>Tuber closis of bone and joint not otherwise other speciality Microscopic Diagnosis</span>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop">
                                                <span>22</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="visitype num">
                                                <span>1</span>
                                            </div>

                                            <div class="column-serials details">
                                                <span class="namesc" style="">Bajaj Life Insurance<span class="pull-right "><i class="fa fa-"></i>ECD54545</span></span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>
                                                    <span class="pull-right"><i class="fa fa-calendar" style="margin-right: 5px;"></i>31/06/1990</span>
                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-bell-o"></i>
                                            </div>
                                            <div class="column details">
                                                <span class="namesc" style="">Bajaj Life Insurance</span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>

                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="reset">
                                    <div class="rowtemplate grid">
                                        <div class="fullgrid">

                                            <div class="visitype">
                                                <span>OP</span>
                                            </div>
                                            <div class="column-serial">
                                                <span>
                                                    <span class=""><i class="fa fa-user-md"></i>Joe Francis</span>
                                                    <span class="pull-right"><i class="fa fa-stethoscope"></i>Lung Dialysis</span>
                                                </span>
                                                <span><span class="enserialno">ENCC133300344</span>
                                                    <span class="enrsrno"><i class="fa fa-check"></i>133300344</span>
                                                    <span class="pull-right"><i class="fa fa-calendar"></i>30/07/2016</span>
                                                </span>


                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop dropcustom">
                                                <span>5</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="dropdowncustom mdl-menu__container is-upgraded" style="display: none;">
                                                <div class="dcontent-container">
                                                    <div class="drop-row">
                                                        <div class="sno">
                                                            <span>12344
                                                            </span>
                                                        </div>
                                                        <div class="diseasedetails">
                                                            <span>Tuber closis of bone and joint not otherwise other speciality Microscopic Diagnosis</span>
                                                        </div>
                                                    </div>
                                                    <div class="drop-row">
                                                        <div class="sno">
                                                            <span>12344
                                                            </span>
                                                        </div>
                                                        <div class="diseasedetails">
                                                            <span>Tuber closis of bone and joint not otherwise other speciality Microscopic Diagnosis</span>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop">
                                                <span>22</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="visitype num">
                                                <span>1</span>
                                            </div>

                                            <div class="column-serials details">
                                                <span class="namesc" style="">Bajaj Life Insurance<span class="pull-right "><i class="fa fa-"></i>ECD54545</span></span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>
                                                    <span class="pull-right"><i class="fa fa-calendar" style="margin-right: 5px;"></i>31/06/1990</span>
                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-bell-o"></i>
                                            </div>
                                            <div class="column details">
                                                <span class="namesc" style="">Bajaj Life Insurance</span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>

                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="reset">
                                    <div class="rowtemplate grid">
                                        <div class="fullgrid">

                                            <div class="visitype">
                                                <span>OP</span>
                                            </div>
                                            <div class="column-serial">
                                                <span>
                                                    <span class=""><i class="fa fa-user-md"></i>Joe Francis</span>
                                                    <span class="pull-right"><i class="fa fa-stethoscope"></i>Lung Dialysis</span>
                                                </span>
                                                <span><span class="enserialno">ENCC133300344</span>
                                                    <span class="enrsrno"><i class="fa fa-check"></i>133300344</span>
                                                    <span class="pull-right"><i class="fa fa-calendar"></i>30/07/2016</span>
                                                </span>


                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop dropcustom">
                                                <span>5</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="dropdowncustom mdl-menu__container is-upgraded" style="display: none;">
                                                <div class="dcontent-container">
                                                    <div class="drop-row">
                                                        <div class="sno">
                                                            <span>12344
                                                            </span>
                                                        </div>
                                                        <div class="diseasedetails">
                                                            <span>Tuber closis of bone and joint not otherwise other speciality Microscopic Diagnosis</span>
                                                        </div>
                                                    </div>
                                                    <div class="drop-row">
                                                        <div class="sno">
                                                            <span>12344
                                                            </span>
                                                        </div>
                                                        <div class="diseasedetails">
                                                            <span>Tuber closis of bone and joint not otherwise other speciality Microscopic Diagnosis</span>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop">
                                                <span>22</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="visitype num">
                                                <span>1</span>
                                            </div>

                                            <div class="column-serials details">
                                                <span class="namesc" style="">Bajaj Life Insurance<span class="pull-right "><i class="fa fa-"></i>ECD54545</span></span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>
                                                    <span class="pull-right"><i class="fa fa-calendar" style="margin-right: 5px;"></i>31/06/1990</span>
                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-bell-o"></i>
                                            </div>
                                            <div class="column details">
                                                <span class="namesc" style="">Bajaj Life Insurance</span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>

                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="reset">
                                    <div class="rowtemplate grid">
                                        <div class="fullgrid">

                                            <div class="visitype">
                                                <span>OP</span>
                                            </div>
                                            <div class="column-serial">
                                                <span>
                                                    <span class=""><i class="fa fa-user-md"></i>Joe Francis</span>
                                                    <span class="pull-right"><i class="fa fa-stethoscope"></i>Lung Dialysis</span>
                                                </span>
                                                <span><span class="enserialno">ENCC133300344</span>
                                                    <span class="enrsrno"><i class="fa fa-check"></i>133300344</span>
                                                    <span class="pull-right"><i class="fa fa-calendar"></i>30/07/2016</span>
                                                </span>


                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop dropcustom">
                                                <span>5</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="dropdowncustom mdl-menu__container is-upgraded" style="display: none;">
                                                <div class="dcontent-container">
                                                    <div class="drop-row">
                                                        <div class="sno">
                                                            <span>12344
                                                            </span>
                                                        </div>
                                                        <div class="diseasedetails">
                                                            <span>Tuber closis of bone and joint not otherwise other speciality Microscopic Diagnosis</span>
                                                        </div>
                                                    </div>
                                                    <div class="drop-row">
                                                        <div class="sno">
                                                            <span>12344
                                                            </span>
                                                        </div>
                                                        <div class="diseasedetails">
                                                            <span>Tuber closis of bone and joint not otherwise other speciality Microscopic Diagnosis</span>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop">
                                                <span>22</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="visitype num">
                                                <span>1</span>
                                            </div>

                                            <div class="column-serials details">
                                                <span class="namesc" style="">Bajaj Life Insurance<span class="pull-right "><i class="fa fa-"></i>ECD54545</span></span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>
                                                    <span class="pull-right"><i class="fa fa-calendar" style="margin-right: 5px;"></i>31/06/1990</span>
                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-bell-o"></i>
                                            </div>
                                            <div class="column details">
                                                <span class="namesc" style="">Bajaj Life Insurance</span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>

                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="">
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="reset last">
                                    <div class="rowtemplate grid">
                                        <div class="fullgrid">
                                            <div class="visitype">
                                                <span>OP</span>
                                            </div>
                                            <div class="column-serial">
                                                <span>
                                                    <span class=""><i class="fa fa-user-md"></i>Joe Francis</span>
                                                    <span class="pull-right"><i class="fa fa-stethoscope"></i>Lung Dialysis</span>
                                                </span>
                                                <span><span class="enserialno">ENCC133300344</span>
                                                    <span class="enrsrno"><i class="fa fa-check"></i>133300344</span>
                                                    <span class="pull-right"><i class="fa fa-calendar"></i>30/07/2016</span>
                                                </span>


                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop">
                                                <span>5</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-cogs"></i>
                                            </div>
                                            <div class="count-drop">
                                                <span>22</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="visitype num">
                                                <span>1</span>
                                            </div>

                                            <div class="column-serials details">
                                                <span class="namesc" style="">Bajaj Life Insurance<span class="pull-right "><i class="fa fa-"></i>ECD54545</span></span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>
                                                    <span class="pull-right"><i class="fa fa-calendar" style="margin-right: 5px;"></i>31/06/1990</span>
                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="typedetails">
                                                <i class="fa fa-bell-o"></i>
                                            </div>
                                            <div class="column details">
                                                <span class="namesc" style="">Bajaj Life Insurance</span>
                                                <span class="namesc">
                                                    <span><i class="fa fa-bookmark-o" style="margin-right: 5px;"></i>Gold Plus</span>

                                                    <span></span>
                                                </span>
                                            </div>
                                            <div class="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Filtered By categories</h4>
            </div>
            <%--Two Controls Added by Yuvaraj.S On 23-09-2016--%>
            <div class="modal-body" style="min-height: 200px;">
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label sm ">
                            <input class="mdl-textfield__input" spellcheck='false' type="text" id="Groupname" maxlength="20" />
                            <label class="mdl-textfield__label" for="Groupname">Group Name</label>
                        </div>
                    </div>
                    <div class="col-md-6" style="margin-top: 25px;">
                        <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="checkbox12">
                            <input type="checkbox" id="checkbox12" class="mdl-checkbox__input" checked="">
                            <span class="mdl-checkbox__label">Default</span>
                        </label>
                    </div>
                </div>
                <%--Two Controls Added by Yuvaraj.S On 23-09-2016--%>
                <div class="col-md-12" style="margin-top: 14px">
                    <div>
                        <select id="Selectfilter" style="width: 450px;" class="js-example-programmatic" multiple="multiple"></select>
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" id="grpadd" class="btn btn-primary" data-dismiss="modal">Add</button>
                <button type="button" id="grpclose" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentJs" runat="server">
    <script src="WorkQueue.js"></script>
    <script type="text/javascript">
        var GlobalwqTreeData = [];
        var loGroupfiltertemp = [];
        var loDatas = [];

        $('document').ready(function () {

            $(document).on("click", function () {
                //if ($(this).attr("class") != "dropdowncustom") {
                //    if ($(".dropdowncustom").css("display") == "block") {
                //        $(".dropdowncustom").hide();
                //    }
                //}
            });

            //alertmenet common function
            function uishowalertNew(title, message, type, closebtn, position, onclickfunction) {
                //toastr.clear();
                var tosterpostion = ["toast-top-right", "toast-bottom-right", "toast-bottom-left", "toast-top-left", "toast-top-center", "toast-bottom-center", "toast-top-full-width", "toast-bottom-full-width"]
                var tostertype = ["success", "info", "warning", "error"];
                if (!closebtn) {
                    closebtn = true;
                }
                if (!position) {
                    position = 1;
                }
                if (!onclickfunction) {
                    onclickfunction = null;
                }
                if (!type) {
                    type = 0;
                }
                toastr.options = {
                    closeButton: closebtn,
                    debug: false,
                    positionClass: tosterpostion[position],
                    onclick: onclickfunction,
                    showDuration: "1000",
                    hideDuration: "1000",
                    timeOut: "5000",
                    extendedTimeOut: "1000",
                    showEasing: "swing",
                    hideEasing: "linear",
                    showMethod: "fadeIn",
                    hideMethod: "fadeOut"
                }
                var $toast = toastr[tostertype[type]](message, title);
            }

            $(".dropcustom").on("click", function () {
                if ($(this).next().css("display") == "none") {
                    $(this).next().addClass("open is-visible");
                    $(this).next().css("display", "block");
                    setTimeout(function () {
                        $(".dropdowncustom ").css("transform", "scale(1)");
                    }, 1);
                }
                else {
                    $(this).next().css("display", "none");
                    $(this).next().removeClass("open is-visible");
                    $(".dropdowncustom ").css("transform", "scale(0)");
                }
            });

            $('.filteredList.result').slimScroll({//slimScroll for Group Template added by Yuvaraj.S on 23-09-2016

            });
            $('.leftcontent.maintreeresult').slimScroll({

            });
            //work queue left side filter tree view begin added by Yuvaraj.S on 23-09-2016
            $("#maintree").jstree({
                "core": {
                    "themes": {
                        "responsive": false
                    },
                    "multiple": false,
                    "check_callback": true,
                    'data': loDatas
                },
                "types": {
                    "default": {
                        "icon": "fa fa-folder icon-state-warning icon-lg"
                    },
                    "file": {
                        "icon": "fa fa-file icon-state-warning icon-lg"
                    }
                },
                "state": { "key": "demo2" },
                "plugins": ["state", "types", "unique", "json_data", "search"]

            });

            function uiloadWorkqinfo() {
                var loworkqTreeDatas = loWorkqfiltertree;
                GlobalwqTreeData = loworkqTreeDatas;
                $('#maintree').jstree(true).settings.core.data = loworkqTreeDatas;
                $('#maintree').jstree(true).refresh();
                setTimeout(function () {
                    $("#maintree").jstree("open_all");
                    $('#maintree').jstree("deselect_all");
                }, 500);
            }
            uiloadWorkqinfo();
            //work queue left side filter tree view end

            //Work queue left side filter Group template begin added by Yuvaraj.S on 23-09-2016
            function uibindgrouptemplate() {
                try {
                    var loGroupfilter = JSLINQ(loWorkqGrupTemp).Where(function (item) { return item.defalut == 1 });
                    if (loGroupfilter.items.length != 0) {
                        var lsfiltrstatus = loGroupfilter.items[0].name;
                        $("#status").html(lsfiltrstatus);
                    }

                    loGroupfiltertemp = JSLINQ(loWorkqGrupTemp).Where(function (r) { return r.defalut == 0 });
                    var tempDataConnection = kendo.template($("#WorkQueueGroupBind").html());
                    $("#WorkQueueGroup").html(tempDataConnection(loGroupfiltertemp.items));
                }
                catch (err) {
                }
            };
            uibindgrouptemplate();
            if (loGroupfiltertemp.items.length < 5) {
                var newheight = $('.filteredList.result').height() - 27;
                $('.filteredList.result').css("min-height", newheight);

                var newheight = $('.leftcontent.maintreeresult').height() + 27;
                $('.leftcontent.maintreeresult').css("max-height", newheight);
                $('.leftcontent.maintreeresult').css("min-height", newheight);
            }
            //Work queue left side filter Group template end

            //Popup clik event Begin added by Yuvaraj.S on 23-09-2016
            $("#grpadd").click(function () {
                var lsgpactive = $("#status").text();
                var lsgpname = $("#Groupname").val();
                if (lsgpname == "" || lsgpname == undefined) {
                    uishowalertNew('Work Queue', "Please Enter Group Name.", 3);
                    return false;

                }
                var lsdeflt = $("#checkbox12").prop("checked");
                if (lsdeflt == true) {
                    lsdefval = 1;
                }
                else {
                    lsdefval = 0;
                }
                if (lsdefval == 1 && lsgpactive != "") {
                    for (var i = 0; i < loWorkqGrupTemp.length; i++) {
                        if (loWorkqGrupTemp[i].name == lsgpactive) {
                            loWorkqGrupTemp[i].defalut = 0;
                            break;
                        }
                    }
                }

                var newgroup = { "code": "G9", "name": lsgpname, "order": 9, "defalut": lsdefval, "strval": "" }
                loWorkqGrupTemp.push(newgroup);
                uibindgrouptemplate();
                if (loGroupfiltertemp.items.length <= 5) {
                    var newheight = $('.filteredList.result').height() + 17;
                    $('.filteredList.result').css("min-height", newheight);

                    var newheight = $('.leftcontent.maintreeresult').height() - 26;
                    $('.leftcontent.maintreeresult').css("max-height", newheight);
                    $('.leftcontent.maintreeresult').css("min-height", newheight);
                }
                $(".searchc").hide();
                $(".titlef").show();
                $("#Groupname").val("");
                $($('#Groupname').parent()).removeClass("is-dirty");
                $("#Selectfilter").val("");
                uishowalertNew('Work Queue', "Group Added successfully.", 1);
            });

            $("#grpclose").click(function () {
                $("#Groupname").val("");
                $($('#Groupname').parent()).removeClass("is-dirty");
                $("#Selectfilter").val("");
            });

            //Popup clik event end

            //Group Delete and Modify Begin added by Yuvaraj.S on 23-09-2016
            $(document).on("click", ".GroupDelete", function () {
                try {

                    var lsgroupname = $(this).data("name");
                    var loGroupfiltertemp = JSLINQ(loWorkqGrupTemp).Where(function (r) { return r.name == lsgroupname });
                    indexes = $.map(loWorkqGrupTemp, function (obj, index) {
                        if (obj.name == lsgroupname) {
                            return index;
                        }
                    })
                    loWorkqGrupTemp.splice(indexes, 1);
                    uibindgrouptemplate();
                    if (loGroupfiltertemp.items.length < 5) {
                        var newheight = $('.filteredList.result').height() - 27;
                        $('.filteredList.result').css("min-height", newheight);

                        var newheight = $('.leftcontent.maintreeresult').height() + 27.5;
                        $('.leftcontent.maintreeresult').css("max-height", newheight);
                        $('.leftcontent.maintreeresult').css("min-height", newheight);
                    }
                    uishowalertNew('Work Queue', "Group Deleted Successfully.", 1);
                }
                catch (err) {
                }
            });

            $(".groupresult").live("dblclick", function () {
                var lsgrpactive = $("#status").text();
                var Groupname = $(this).find(".gname").text()
                if (Groupname != "") {
                    for (var i = 0; i < loWorkqGrupTemp.length; i++) {
                        if (loWorkqGrupTemp[i].name == Groupname) {
                            loWorkqGrupTemp[i].defalut = 1;
                            break;
                        }
                    }
                }

                if (lsgrpactive != "") {
                    for (var i = 0; i < loWorkqGrupTemp.length; i++) {
                        if (loWorkqGrupTemp[i].name == lsgrpactive) {
                            loWorkqGrupTemp[i].defalut = 0;
                            break;
                        }
                    }
                }
                uibindgrouptemplate();
            });
            //Group Delete and Modify end

        });

        $(function () {
            var data = loWorkqGrupdata;//asign Local data by Yuvaraj.S on 23-09-2016
            $(function () {
                $(".selectc").click(function () { $("#myModal").modal("show") });
                $('.reset').scroll(function () {
                    $('.reset').scrollLeft($(this).scrollLeft());
                });
                $('#selectTags').select2({
                    tags: true,
                    data: data,
                });

                $(".js-example-programmatic").select2({
                    tags: true,
                    data: data,

                });
                //$('#selectTags').select2('val', [id]);
            });
            //$(".scontent").mousewheel(function (event, delta) {

            //    this.scrollLeft -= (delta * 30);

            //    event.preventDefault();

            //});
            $("i#filterby").on("click", function () {
                $(".filterOption").slideDown();
                $(".default-action").hide();
                $(".filter-action").show();
                $("i.addCriteria").hide();
                $("#filter").fadeIn();
                $("#status").hide();
            });
            $(".filter-action").click(function () {
                $(".filterOption").slideUp();
                $(".default-action").show();
                $(".filter-action").hide();
                $("i.addCriteria").show();
                $("#filter").hide();
                $("#status").fadeIn();
            });

            $("i.sidetoggle").click(function () {
                $("#contToggle").toggleClass("toggleclose");
            });
            $('.ripple').on('click', function (event) {
                event.preventDefault();

                var $div = $('<div/>'),
                    btnOffset = $(this).offset(),
                      xPos = event.pageX - btnOffset.left,
                      yPos = event.pageY - btnOffset.top;



                $div.addClass('ripple-effect');
                var $ripple = $(".ripple-effect");

                $ripple.css("height", $(this).height());
                $ripple.css("width", $(this).height());
                $div
                  .css({
                      top: yPos - ($ripple.height() / 2),
                      left: xPos - ($ripple.width() / 2),
                      background: $(this).data("ripple-color")
                  })
                  .appendTo($(this));

                window.setTimeout(function () {
                    $div.remove();
                }, 2);
            });

            $("i.addCriteria").on("click", function () { $(".searchc").show(); $(".titlef").hide(); });

            $(".backSearch").on("click", function () { $(".searchc").hide(); $(".titlef").show(); });

        });
    </script>
    <script id="WorkQueueGroupBind" type="text/template">
        # if(data.length>0){#
            # for (var i = 0; i < data.length; i++) { # 
         <div class="temptag groupresult">
                    <span class="gcode" style="display:none;">#:data[i].code#</span>
					<span class="gname">#:data[i].name#</span>
                    <span class="gorder" style="display:none;">#:data[i].order#</span>
                    <span class="gdefvalue" style="display:none;">#:data[i].defalut#</span>
					<span class="sDelete GroupDelete pull-right" data-name="#:data[i].name#"><i class="fa fa-times sdeleteI"></i></span>                                                                                                          
         </div>
             #}#
       #}# 
    </script>
</asp:Content>



