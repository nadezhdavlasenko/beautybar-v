<%--
  Created by IntelliJ IDEA.
  User: nadezhdavlasenko
  Date: 05.09.2018
  Time: 13:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body class="h100 light-background-color desktop" ng-class="{'without-header' : $root.ySettings.style.show_header === false}" data-gr-c-s-loaded="true" style="min-height: 326px;">

<div class="main-animated-circle-loader" style="display: none;">
</div>

<div class="y-main-foreground"></div>





<link rel="stylesheet" href="/css/vendor1535711697016.css">
<link rel="stylesheet" href="/css/application1535711697016.css">

<script src="babel-polyfill.1535711700647.js"></script><script src="vendor.1535711700647.js"></script><script src="app.1535711700647.js"></script>

<link rel="stylesheet" href="style.1535711700647.css">

<script src="/templates1535711697016.js"></script>


<noscript>
    <div><img src="https://mc.yandex.ru/watch/35239280" style="position:absolute; left:-9999px;" alt=""/></div>
</noscript>
<div class="y-tooltips y-tooltips_hidden ng-isolate-scope" ng-click="ctrl.close()"><div class="y-tooltips__content"><!-- ngIf: ctrl.template --><div class="y-tooltips__content__close mdi mdi-close"></div></div></div>
<y-backdrop class="ng-isolate-scope"></y-backdrop>
<div class="y-top-notification y-top-notification_hidden ng-scope">
    <div class="y-top-notification__container"></div>
</div>
<y-request-rating class="ng-isolate-scope"><div class="y-request-rating y-request-rating_hidden">
    <div class="y-request-rating__container"></div>
</div>
</y-request-rating>



<div class="nano"><div class="nano-content" tabindex="0"><div class="y-main-container"><yclients class="h100 js-for-copy y-content-wrapper ng-isolate-scope"><div class="h100 y-content-wrapper"><div class="status-bar-bg status-bar-bg_translucent"></div><div class="status-bar-bg y-header-toolbar"></div><!-- ngIf: $root.ySettings.style.show_header !== false && $root.appIsLoaded && !$root.appIsDisabled --><yclients-nav ng-if="$root.ySettings.style.show_header !== false &amp;&amp; $root.appIsLoaded &amp;&amp; !$root.appIsDisabled" class="ng-scope ng-isolate-scope"><div class="y-header-toolbar header-toolbar md-toolbar-tools"><button ng-click="$ctrl.showMenu();" id="menu_button" class="y-button y-button_transparent y-clients-menu-button y-icon-button no-hover-background menu"><i class="mdi mdi-menu y-header-icon-color"></i></button> <img ng-src="https://w79452.yclients.com/uploads/widget_logo/3/3b/3b65f15b075db2e_20170828142555.png" class="logo" src="https://w79452.yclients.com/uploads/widget_logo/3/3b/3b65f15b075db2e_20170828142555.png"><div class="nav-tools-container"><yclients-activities-filter-icon class="ng-isolate-scope"><!-- ngIf: $ctrl.isCanShow() === true -->
</yclients-activities-filter-icon><y-circle-loader md-mode="indeterminate" md-diameter="22" class="progress-circular-color js-circular-loader y-circular-loader ng-isolate-scope y-circular-loader_hidden"><div class="md-spinner-wrapper"><div class="md-inner"><div class="md-gap"></div><div class="md-left"><div class="md-half-circle"></div></div><div class="md-right"><div class="md-half-circle"></div></div></div></div></y-circle-loader><button ng-click="$ctrl.back()" style="display: block" class="y-button y-button_transparent history-back y-icon-button no-hover-background js-back-button"><i class="mdi mdi-arrow-left y-header-icon-color"></i></button></div></div><div y-side-nav="$ctrl.menuIsOpen" y-side-nav-name="main-menu-left" class="ng-isolate-scope y-side-nav"><y-menu class="ng-isolate-scope"><div class="status-bar-bg status-bar-bg_translucent status-bar-bg_menu"></div>
    <!-- ngIf: $root.widgetId !== -1 --><y-menu-carousel ng-if="$root.widgetId !== -1" companies="$ctrl.companies" current-company-id="$ctrl.currentCompanyId" class="ng-scope ng-isolate-scope"><div>
        <!-- ngIf: $ctrl.companies.length > 1 -->

        <!-- ngIf: $ctrl.companies.length > 1 -->

        <!-- ngIf: $ctrl.companies.length > 0 --><ul rn-carousel="" rn-carousel-index="$ctrl.currentIndex" ng-if="$ctrl.companies.length > 0" class="menu-carousel-block ng-scope">
        <!-- ngRepeat: company in $ctrl.companies --><li ng-repeat="company in $ctrl.companies" class="ng-scope" style="display: inline-block; transform: translate3d(0%, 0px, 0px);">
            <span class="menu-carousel-block__item">
                <h3 class="y-accent-text-color side-menu__company-title ng-binding">GC barbershop Луцьк</h3>
                <h4 class="y-accent-text-color side-menu__company-address ng-binding">пр-т Волі, 12</h4>
            </span>
    </li><!-- end ngRepeat: company in $ctrl.companies -->
    </ul><!-- end ngIf: $ctrl.companies.length > 0 -->
        <div class="background" style="background-image: url(https://w79452.yclients.com/uploads/widget_back/0/09/097a63303dda262_20170828142555.jpeg)"></div>
    </div>
    </y-menu-carousel><!-- end ngIf: $root.widgetId !== -1 -->

    <y-menu-list company="$ctrl.currentCompany" class="y-items-md-content ng-isolate-scope"><div class="y-menu-list-wrapper">
        <!-- ngIf: $root.widgetId !== -1 --><y-menu-item id="menu_online_booking" class="menu ng-scope ng-isolate-scope" icon="'mdi-calendar-text'" title="('menu.on-line' | translate)" ng-click="$ctrl.goToBooking()" ng-if="$root.widgetId !== -1"><div class="menu-item-attention" ng-class="{ 'on': $ctrl.attention == true }"></div>
        <!-- ngIf: !$ctrl.hideicon --><div class="menu-icon ng-scope" ng-if="!$ctrl.hideicon"><i class="mdi mdi-calendar-text"></i></div><!-- end ngIf: !$ctrl.hideicon -->
        <h1 class="ng-binding">
            Онлайн-запись
        </h1>

        <!-- ngIf: $ctrl.countNotification > 0 -->
    </y-menu-item><!-- end ngIf: $root.widgetId !== -1 -->

        <!-- ngIf: $root.widgetId !== -1 --><y-menu-item id="menu_about_company" class="bottom-bordered menu ng-scope ng-isolate-scope" ng-click="$ctrl.goToCompanyInfo()" ng-if="$root.widgetId !== -1" title="('menu.about' | translate)" icon="'mdi-information-outline'"><div class="menu-item-attention" ng-class="{ 'on': $ctrl.attention == true }"></div>
        <!-- ngIf: !$ctrl.hideicon --><div class="menu-icon ng-scope" ng-if="!$ctrl.hideicon"><i class="mdi mdi-information-outline"></i></div><!-- end ngIf: !$ctrl.hideicon -->
        <h1 class="ng-binding">
            О компании
        </h1>

        <!-- ngIf: $ctrl.countNotification > 0 -->
    </y-menu-item><!-- end ngIf: $root.widgetId !== -1 -->

        <!-- ngIf: $root.widgetId !== -1 && $root.isAdmin -->

        <!-- ngIf: !$ctrl.isLogin() --><y-menu-item class="bottom-bordered ng-scope ng-isolate-scope" ng-if="!$ctrl.isLogin()" ng-click="$ctrl.goToAuth()" title="('menu.my' | translate)" icon="'mdi-account'"><div class="menu-item-attention" ng-class="{ 'on': $ctrl.attention == true }"></div>
        <!-- ngIf: !$ctrl.hideicon --><div class="menu-icon ng-scope" ng-if="!$ctrl.hideicon"><i class="mdi mdi-account"></i></div><!-- end ngIf: !$ctrl.hideicon -->
        <h1 class="ng-binding">
            Личный кабинет
        </h1>

        <!-- ngIf: $ctrl.countNotification > 0 -->
    </y-menu-item><!-- end ngIf: !$ctrl.isLogin() -->

        <!-- ngIf: $root.widgetId !== -1 && $ctrl.isMobileDevice() === true -->

        <!-- ngIf: $ctrl.isLogin() -->

        <y-menu-item id="menu_change_language" class="menu ng-isolate-scope" ng-click="$ctrl.toggleMenu('sub-menu-translate');" title="('menu.change_lang' | translate)" icon="'mdi-web'"><div class="menu-item-attention" ng-class="{ 'on': $ctrl.attention == true }"></div>
            <!-- ngIf: !$ctrl.hideicon --><div class="menu-icon ng-scope" ng-if="!$ctrl.hideicon"><i class="mdi mdi-web"></i></div><!-- end ngIf: !$ctrl.hideicon -->
            <h1 class="ng-binding">
                Изменить язык
            </h1>

            <!-- ngIf: $ctrl.countNotification > 0 -->
        </y-menu-item>
        <!-- ngIf: $ctrl.isShow('sub-menu-translate') -->

        <!-- ngIf: $root.widgetId !== -1 && $ctrl.canChangeFilial() -->

        <!-- @if appType!='ionic' -->
        <y-menu-app-links company="$ctrl.company" class="y-items-md-content ng-isolate-scope"><div class="menu-items__badges ng-hide" ng-show="($ctrl.desktop || $ctrl.isIos || $ctrl.isAndroid) &amp;&amp; ($ctrl.company.app_ios || $ctrl.company.app_android)" ng-class="{'menu-items__both-badges' : $ctrl.desktop &amp;&amp; $ctrl.company.app_ios &amp;&amp; $ctrl.company.app_android}">
            <!-- ngIf: ($ctrl.desktop || $ctrl.isIos) && $ctrl.company.app_ios -->
            <!-- ngIf: ($ctrl.desktop || $ctrl.isAndroid) && $ctrl.company.app_android -->
        </div>
        </y-menu-app-links>
        <!-- @endif -->
    </div>
    </y-menu-list>




</y-menu></div></yclients-nav><!-- end ngIf: $root.ySettings.style.show_header !== false && $root.appIsLoaded && !$root.appIsDisabled --><!-- ngIf: !$root.appIsDisabled && $root.appIsLoaded --><div ng-if="!$root.appIsDisabled &amp;&amp; $root.appIsLoaded" layout-fill="layout-fill" class="h100 y-content-wrapper ng-scope"><div class="h100 light-background-color y-content-wrapper y-active-view view-49196772 y-page-prepare ng-scope" style="min-height: 326px;"><div class="h100 y-content-wrapper"><div class="h100 y-content-wrapper scrollable"><div class="container-wrapper container light-background-color h100"><div class="cover"><div ng-style="{'background-image': 'url(' + $root.headerImage + ')'}" class="title-wrapper y-header-toolbar-wrapper" style="background-image: url(&quot;https://w79452.yclients.com/uploads/widget_header/3/31/3114ff3abe58cba_20170828142555.jpeg&quot;);"><yclients-default-subheader class="y-subheader ng-isolate-scope"><div class="center-500 header-breadcrumbs"><div class="center-500 header-breadcrumbs" y-title="$ctrl.getTitle()" y-subtitle="$ctrl.getSubtitle()" y-description="$ctrl.getDescription()"><div class="js-pane-0 center-500 header-breadcrumbs ng-isolate-scope" y-data="ctrl.data"><h1 class="text-color-50 y-headline y-breadcrumbs-color ng-binding">Выбор сотрудника</h1><h2 class="text-color-50 md-subhead"><!-- ngIf: data.subtitle.length --><span ng-if="data.subtitle.length" class="subtitle y-breadcrumbs-color ng-binding ng-scope">Онлайн-запись</span><!-- end ngIf: data.subtitle.length --> <span class="description y-breadcrumbs-color ng-binding">GC barbershop Луцьк</span></h2></div></div></div></yclients-default-subheader><div class="mask y-header-backdrop"></div></div></div><div layout-padding="layout-padding" layout-margin="layout-margin" class="content"><yclients-record-master class="ng-isolate-scope"><y-repeat-booking type="$ctrl.repeatBookingEnum.master" class="ng-isolate-scope"><!-- ngIf: $ctrl.isNeedRepeat === true -->
</y-repeat-booking><!-- ngIf: ::$ctrl.defaultMasterIsAllowed() --><div data-block="master.select-default" ng-click="$ctrl.setDefaultMaster()" ng-if="::$ctrl.defaultMasterIsAllowed()" class="booking__repeat booking__repeat_master booking__repeat_master_no-mb ng-scope"><div class="booking__repeat__block center-500"><div class="booking__repeat__block__top booking__repeat__block__top_default"><!-- ngIf: ySettings.staff_name.genitive --><!-- ngIf: !ySettings.staff_name.genitive --><span ng-if="!ySettings.staff_name.genitive" class="ng-binding ng-scope">Пропустить выбор сотрудника </span><!-- end ngIf: !ySettings.staff_name.genitive --><i class="fa fa-angle-right y-item-arrow"></i></div></div></div><!-- end ngIf: ::$ctrl.defaultMasterIsAllowed() --><!-- ngIf: $ctrl.company.is_charge_active --><div class="center-500 y-masters-list y-masters-list_mt"><!-- ngIf: $ctrl.isLoaded !== true --><!-- ngRepeat: master in $ctrl.masters --><div class="y-content-block y-block-shadow mb y-items-md-content y-master-card ng-scope" ng-repeat="master in $ctrl.masters"><div ng-class="::{
                'y-master-card__item_disabled': !master.bookable
            }" data-block="master.card" data-master-id="209496" data-master-name="Андрій" ng-click="$ctrl.addMaster(master)" ng-disabled="::!master.bookable"><y-master-card idx="$ctrl.idx" master="master" company="$ctrl.company" class="ng-isolate-scope"><div class="y-master-card__frame">

    <i class="warn-color master-selected-icon mdi mdi-account-check ng-hide" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; $ctrl.$rootScope.ySettings.isSerialFlow"></i>


    <i class="y-icon warn-color mdi mdi-close-circle-outline remove-button ng-hide" ng-click="$event.stopPropagation(); $ctrl.resetMaster()" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; !$ctrl.$rootScope.ySettings.isSerialFlow">
    </i>

    <!-- ngIf: $ctrl.isDisableCard !== true && $ctrl.company.is_charge_active === true -->


    <div class="y-master-card__column"></div>
    <div class="y-master-card__column y-master-card__action"></div>

    <div class="y-master-card__cell">
        <div class="y-master-card__column y-master-card__logo"></div>
        <div class="y-master-card__column"></div>

        <div class="y-master-card__row">
            <div class="y-master-card__cell y-master-card__logo">
                <div class="y-master-info-avatar ng-isolate-scope" master="$ctrl.master" is-selected="$ctrl.isThisMaster($ctrl.master)"><i class="mdi mdi-information" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)"></i> <img ng-class="{ 'main-border-color': ctrl.isSelected }" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)" ng-src="https://images.yclients.com/uploads/masters/sm/f/ff/ffe0f4e61aa44eb_20180612121815.png" src="https://images.yclients.com/uploads/masters/sm/f/ff/ffe0f4e61aa44eb_20180612121815.png"></div>
            </div>

            <div class="y-master-card__cell__middle y-master-card__master-namespec">
                <h3 class="ng-binding">Андрій</h3>

                <h4 class="ng-binding">
                    Барбер
                </h4>

                <!-- ngIf: $ctrl.isSlim !== undefined -->
            </div>
        </div>
        <!-- ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
                || $ctrl.master.charge == 'required'
                && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined --><div class="y-master-card__row y-master-card__row_additional-info ng-scope" ng-if="($ctrl.master.rating > 0 &amp;&amp; $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            &amp;&amp; $ctrl.company.is_charge_active) &amp;&amp; $ctrl.isSlim === undefined">
        <div class="y-master-card__cell">
            <!-- ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating --><div class="y-master-card__rating star-container ng-scope ng-isolate-scope" ng-if="::$ctrl.master.rating > 0  &amp;&amp; $ctrl.master.show_rating" count="$ctrl.master.rating"><span class="fa fa-star star-gold" ng-class="count>0 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>1 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>2 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>3 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>4 ? 'star-gold' : 'star-gray'"></span></div><!-- end ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating -->
        </div>

        <div class="y-master-card__cell y-master-card__cell_relative">
            <!-- ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating --><y-reviews-button data-block="$ctrl.master.review-button" ng-if="::$ctrl.master.comments_count > 0 &amp;&amp; $ctrl.master.show_rating" class="master-reviews-link ng-scope ng-isolate-scope" is-charge-active="$ctrl.company.is_charge_active" is-disable-card="$ctrl.isDisableCard" master="$ctrl.master"><div class="y-reviews-button" ng-click="$event.stopPropagation(); $ctrl.goToReviews($ctrl.master);">
            <a class="ng-binding">264 отзыва</a>
        </div>
        </y-reviews-button><!-- end ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating -->
        </div>


    </div><!-- end ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined -->
    </div>

</div>
</y-master-card></div><!-- ngIf: master.bookable && master.seancesAreLoading && $ctrl.isLoaded --><!-- ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><div class="y-master-card__footer y-top-divider ng-scope" ng-if="!master.seancesAreLoading &amp;&amp; master.seances.length &amp;&amp; $ctrl.isPossibleDatetime(master)"><div class="y-master-card__session ng-binding">Ближайшие сеансы 7 сентября</div><div class="master-time-slot-wrapper"><!-- ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">12:45</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">13:15</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">13:45</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">14:15</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">14:45</a><!-- end ngRepeat: seance in ::master.seances --></div></div><!-- end ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><!-- ngIf: !master.seancesAreLoading && !$ctrl.isEmptyDate(master) && master.bookable && !$ctrl.isPossibleDatetime(master) --></div><!-- end ngRepeat: master in $ctrl.masters --><div class="y-content-block y-block-shadow mb y-items-md-content y-master-card ng-scope" ng-repeat="master in $ctrl.masters"><div ng-class="::{
                'y-master-card__item_disabled': !master.bookable
            }" data-block="master.card" data-master-id="224188" data-master-name="Олег" ng-click="$ctrl.addMaster(master)" ng-disabled="::!master.bookable"><y-master-card idx="$ctrl.idx" master="master" company="$ctrl.company" class="ng-isolate-scope"><div class="y-master-card__frame">

    <i class="warn-color master-selected-icon mdi mdi-account-check ng-hide" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; $ctrl.$rootScope.ySettings.isSerialFlow"></i>


    <i class="y-icon warn-color mdi mdi-close-circle-outline remove-button ng-hide" ng-click="$event.stopPropagation(); $ctrl.resetMaster()" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; !$ctrl.$rootScope.ySettings.isSerialFlow">
    </i>

    <!-- ngIf: $ctrl.isDisableCard !== true && $ctrl.company.is_charge_active === true -->


    <div class="y-master-card__column"></div>
    <div class="y-master-card__column y-master-card__action"></div>

    <div class="y-master-card__cell">
        <div class="y-master-card__column y-master-card__logo"></div>
        <div class="y-master-card__column"></div>

        <div class="y-master-card__row">
            <div class="y-master-card__cell y-master-card__logo">
                <div class="y-master-info-avatar ng-isolate-scope" master="$ctrl.master" is-selected="$ctrl.isThisMaster($ctrl.master)"><i class="mdi mdi-information" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)"></i> <img ng-class="{ 'main-border-color': ctrl.isSelected }" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)" ng-src="https://images.yclients.com/uploads/masters/sm/2/29/29ab546cb4f8ccb_20180612121908.png" src="https://images.yclients.com/uploads/masters/sm/2/29/29ab546cb4f8ccb_20180612121908.png"></div>
            </div>

            <div class="y-master-card__cell__middle y-master-card__master-namespec">
                <h3 class="ng-binding">Олег</h3>

                <h4 class="ng-binding">
                    барбер
                </h4>

                <!-- ngIf: $ctrl.isSlim !== undefined -->
            </div>
        </div>
        <!-- ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
                || $ctrl.master.charge == 'required'
                && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined --><div class="y-master-card__row y-master-card__row_additional-info ng-scope" ng-if="($ctrl.master.rating > 0 &amp;&amp; $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            &amp;&amp; $ctrl.company.is_charge_active) &amp;&amp; $ctrl.isSlim === undefined">
        <div class="y-master-card__cell">
            <!-- ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating --><div class="y-master-card__rating star-container ng-scope ng-isolate-scope" ng-if="::$ctrl.master.rating > 0  &amp;&amp; $ctrl.master.show_rating" count="$ctrl.master.rating"><span class="fa fa-star star-gold" ng-class="count>0 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>1 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>2 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>3 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>4 ? 'star-gold' : 'star-gray'"></span></div><!-- end ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating -->
        </div>

        <div class="y-master-card__cell y-master-card__cell_relative">
            <!-- ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating --><y-reviews-button data-block="$ctrl.master.review-button" ng-if="::$ctrl.master.comments_count > 0 &amp;&amp; $ctrl.master.show_rating" class="master-reviews-link ng-scope ng-isolate-scope" is-charge-active="$ctrl.company.is_charge_active" is-disable-card="$ctrl.isDisableCard" master="$ctrl.master"><div class="y-reviews-button" ng-click="$event.stopPropagation(); $ctrl.goToReviews($ctrl.master);">
            <a class="ng-binding">321 отзыв</a>
        </div>
        </y-reviews-button><!-- end ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating -->
        </div>


    </div><!-- end ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined -->
    </div>

</div>
</y-master-card></div><!-- ngIf: master.bookable && master.seancesAreLoading && $ctrl.isLoaded --><!-- ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><div class="y-master-card__footer y-top-divider ng-scope" ng-if="!master.seancesAreLoading &amp;&amp; master.seances.length &amp;&amp; $ctrl.isPossibleDatetime(master)"><div class="y-master-card__session ng-binding">Ближайшие сеансы 5 сентября</div><div class="master-time-slot-wrapper"><!-- ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">17:45</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">20:30</a><!-- end ngRepeat: seance in ::master.seances --></div></div><!-- end ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><!-- ngIf: !master.seancesAreLoading && !$ctrl.isEmptyDate(master) && master.bookable && !$ctrl.isPossibleDatetime(master) --></div><!-- end ngRepeat: master in $ctrl.masters --><div class="y-content-block y-block-shadow mb y-items-md-content y-master-card ng-scope" ng-repeat="master in $ctrl.masters"><div ng-class="::{
                'y-master-card__item_disabled': !master.bookable
            }" data-block="master.card" data-master-id="235594" data-master-name="Дженьк" ng-click="$ctrl.addMaster(master)" ng-disabled="::!master.bookable"><y-master-card idx="$ctrl.idx" master="master" company="$ctrl.company" class="ng-isolate-scope"><div class="y-master-card__frame">

    <i class="warn-color master-selected-icon mdi mdi-account-check ng-hide" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; $ctrl.$rootScope.ySettings.isSerialFlow"></i>


    <i class="y-icon warn-color mdi mdi-close-circle-outline remove-button ng-hide" ng-click="$event.stopPropagation(); $ctrl.resetMaster()" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; !$ctrl.$rootScope.ySettings.isSerialFlow">
    </i>

    <!-- ngIf: $ctrl.isDisableCard !== true && $ctrl.company.is_charge_active === true -->


    <div class="y-master-card__column"></div>
    <div class="y-master-card__column y-master-card__action"></div>

    <div class="y-master-card__cell">
        <div class="y-master-card__column y-master-card__logo"></div>
        <div class="y-master-card__column"></div>

        <div class="y-master-card__row">
            <div class="y-master-card__cell y-master-card__logo">
                <div class="y-master-info-avatar ng-isolate-scope" master="$ctrl.master" is-selected="$ctrl.isThisMaster($ctrl.master)"><i class="mdi mdi-information" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)"></i> <img ng-class="{ 'main-border-color': ctrl.isSelected }" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)" ng-src="https://images.yclients.com/uploads/masters/sm/b/b5/b50ec907872a552_20180612122010.png" src="https://images.yclients.com/uploads/masters/sm/b/b5/b50ec907872a552_20180612122010.png"></div>
            </div>

            <div class="y-master-card__cell__middle y-master-card__master-namespec">
                <h3 class="ng-binding">Дженьк</h3>

                <h4 class="ng-binding">
                    Барбер
                </h4>

                <!-- ngIf: $ctrl.isSlim !== undefined -->
            </div>
        </div>
        <!-- ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
                || $ctrl.master.charge == 'required'
                && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined --><div class="y-master-card__row y-master-card__row_additional-info ng-scope" ng-if="($ctrl.master.rating > 0 &amp;&amp; $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            &amp;&amp; $ctrl.company.is_charge_active) &amp;&amp; $ctrl.isSlim === undefined">
        <div class="y-master-card__cell">
            <!-- ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating --><div class="y-master-card__rating star-container ng-scope ng-isolate-scope" ng-if="::$ctrl.master.rating > 0  &amp;&amp; $ctrl.master.show_rating" count="$ctrl.master.rating"><span class="fa fa-star star-gold" ng-class="count>0 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>1 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>2 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>3 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>4 ? 'star-gold' : 'star-gray'"></span></div><!-- end ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating -->
        </div>

        <div class="y-master-card__cell y-master-card__cell_relative">
            <!-- ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating --><y-reviews-button data-block="$ctrl.master.review-button" ng-if="::$ctrl.master.comments_count > 0 &amp;&amp; $ctrl.master.show_rating" class="master-reviews-link ng-scope ng-isolate-scope" is-charge-active="$ctrl.company.is_charge_active" is-disable-card="$ctrl.isDisableCard" master="$ctrl.master"><div class="y-reviews-button" ng-click="$event.stopPropagation(); $ctrl.goToReviews($ctrl.master);">
            <a class="ng-binding">363 отзыва</a>
        </div>
        </y-reviews-button><!-- end ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating -->
        </div>


    </div><!-- end ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined -->
    </div>

</div>
</y-master-card></div><!-- ngIf: master.bookable && master.seancesAreLoading && $ctrl.isLoaded --><!-- ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><div class="y-master-card__footer y-top-divider ng-scope" ng-if="!master.seancesAreLoading &amp;&amp; master.seances.length &amp;&amp; $ctrl.isPossibleDatetime(master)"><div class="y-master-card__session ng-binding">Ближайшие сеансы 5 сентября</div><div class="master-time-slot-wrapper"><!-- ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">13:30</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">14:00</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">14:30</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">15:00</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">15:30</a><!-- end ngRepeat: seance in ::master.seances --></div></div><!-- end ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><!-- ngIf: !master.seancesAreLoading && !$ctrl.isEmptyDate(master) && master.bookable && !$ctrl.isPossibleDatetime(master) --></div><!-- end ngRepeat: master in $ctrl.masters --><div class="y-content-block y-block-shadow mb y-items-md-content y-master-card ng-scope" ng-repeat="master in $ctrl.masters"><div ng-class="::{
                'y-master-card__item_disabled': !master.bookable
            }" data-block="master.card" data-master-id="261583" data-master-name="Богдан" ng-click="$ctrl.addMaster(master)" ng-disabled="::!master.bookable"><y-master-card idx="$ctrl.idx" master="master" company="$ctrl.company" class="ng-isolate-scope"><div class="y-master-card__frame">

    <i class="warn-color master-selected-icon mdi mdi-account-check ng-hide" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; $ctrl.$rootScope.ySettings.isSerialFlow"></i>


    <i class="y-icon warn-color mdi mdi-close-circle-outline remove-button ng-hide" ng-click="$event.stopPropagation(); $ctrl.resetMaster()" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; !$ctrl.$rootScope.ySettings.isSerialFlow">
    </i>

    <!-- ngIf: $ctrl.isDisableCard !== true && $ctrl.company.is_charge_active === true -->


    <div class="y-master-card__column"></div>
    <div class="y-master-card__column y-master-card__action"></div>

    <div class="y-master-card__cell">
        <div class="y-master-card__column y-master-card__logo"></div>
        <div class="y-master-card__column"></div>

        <div class="y-master-card__row">
            <div class="y-master-card__cell y-master-card__logo">
                <div class="y-master-info-avatar ng-isolate-scope" master="$ctrl.master" is-selected="$ctrl.isThisMaster($ctrl.master)"><i class="mdi mdi-information" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)"></i> <img ng-class="{ 'main-border-color': ctrl.isSelected }" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)" ng-src="https://images.yclients.com/uploads/masters/sm/4/4a/4ab937e99f1d27c_20180612122146.png" src="https://images.yclients.com/uploads/masters/sm/4/4a/4ab937e99f1d27c_20180612122146.png"></div>
            </div>

            <div class="y-master-card__cell__middle y-master-card__master-namespec">
                <h3 class="ng-binding">Богдан</h3>

                <h4 class="ng-binding">
                    Барбер
                </h4>

                <!-- ngIf: $ctrl.isSlim !== undefined -->
            </div>
        </div>
        <!-- ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
                || $ctrl.master.charge == 'required'
                && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined --><div class="y-master-card__row y-master-card__row_additional-info ng-scope" ng-if="($ctrl.master.rating > 0 &amp;&amp; $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            &amp;&amp; $ctrl.company.is_charge_active) &amp;&amp; $ctrl.isSlim === undefined">
        <div class="y-master-card__cell">
            <!-- ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating --><div class="y-master-card__rating star-container ng-scope ng-isolate-scope" ng-if="::$ctrl.master.rating > 0  &amp;&amp; $ctrl.master.show_rating" count="$ctrl.master.rating"><span class="fa fa-star star-gold" ng-class="count>0 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>1 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>2 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>3 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>4 ? 'star-gold' : 'star-gray'"></span></div><!-- end ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating -->
        </div>

        <div class="y-master-card__cell y-master-card__cell_relative">
            <!-- ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating --><y-reviews-button data-block="$ctrl.master.review-button" ng-if="::$ctrl.master.comments_count > 0 &amp;&amp; $ctrl.master.show_rating" class="master-reviews-link ng-scope ng-isolate-scope" is-charge-active="$ctrl.company.is_charge_active" is-disable-card="$ctrl.isDisableCard" master="$ctrl.master"><div class="y-reviews-button" ng-click="$event.stopPropagation(); $ctrl.goToReviews($ctrl.master);">
            <a class="ng-binding">190 отзывов</a>
        </div>
        </y-reviews-button><!-- end ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating -->
        </div>


    </div><!-- end ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined -->
    </div>

</div>
</y-master-card></div><!-- ngIf: master.bookable && master.seancesAreLoading && $ctrl.isLoaded --><!-- ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><div class="y-master-card__footer y-top-divider ng-scope" ng-if="!master.seancesAreLoading &amp;&amp; master.seances.length &amp;&amp; $ctrl.isPossibleDatetime(master)"><div class="y-master-card__session ng-binding">Ближайшие сеансы 5 сентября</div><div class="master-time-slot-wrapper"><!-- ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">13:15</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">13:45</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">15:00</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">15:30</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">16:00</a><!-- end ngRepeat: seance in ::master.seances --></div></div><!-- end ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><!-- ngIf: !master.seancesAreLoading && !$ctrl.isEmptyDate(master) && master.bookable && !$ctrl.isPossibleDatetime(master) --></div><!-- end ngRepeat: master in $ctrl.masters --><div class="y-content-block y-block-shadow mb y-items-md-content y-master-card ng-scope" ng-repeat="master in $ctrl.masters"><div ng-class="::{
                'y-master-card__item_disabled': !master.bookable
            }" data-block="master.card" data-master-id="313651" data-master-name="Давид" ng-click="$ctrl.addMaster(master)" ng-disabled="::!master.bookable"><y-master-card idx="$ctrl.idx" master="master" company="$ctrl.company" class="ng-isolate-scope"><div class="y-master-card__frame">

    <i class="warn-color master-selected-icon mdi mdi-account-check ng-hide" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; $ctrl.$rootScope.ySettings.isSerialFlow"></i>


    <i class="y-icon warn-color mdi mdi-close-circle-outline remove-button ng-hide" ng-click="$event.stopPropagation(); $ctrl.resetMaster()" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; !$ctrl.$rootScope.ySettings.isSerialFlow">
    </i>

    <!-- ngIf: $ctrl.isDisableCard !== true && $ctrl.company.is_charge_active === true -->


    <div class="y-master-card__column"></div>
    <div class="y-master-card__column y-master-card__action"></div>

    <div class="y-master-card__cell">
        <div class="y-master-card__column y-master-card__logo"></div>
        <div class="y-master-card__column"></div>

        <div class="y-master-card__row">
            <div class="y-master-card__cell y-master-card__logo">
                <div class="y-master-info-avatar ng-isolate-scope" master="$ctrl.master" is-selected="$ctrl.isThisMaster($ctrl.master)"><i class="mdi mdi-information" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)"></i> <img ng-class="{ 'main-border-color': ctrl.isSelected }" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)" ng-src="https://images.yclients.com/uploads/masters/sm/2/23/23659e70ee4b1e3_20180612122051.png" src="https://images.yclients.com/uploads/masters/sm/2/23/23659e70ee4b1e3_20180612122051.png"></div>
            </div>

            <div class="y-master-card__cell__middle y-master-card__master-namespec">
                <h3 class="ng-binding">Давид</h3>

                <h4 class="ng-binding">
                    Барбер
                </h4>

                <!-- ngIf: $ctrl.isSlim !== undefined -->
            </div>
        </div>
        <!-- ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
                || $ctrl.master.charge == 'required'
                && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined --><div class="y-master-card__row y-master-card__row_additional-info ng-scope" ng-if="($ctrl.master.rating > 0 &amp;&amp; $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            &amp;&amp; $ctrl.company.is_charge_active) &amp;&amp; $ctrl.isSlim === undefined">
        <div class="y-master-card__cell">
            <!-- ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating --><div class="y-master-card__rating star-container ng-scope ng-isolate-scope" ng-if="::$ctrl.master.rating > 0  &amp;&amp; $ctrl.master.show_rating" count="$ctrl.master.rating"><span class="fa fa-star star-gold" ng-class="count>0 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>1 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>2 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>3 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>4 ? 'star-gold' : 'star-gray'"></span></div><!-- end ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating -->
        </div>

        <div class="y-master-card__cell y-master-card__cell_relative">
            <!-- ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating --><y-reviews-button data-block="$ctrl.master.review-button" ng-if="::$ctrl.master.comments_count > 0 &amp;&amp; $ctrl.master.show_rating" class="master-reviews-link ng-scope ng-isolate-scope" is-charge-active="$ctrl.company.is_charge_active" is-disable-card="$ctrl.isDisableCard" master="$ctrl.master"><div class="y-reviews-button" ng-click="$event.stopPropagation(); $ctrl.goToReviews($ctrl.master);">
            <a class="ng-binding">126 отзывов</a>
        </div>
        </y-reviews-button><!-- end ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating -->
        </div>


    </div><!-- end ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined -->
    </div>

</div>
</y-master-card></div><!-- ngIf: master.bookable && master.seancesAreLoading && $ctrl.isLoaded --><!-- ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><div class="y-master-card__footer y-top-divider ng-scope" ng-if="!master.seancesAreLoading &amp;&amp; master.seances.length &amp;&amp; $ctrl.isPossibleDatetime(master)"><div class="y-master-card__session ng-binding">Ближайшие сеансы 5 сентября</div><div class="master-time-slot-wrapper"><!-- ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">13:15</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">13:45</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">14:15</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">14:45</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">15:45</a><!-- end ngRepeat: seance in ::master.seances --></div></div><!-- end ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><!-- ngIf: !master.seancesAreLoading && !$ctrl.isEmptyDate(master) && master.bookable && !$ctrl.isPossibleDatetime(master) --></div><!-- end ngRepeat: master in $ctrl.masters --><div class="y-content-block y-block-shadow mb y-items-md-content y-master-card ng-scope" ng-repeat="master in $ctrl.masters"><div ng-class="::{
                'y-master-card__item_disabled': !master.bookable
            }" data-block="master.card" data-master-id="317199" data-master-name="Валентин" ng-click="$ctrl.addMaster(master)" ng-disabled="::!master.bookable"><y-master-card idx="$ctrl.idx" master="master" company="$ctrl.company" class="ng-isolate-scope"><div class="y-master-card__frame">

    <i class="warn-color master-selected-icon mdi mdi-account-check ng-hide" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; $ctrl.$rootScope.ySettings.isSerialFlow"></i>


    <i class="y-icon warn-color mdi mdi-close-circle-outline remove-button ng-hide" ng-click="$event.stopPropagation(); $ctrl.resetMaster()" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; !$ctrl.$rootScope.ySettings.isSerialFlow">
    </i>

    <!-- ngIf: $ctrl.isDisableCard !== true && $ctrl.company.is_charge_active === true -->


    <div class="y-master-card__column"></div>
    <div class="y-master-card__column y-master-card__action"></div>

    <div class="y-master-card__cell">
        <div class="y-master-card__column y-master-card__logo"></div>
        <div class="y-master-card__column"></div>

        <div class="y-master-card__row">
            <div class="y-master-card__cell y-master-card__logo">
                <div class="y-master-info-avatar ng-isolate-scope" master="$ctrl.master" is-selected="$ctrl.isThisMaster($ctrl.master)"><i class="mdi mdi-information" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)"></i> <img ng-class="{ 'main-border-color': ctrl.isSelected }" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)" ng-src="https://images.yclients.com/uploads/masters/sm/f/fd/fde19639b4453e4_20180612122216.png" src="https://images.yclients.com/uploads/masters/sm/f/fd/fde19639b4453e4_20180612122216.png"></div>
            </div>

            <div class="y-master-card__cell__middle y-master-card__master-namespec">
                <h3 class="ng-binding">Валентин</h3>

                <h4 class="ng-binding">
                    Барбер
                </h4>

                <!-- ngIf: $ctrl.isSlim !== undefined -->
            </div>
        </div>
        <!-- ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
                || $ctrl.master.charge == 'required'
                && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined --><div class="y-master-card__row y-master-card__row_additional-info ng-scope" ng-if="($ctrl.master.rating > 0 &amp;&amp; $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            &amp;&amp; $ctrl.company.is_charge_active) &amp;&amp; $ctrl.isSlim === undefined">
        <div class="y-master-card__cell">
            <!-- ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating --><div class="y-master-card__rating star-container ng-scope ng-isolate-scope" ng-if="::$ctrl.master.rating > 0  &amp;&amp; $ctrl.master.show_rating" count="$ctrl.master.rating"><span class="fa fa-star star-gold" ng-class="count>0 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>1 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>2 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>3 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>4 ? 'star-gold' : 'star-gray'"></span></div><!-- end ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating -->
        </div>

        <div class="y-master-card__cell y-master-card__cell_relative">
            <!-- ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating --><y-reviews-button data-block="$ctrl.master.review-button" ng-if="::$ctrl.master.comments_count > 0 &amp;&amp; $ctrl.master.show_rating" class="master-reviews-link ng-scope ng-isolate-scope" is-charge-active="$ctrl.company.is_charge_active" is-disable-card="$ctrl.isDisableCard" master="$ctrl.master"><div class="y-reviews-button" ng-click="$event.stopPropagation(); $ctrl.goToReviews($ctrl.master);">
            <a class="ng-binding">113 отзывов</a>
        </div>
        </y-reviews-button><!-- end ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating -->
        </div>


    </div><!-- end ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined -->
    </div>

</div>
</y-master-card></div><!-- ngIf: master.bookable && master.seancesAreLoading && $ctrl.isLoaded --><!-- ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><div class="y-master-card__footer y-top-divider ng-scope" ng-if="!master.seancesAreLoading &amp;&amp; master.seances.length &amp;&amp; $ctrl.isPossibleDatetime(master)"><div class="y-master-card__session ng-binding">Ближайшие сеансы 5 сентября</div><div class="master-time-slot-wrapper"><!-- ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">13:45</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">14:15</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">14:45</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">15:15</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">15:45</a><!-- end ngRepeat: seance in ::master.seances --></div></div><!-- end ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><!-- ngIf: !master.seancesAreLoading && !$ctrl.isEmptyDate(master) && master.bookable && !$ctrl.isPossibleDatetime(master) --></div><!-- end ngRepeat: master in $ctrl.masters --><div class="y-content-block y-block-shadow mb y-items-md-content y-master-card ng-scope" ng-repeat="master in $ctrl.masters"><div ng-class="::{
                'y-master-card__item_disabled': !master.bookable
            }" data-block="master.card" data-master-id="329591" data-master-name="Арсен" ng-click="$ctrl.addMaster(master)" ng-disabled="::!master.bookable"><y-master-card idx="$ctrl.idx" master="master" company="$ctrl.company" class="ng-isolate-scope"><div class="y-master-card__frame">

    <i class="warn-color master-selected-icon mdi mdi-account-check ng-hide" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; $ctrl.$rootScope.ySettings.isSerialFlow"></i>


    <i class="y-icon warn-color mdi mdi-close-circle-outline remove-button ng-hide" ng-click="$event.stopPropagation(); $ctrl.resetMaster()" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; !$ctrl.$rootScope.ySettings.isSerialFlow">
    </i>

    <!-- ngIf: $ctrl.isDisableCard !== true && $ctrl.company.is_charge_active === true -->


    <div class="y-master-card__column"></div>
    <div class="y-master-card__column y-master-card__action"></div>

    <div class="y-master-card__cell">
        <div class="y-master-card__column y-master-card__logo"></div>
        <div class="y-master-card__column"></div>

        <div class="y-master-card__row">
            <div class="y-master-card__cell y-master-card__logo">
                <div class="y-master-info-avatar ng-isolate-scope" master="$ctrl.master" is-selected="$ctrl.isThisMaster($ctrl.master)"><i class="mdi mdi-information" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)"></i> <img ng-class="{ 'main-border-color': ctrl.isSelected }" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)" ng-src="https://images.yclients.com/uploads/masters/sm/e/e6/e63a2bc50b4700d_20180619111049.png" src="https://images.yclients.com/uploads/masters/sm/e/e6/e63a2bc50b4700d_20180619111049.png"></div>
            </div>

            <div class="y-master-card__cell__middle y-master-card__master-namespec">
                <h3 class="ng-binding">Арсен</h3>

                <h4 class="ng-binding">
                    Барбер
                </h4>

                <!-- ngIf: $ctrl.isSlim !== undefined -->
            </div>
        </div>
        <!-- ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
                || $ctrl.master.charge == 'required'
                && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined --><div class="y-master-card__row y-master-card__row_additional-info ng-scope" ng-if="($ctrl.master.rating > 0 &amp;&amp; $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            &amp;&amp; $ctrl.company.is_charge_active) &amp;&amp; $ctrl.isSlim === undefined">
        <div class="y-master-card__cell">
            <!-- ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating --><div class="y-master-card__rating star-container ng-scope ng-isolate-scope" ng-if="::$ctrl.master.rating > 0  &amp;&amp; $ctrl.master.show_rating" count="$ctrl.master.rating"><span class="fa fa-star star-gold" ng-class="count>0 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>1 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>2 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>3 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>4 ? 'star-gold' : 'star-gray'"></span></div><!-- end ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating -->
        </div>

        <div class="y-master-card__cell y-master-card__cell_relative">
            <!-- ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating --><y-reviews-button data-block="$ctrl.master.review-button" ng-if="::$ctrl.master.comments_count > 0 &amp;&amp; $ctrl.master.show_rating" class="master-reviews-link ng-scope ng-isolate-scope" is-charge-active="$ctrl.company.is_charge_active" is-disable-card="$ctrl.isDisableCard" master="$ctrl.master"><div class="y-reviews-button" ng-click="$event.stopPropagation(); $ctrl.goToReviews($ctrl.master);">
            <a class="ng-binding">54 отзыва</a>
        </div>
        </y-reviews-button><!-- end ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating -->
        </div>


    </div><!-- end ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined -->
    </div>

</div>
</y-master-card></div><!-- ngIf: master.bookable && master.seancesAreLoading && $ctrl.isLoaded --><!-- ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><div class="y-master-card__footer y-top-divider ng-scope" ng-if="!master.seancesAreLoading &amp;&amp; master.seances.length &amp;&amp; $ctrl.isPossibleDatetime(master)"><div class="y-master-card__session ng-binding">Ближайшие сеансы 5 сентября</div><div class="master-time-slot-wrapper"><!-- ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">13:15</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">13:45</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">14:15</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">14:45</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">15:15</a><!-- end ngRepeat: seance in ::master.seances --></div></div><!-- end ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><!-- ngIf: !master.seancesAreLoading && !$ctrl.isEmptyDate(master) && master.bookable && !$ctrl.isPossibleDatetime(master) --></div><!-- end ngRepeat: master in $ctrl.masters --><div class="y-content-block y-block-shadow mb y-items-md-content y-master-card ng-scope" ng-repeat="master in $ctrl.masters"><div ng-class="::{
                'y-master-card__item_disabled': !master.bookable
            }" data-block="master.card" data-master-id="343026" data-master-name="Анастас" ng-click="$ctrl.addMaster(master)" ng-disabled="::!master.bookable"><y-master-card idx="$ctrl.idx" master="master" company="$ctrl.company" class="ng-isolate-scope"><div class="y-master-card__frame">

    <i class="warn-color master-selected-icon mdi mdi-account-check ng-hide" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; $ctrl.$rootScope.ySettings.isSerialFlow"></i>


    <i class="y-icon warn-color mdi mdi-close-circle-outline remove-button ng-hide" ng-click="$event.stopPropagation(); $ctrl.resetMaster()" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; !$ctrl.$rootScope.ySettings.isSerialFlow">
    </i>

    <!-- ngIf: $ctrl.isDisableCard !== true && $ctrl.company.is_charge_active === true -->


    <div class="y-master-card__column"></div>
    <div class="y-master-card__column y-master-card__action"></div>

    <div class="y-master-card__cell">
        <div class="y-master-card__column y-master-card__logo"></div>
        <div class="y-master-card__column"></div>

        <div class="y-master-card__row">
            <div class="y-master-card__cell y-master-card__logo">
                <div class="y-master-info-avatar ng-isolate-scope" master="$ctrl.master" is-selected="$ctrl.isThisMaster($ctrl.master)"><i class="mdi mdi-information" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)"></i> <img ng-class="{ 'main-border-color': ctrl.isSelected }" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)" ng-src="https://images.yclients.com/uploads/masters/sm/0/0f/0f350180be75ffc_20180626134456.png" src="https://images.yclients.com/uploads/masters/sm/0/0f/0f350180be75ffc_20180626134456.png"></div>
            </div>

            <div class="y-master-card__cell__middle y-master-card__master-namespec">
                <h3 class="ng-binding">Анастас</h3>

                <h4 class="ng-binding">
                    Барбер
                </h4>

                <!-- ngIf: $ctrl.isSlim !== undefined -->
            </div>
        </div>
        <!-- ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
                || $ctrl.master.charge == 'required'
                && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined --><div class="y-master-card__row y-master-card__row_additional-info ng-scope" ng-if="($ctrl.master.rating > 0 &amp;&amp; $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            &amp;&amp; $ctrl.company.is_charge_active) &amp;&amp; $ctrl.isSlim === undefined">
        <div class="y-master-card__cell">
            <!-- ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating --><div class="y-master-card__rating star-container ng-scope ng-isolate-scope" ng-if="::$ctrl.master.rating > 0  &amp;&amp; $ctrl.master.show_rating" count="$ctrl.master.rating"><span class="fa fa-star star-gold" ng-class="count>0 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>1 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>2 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>3 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>4 ? 'star-gold' : 'star-gray'"></span></div><!-- end ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating -->
        </div>

        <div class="y-master-card__cell y-master-card__cell_relative">
            <!-- ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating --><y-reviews-button data-block="$ctrl.master.review-button" ng-if="::$ctrl.master.comments_count > 0 &amp;&amp; $ctrl.master.show_rating" class="master-reviews-link ng-scope ng-isolate-scope" is-charge-active="$ctrl.company.is_charge_active" is-disable-card="$ctrl.isDisableCard" master="$ctrl.master"><div class="y-reviews-button" ng-click="$event.stopPropagation(); $ctrl.goToReviews($ctrl.master);">
            <a class="ng-binding">36 отзывов</a>
        </div>
        </y-reviews-button><!-- end ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating -->
        </div>


    </div><!-- end ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined -->
    </div>

</div>
</y-master-card></div><!-- ngIf: master.bookable && master.seancesAreLoading && $ctrl.isLoaded --><!-- ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><div class="y-master-card__footer y-top-divider ng-scope" ng-if="!master.seancesAreLoading &amp;&amp; master.seances.length &amp;&amp; $ctrl.isPossibleDatetime(master)"><div class="y-master-card__session ng-binding">Ближайшие сеансы 6 сентября</div><div class="master-time-slot-wrapper"><!-- ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">10:00</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">10:30</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">11:00</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">11:30</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">12:00</a><!-- end ngRepeat: seance in ::master.seances --></div></div><!-- end ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><!-- ngIf: !master.seancesAreLoading && !$ctrl.isEmptyDate(master) && master.bookable && !$ctrl.isPossibleDatetime(master) --></div><!-- end ngRepeat: master in $ctrl.masters --><div class="y-content-block y-block-shadow mb y-items-md-content y-master-card ng-scope" ng-repeat="master in $ctrl.masters"><div ng-class="::{
                'y-master-card__item_disabled': !master.bookable
            }" data-block="master.card" data-master-id="314066" data-master-name="Матвій" ng-click="$ctrl.addMaster(master)" ng-disabled="::!master.bookable"><y-master-card idx="$ctrl.idx" master="master" company="$ctrl.company" class="ng-isolate-scope"><div class="y-master-card__frame">

    <i class="warn-color master-selected-icon mdi mdi-account-check ng-hide" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; $ctrl.$rootScope.ySettings.isSerialFlow"></i>


    <i class="y-icon warn-color mdi mdi-close-circle-outline remove-button ng-hide" ng-click="$event.stopPropagation(); $ctrl.resetMaster()" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; !$ctrl.$rootScope.ySettings.isSerialFlow">
    </i>

    <!-- ngIf: $ctrl.isDisableCard !== true && $ctrl.company.is_charge_active === true -->


    <div class="y-master-card__column"></div>
    <div class="y-master-card__column y-master-card__action"></div>

    <div class="y-master-card__cell">
        <div class="y-master-card__column y-master-card__logo"></div>
        <div class="y-master-card__column"></div>

        <div class="y-master-card__row">
            <div class="y-master-card__cell y-master-card__logo">
                <div class="y-master-info-avatar ng-isolate-scope" master="$ctrl.master" is-selected="$ctrl.isThisMaster($ctrl.master)"><i class="mdi mdi-information" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)"></i> <img ng-class="{ 'main-border-color': ctrl.isSelected }" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)" ng-src="https://images.yclients.com/uploads/masters/sm/8/87/87ad00ada803022_20180830100606.png" src="https://images.yclients.com/uploads/masters/sm/8/87/87ad00ada803022_20180830100606.png"></div>
            </div>

            <div class="y-master-card__cell__middle y-master-card__master-namespec">
                <h3 class="ng-binding">Матвій</h3>

                <h4 class="ng-binding">
                    Барбер
                </h4>

                <!-- ngIf: $ctrl.isSlim !== undefined -->
            </div>
        </div>
        <!-- ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
                || $ctrl.master.charge == 'required'
                && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined --><div class="y-master-card__row y-master-card__row_additional-info ng-scope" ng-if="($ctrl.master.rating > 0 &amp;&amp; $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            &amp;&amp; $ctrl.company.is_charge_active) &amp;&amp; $ctrl.isSlim === undefined">
        <div class="y-master-card__cell">
            <!-- ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating --><div class="y-master-card__rating star-container ng-scope ng-isolate-scope" ng-if="::$ctrl.master.rating > 0  &amp;&amp; $ctrl.master.show_rating" count="$ctrl.master.rating"><span class="fa fa-star star-gold" ng-class="count>0 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>1 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>2 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>3 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>4 ? 'star-gold' : 'star-gray'"></span></div><!-- end ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating -->
        </div>

        <div class="y-master-card__cell y-master-card__cell_relative">
            <!-- ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating --><y-reviews-button data-block="$ctrl.master.review-button" ng-if="::$ctrl.master.comments_count > 0 &amp;&amp; $ctrl.master.show_rating" class="master-reviews-link ng-scope ng-isolate-scope" is-charge-active="$ctrl.company.is_charge_active" is-disable-card="$ctrl.isDisableCard" master="$ctrl.master"><div class="y-reviews-button" ng-click="$event.stopPropagation(); $ctrl.goToReviews($ctrl.master);">
            <a class="ng-binding">16 отзывов</a>
        </div>
        </y-reviews-button><!-- end ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating -->
        </div>


    </div><!-- end ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined -->
    </div>

</div>
</y-master-card></div><!-- ngIf: master.bookable && master.seancesAreLoading && $ctrl.isLoaded --><!-- ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><div class="y-master-card__footer y-top-divider ng-scope" ng-if="!master.seancesAreLoading &amp;&amp; master.seances.length &amp;&amp; $ctrl.isPossibleDatetime(master)"><div class="y-master-card__session ng-binding">Ближайшие сеансы 9 сентября</div><div class="master-time-slot-wrapper"><!-- ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">10:00</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">10:30</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">11:00</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">11:30</a><!-- end ngRepeat: seance in ::master.seances --><a class="warn-color-dark master-time-slot ng-binding ng-scope" ng-class="::{'master-time-slot_selected': $ctrl.isThisDate(master.seance_date, seance.time, master)}" ng-click="$ctrl.setDateAndTime(master.seance_date, seance.time, master)" ng-repeat="seance in ::master.seances">12:00</a><!-- end ngRepeat: seance in ::master.seances --></div></div><!-- end ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><!-- ngIf: !master.seancesAreLoading && !$ctrl.isEmptyDate(master) && master.bookable && !$ctrl.isPossibleDatetime(master) --></div><!-- end ngRepeat: master in $ctrl.masters --><div class="y-content-block y-block-shadow mb y-items-md-content y-master-card ng-scope" ng-repeat="master in $ctrl.masters"><div ng-class="::{
                'y-master-card__item_disabled': !master.bookable
            }" data-block="master.card" data-master-id="312821" data-master-name="Павло" ng-click="$ctrl.addMaster(master)" ng-disabled="::!master.bookable" disabled="disabled" class="y-master-card__item_disabled"><y-master-card idx="$ctrl.idx" master="master" company="$ctrl.company" class="ng-isolate-scope"><div class="y-master-card__frame">

    <i class="warn-color master-selected-icon mdi mdi-account-check ng-hide" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; $ctrl.$rootScope.ySettings.isSerialFlow"></i>


    <i class="y-icon warn-color mdi mdi-close-circle-outline remove-button ng-hide" ng-click="$event.stopPropagation(); $ctrl.resetMaster()" ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; !$ctrl.$rootScope.ySettings.isSerialFlow">
    </i>

    <!-- ngIf: $ctrl.isDisableCard !== true && $ctrl.company.is_charge_active === true -->


    <div class="y-master-card__column"></div>
    <div class="y-master-card__column y-master-card__action"></div>

    <div class="y-master-card__cell">
        <div class="y-master-card__column y-master-card__logo"></div>
        <div class="y-master-card__column"></div>

        <div class="y-master-card__row">
            <div class="y-master-card__cell y-master-card__logo">
                <div class="y-master-info-avatar ng-isolate-scope" master="$ctrl.master" is-selected="$ctrl.isThisMaster($ctrl.master)"><i class="mdi mdi-information" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)"></i> <img ng-class="{ 'main-border-color': ctrl.isSelected }" ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)" ng-src="https://images.yclients.com/uploads/masters/sm/9/99/99ff733643f1c2d_20180612122249.png" src="https://images.yclients.com/uploads/masters/sm/9/99/99ff733643f1c2d_20180612122249.png"></div>
            </div>

            <div class="y-master-card__cell__middle y-master-card__master-namespec">
                <h3 class="ng-binding">Павло</h3>

                <h4 class="ng-binding">
                    Барбер
                </h4>

                <!-- ngIf: $ctrl.isSlim !== undefined -->
            </div>
        </div>
        <!-- ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
                || $ctrl.master.charge == 'required'
                && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined --><div class="y-master-card__row y-master-card__row_additional-info ng-scope" ng-if="($ctrl.master.rating > 0 &amp;&amp; $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            &amp;&amp; $ctrl.company.is_charge_active) &amp;&amp; $ctrl.isSlim === undefined">
        <div class="y-master-card__cell">
            <!-- ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating --><div class="y-master-card__rating star-container ng-scope ng-isolate-scope" ng-if="::$ctrl.master.rating > 0  &amp;&amp; $ctrl.master.show_rating" count="$ctrl.master.rating"><span class="fa fa-star star-gold" ng-class="count>0 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>1 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>2 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>3 ? 'star-gold' : 'star-gray'"></span> <span class="fa fa-star star-gold" ng-class="count>4 ? 'star-gold' : 'star-gray'"></span></div><!-- end ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating -->
        </div>

        <div class="y-master-card__cell y-master-card__cell_relative">
            <!-- ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating --><y-reviews-button data-block="$ctrl.master.review-button" ng-if="::$ctrl.master.comments_count > 0 &amp;&amp; $ctrl.master.show_rating" class="master-reviews-link ng-scope ng-isolate-scope" is-charge-active="$ctrl.company.is_charge_active" is-disable-card="$ctrl.isDisableCard" master="$ctrl.master"><div class="y-reviews-button" ng-click="$event.stopPropagation(); $ctrl.goToReviews($ctrl.master);">
            <a class="ng-binding">105 отзывов</a>
        </div>
        </y-reviews-button><!-- end ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating -->
        </div>


    </div><!-- end ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined -->
    </div>

</div>
</y-master-card></div><!-- ngIf: master.bookable && master.seancesAreLoading && $ctrl.isLoaded --><!-- ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) --><!-- ngIf: !master.seancesAreLoading && !$ctrl.isEmptyDate(master) && master.bookable && !$ctrl.isPossibleDatetime(master) --></div><!-- end ngRepeat: master in $ctrl.masters --></div></yclients-record-master></div></div><yclients-footer stub="true" class="footer-wrapper_stub ng-isolate-scope"><!-- ngIf: $ctrl.settings.group_id == 0 || $ctrl.LocationService.location != 'profile' --><div ng-show="$root.filialIsSelected" ng-if="$ctrl.settings.group_id == 0 || $ctrl.LocationService.location != 'profile'" class="y-footer-address-bar y-footer-adress-color footer-contacts ng-scope"><div class="footer-contacts__content"><div class="footer-contacts__address"><a class="f-tr y-footer-adress-color ng-binding" target="_blank" ng-href="https://www.google.com/maps/search/?api=1&amp;query=%D0%BF%D1%80-%D1%82%20%D0%92%D0%BE%D0%BB%D1%96,%2012" href="https://www.google.com/maps/search/?api=1&amp;query=%D0%BF%D1%80-%D1%82%20%D0%92%D0%BE%D0%BB%D1%96,%2012">пр-т Волі, 12</a></div><div class="footer-contacts__phone"><!-- ngRepeat: phone in $ctrl.getPhones() --><a class="f-tr y-footer-adress-color y-phone ng-binding ng-scope ng-isolate-scope" ng-href="tel:+380677775806" phone="+380 67 777-58-06" ng-repeat="phone in $ctrl.getPhones()" href="tel:+380677775806">+380 67 777-58-06</a><!-- end ngRepeat: phone in $ctrl.getPhones() --></div></div></div><!-- end ngIf: $ctrl.settings.group_id == 0 || $ctrl.LocationService.location != 'profile' --><!-- ngIf: !$root.ySettings.hide_yclients_link --><div ng-if="!$root.ySettings.hide_yclients_link" class="y-footer-copyrights ng-scope"><a ng-href="https://www.yclients.com/?utm_source=widget&amp;utm_medium=link&amp;utm_campaign=new_widget&amp;utm_term=GC barbershop Луцьк&amp;utm_content=94346" target="_blank" class="y-button y-button_transparent f-tr y-footer-copyrights-color y-footer-copyrights__button" href="https://www.yclients.com/?utm_source=widget&amp;utm_medium=link&amp;utm_campaign=new_widget&amp;utm_term=GC barbershop Луцьк&amp;utm_content=94346"><span class="ng-binding">Работает на&nbsp;</span> <u class="ng-binding">YCLIENTS</u></a></div><!-- end ngIf: !$root.ySettings.hide_yclients_link --></yclients-footer></div><yclients-footer class="js-for-copy footer-wrapper ng-isolate-scope" layout="column" layout-align="space-between center"><!-- ngIf: $ctrl.settings.group_id == 0 || $ctrl.LocationService.location != 'profile' --><div ng-show="$root.filialIsSelected" ng-if="$ctrl.settings.group_id == 0 || $ctrl.LocationService.location != 'profile'" class="y-footer-address-bar y-footer-adress-color footer-contacts ng-scope"><div class="footer-contacts__content"><div class="footer-contacts__address"><a class="f-tr y-footer-adress-color ng-binding" target="_blank" ng-href="https://www.google.com/maps/search/?api=1&amp;query=%D0%BF%D1%80-%D1%82%20%D0%92%D0%BE%D0%BB%D1%96,%2012" href="https://www.google.com/maps/search/?api=1&amp;query=%D0%BF%D1%80-%D1%82%20%D0%92%D0%BE%D0%BB%D1%96,%2012">пр-т Волі, 12</a></div><div class="footer-contacts__phone"><!-- ngRepeat: phone in $ctrl.getPhones() --><a class="f-tr y-footer-adress-color y-phone ng-binding ng-scope ng-isolate-scope" ng-href="tel:+380677775806" phone="+380 67 777-58-06" ng-repeat="phone in $ctrl.getPhones()" href="tel:+380677775806">+380 67 777-58-06</a><!-- end ngRepeat: phone in $ctrl.getPhones() --></div></div></div><!-- end ngIf: $ctrl.settings.group_id == 0 || $ctrl.LocationService.location != 'profile' --><!-- ngIf: !$root.ySettings.hide_yclients_link --><div ng-if="!$root.ySettings.hide_yclients_link" class="y-footer-copyrights ng-scope"><a ng-href="https://www.yclients.com/?utm_source=widget&amp;utm_medium=link&amp;utm_campaign=new_widget&amp;utm_term=GC barbershop Луцьк&amp;utm_content=94346" target="_blank" class="y-button y-button_transparent f-tr y-footer-copyrights-color y-footer-copyrights__button" href="https://www.yclients.com/?utm_source=widget&amp;utm_medium=link&amp;utm_campaign=new_widget&amp;utm_term=GC barbershop Луцьк&amp;utm_content=94346"><span class="ng-binding">Работает на&nbsp;</span> <u class="ng-binding">YCLIENTS</u></a></div><!-- end ngIf: !$root.ySettings.hide_yclients_link --></yclients-footer></div></div></div><!-- end ngIf: !$root.appIsDisabled && $root.appIsLoaded --><!-- ngIf: $root.appIsDisabled --></div></yclients></div></div><div class="nano-pane" style="display: block; opacity: 1; visibility: visible;"><div class="nano-slider" style="height: 51px; transform: translate(0px, 73.4589px);"></div></div></div><style>.main-color {color: #9E9E9E !important;}.y-button {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    background-color: #607d8b;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    color: #fff;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    border: 1px solid rgb(192,250,255);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }.y-md-toolbar-hue-2 {background-color: #616161 !important;}.main-background-color {background: #9E9E9E !important;}.md-tab.md-active {background: #424242 !important;}.main-background-color-900, md-tabs-wrapper, y-tabs-wrapper {background: #424242 !important;}.text-color-50{color: #ffffff !important;}.main-background-color-600{background: #757575 !important;}.main-border-color {border-color: #9E9E9E !important;}.warn-border-color {border-color: #607d8b !important;}.animated-circle-loader-warn .bounce {background-color: #607d8b;}.warn-icon-color {color: #607d8b !important;}.warn-color {color: #607d8b !important;}.warn-color-dark {color: #37474f !important;}.tab-color-warn md-tab-item {color: #37474f !important;}.tab-color-warn md-ink-bar {background-color: #263238 !important;}.warn-background-color {background-color: #607d8b !important;}.primary-dark-color {color: #424242 !important;}.primary-dark-color:hover {color: #424242 !important;}.primary-dark-color:active {color: #424242 !important;}.primary-dark-color:link {color: #424242 !important;}.primary-dark-color:focus {color: #424242 !important;}.primary-dark-color:visited {color: #424242 !important;}.calendar-active-day {color: #607d8b !important;}.light-background-color {background-color: #fafafa !important;}.medium-background-color {background-color: #e0e0e0 !important;}.medium-background-color-opacity {background-color: rgba(224,224,224,0.4) !important;}.medium-border-color {border-color: #bdbdbd !important;}y-checkbox:not([disabled]).md-checked .md-icon:after {border-color: #607d8b !important;}input:-webkit-autofill { -webkit-box-shadow: 0 0 0px 1000px #fafafa inset!important; }.animated-circle-loader-accent .bounce {background-color: #FAFAFA;}.progress-circular-color .md-right .md-half-circle { border-right-color: #424242 !important; border-top-color: #424242 !important; }.progress-circular-color .md-left .md-half-circle { border-top-color: #424242 !important; border-left-color: #424242 !important; }.progress-linear-background-color .md-bar.md-bar2 {background-color: #424242 !important;}.y-header-toolbar {background-color:#ffffff!important;}.y-header-backdrop {background-color:#424242!important;}.y-footer-address-bar {background-color:#EEEEEE!important;}.y-footer-copyrights {background-color:#ffffff!important;}.y-accent-text-color {color:#FAFAFA!important;}.y-header-icon-color {color:#424242!important;}.y-breadcrumbs-color {color:#FAFAFA!important;}.y-footer-adress-color {color:#424242!important;}.y-footer-copyrights-color {color:#616161!important;}
.activities-filter-icon__notification {
    background: #a0a0a0;
    color: white!important;
}
.y-tabs__tab_current {
    color: #607d8b;
}
.y-tabs_dark .y-tabs__list {
    border-color: #607d8b;
}

.y-tabs_dark .y-tabs__tab {
    color: #607d8b;
}

.y-tabs_dark .y-tabs__tab:not(.y-tabs__tab_current) {
    border-right: 1px solid #607d8b;
}

.y-tabs_dark .y-tabs__tab_current {
    background-color: #607d8b;
}

.y-cart__button_loading {
    background-color: #607d8b;
    border-color: #607d8b;
.animated-circle-loader-accent .bounce {
    background-color: #9e9e9e;
}
}

.calendar-active-day-background {
    background-color: #607d8b !important;
}</style></body>
</html>
