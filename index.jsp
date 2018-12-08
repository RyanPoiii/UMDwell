<%--
  Created by IntelliJ IDEA.
  User: Ryan0723
  Date: 11/29/2018
  Time: 2:03 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--[if IE 9]>		 <html class="no-js ie9" lang="en" xml:lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en" xml:lang="en"> <!--<![endif]-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var o=n[t]={exports:{}};e[t][0].call(o.exports,function(n){var o=e[t][1][n];return r(o||n)},o,o.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<t.length;o++)r(t[o]);return r}({1:[function(e,n,t){function r(){}function o(e,n,t){return function(){return i(e,[c.now()].concat(u(arguments)),n?null:this,t),n?void 0:this}}var i=e("handle"),a=e(3),u=e(4),f=e("ee").get("tracer"),c=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,n){s[n]=o(d+n,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,o="function"==typeof n;return i(l+"tracer",[c.now(),e,t],r),function(){if(f.emit((o?"":"no-")+"fn-start",[c.now(),r,o],t),o)try{return n.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],t),e}finally{f.emit("fn-end",[c.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=o(l+n)}),newrelic.noticeError=function(e){"string"==typeof e&&(e=new Error(e)),i("err",[e,c.now()])}},{}],2:[function(e,n,t){function r(e,n){if(!o)return!1;if(e!==o)return!1;if(!n)return!0;if(!i)return!1;for(var t=i.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var u=navigator.userAgent,f=u.match(a);f&&u.indexOf("Chrome")===-1&&u.indexOf("Chromium")===-1&&(o="Safari",i=f[1])}n.exports={agent:o,version:i,match:r}},{}],3:[function(e,n,t){function r(e,n){var t=[],r="",i=0;for(r in e)o.call(e,r)&&(t[i]=n(r,e[r]),i+=1);return t}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],4:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,o=t-n||0,i=Array(o<0?0:o);++r<o;)i[r]=e[n+r];return i}n.exports=r},{}],5:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function o(e){function n(e){return e&&e instanceof r?e:e?f(e,u,i):i()}function t(t,r,o,i){if(!d.aborted||i){e&&e(t,r,o);for(var a=n(o),u=v(t),f=u.length,c=0;c<f;c++)u[c].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r<t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||o(t)}function w(e,n){c(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",f=e("gos"),c=e(3),s={},p={},d=n.exports=o();d.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(o.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){o.buffer([e],r),o.emit(e,n,t)}var o=e("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!E++){var e=x.info=NREUM.info,n=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();c(y,function(n,t){e[n]||(e[n]=t)}),f("mark",["onload",a()+x.offset],null,"api");var t=l.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function o(){"complete"===l.readyState&&i()}function i(){f("mark",["domContent",a()+x.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-x.offset}var u=(new Date).getTime(),f=e("handle"),c=e(3),s=e("ee"),p=e(2),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1099.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),x=n.exports={offset:u,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),l[m]?(l[m]("DOMContentLoaded",i,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",o),d[v]("onload",r)),f("mark",["firstbyte",u],null,"api");var E=0,O=e(5)},{}]},{},["loader"]);</script>

<link rel="stylesheet"
        type="text/css"
        href="css/bootstrap.css"
/>
<link rel='stylesheet'
      type='text/css'
      href='//fonts.googleapis.com/css?family=Raleway:400|Source Sans Pro:300,400|'>
<link rel="stylesheet"
      type="text/css"
      href='https://commoncdn.entrata.com/css/less.php?template=blueline%2F&template-theme=Theme1&template-colors-new=YToxMzp7czoxMDoiYmFzZS1jb2xvciI7czo3OiIjRTZFNkU2IjtzOjEwOiJ0ZXh0LWNvbG9yIjtzOjc6IiMwMDAwMDAiO3M6MTQ6ImFjY2VudC1jb2xvci0xIjtzOjc6IiMwMTU2OTciO3M6MTQ6ImFjY2VudC1jb2xvci0yIjtzOjc6IiMzRjQ5NjMiO3M6MTQ6ImFjY2VudC1jb2xvci0zIjtzOjc6IiNFNkU2RTYiO3M6MTQ6ImFjY2VudC1jb2xvci00IjtzOjc6IiNFNkU2RTYiO3M6MTY6ImJhY2tncm91bmQtY29sb3IiO3M6NzoiI0ZGRkZGRiI7czoxMjoiaGVhZGVyLWNvbG9yIjtzOjc6IiNFNkU2RTYiO3M6MTA6ImxpbmstY29sb3IiO3M6NzoiI0U2RTZFNiI7czoyMDoicHJpbWFyeS1idXR0b24tY29sb3IiO3M6NzoiI0U2RTZFNiI7czoyMjoic2Vjb25kYXJ5LWJ1dHRvbi1jb2xvciI7czo3OiIjRTZFNkU2IjtzOjIxOiJ0ZXJ0aWFyeS1idXR0b24tY29sb3IiO3M6NzoiI0U2RTZFNiI7czoyNjoic2l0ZS1wbGFuLWFjdGl2ZS1waW4tY29sb3IiO3M6NjoiMDE1Njk3Ijt9&head-line-font=Raleway%2Csans-serif&head-line-font-weight=400&head-line-font-style=normal&body-font=Source+Sans+Pro%2Csans-serif&body-font-weight=300&body-font-style=,400&body-background-pattern=none&template_pattern_values=body-background-pattern%5Ehttps%3A%2F%2Fcommoncdn.entrata.com%2Fwebsite_templates%2F_common%2Ftemplate_patterns%2Fblueline%2Fgrainy.png%3Fver%3D1531285913&slider-opacity=0.3&is-pp-audit=0&page-type=home&application-type=prospect_portal&compiler=less-master&lkey=56363ccadfa685c588a6f57e1deb2cfb&lver=1465710455'>


<html>


<body>


<noscript><div class="message-text"><svg class='message-alert-svg' viewBox='0 0 32 32' xmlns='http://www.w3.org/2000/svg'><path d='M31.4,23.7l-5.7-9.9l-5.7-9.9c-0.8-1.4-2.3-2.3-3.9-2.3c-1.6,0-3.1,0.8-3.9,2.3l-5.7,9.9l-5.7,9.9c-0.8,1.4-0.8,3.1,0,4.5c0.8,1.4,2.3,2.3,3.9,2.3h22.9c1.6,0,3.1-0.8,3.9-2.3C32.2,26.8,32.2,25.1,31.4,23.7z M27.5,27.8H4.5c-1.4,0-2.3-1.5-1.6-2.7L14.4,5.2c0.4-0.6,1-0.9,1.6-0.9s1.2,0.3,1.6,0.9L29,25C29.8,26.2,28.9,27.8,27.5,27.8z M14.5,25.1h3.1v-3h-3.1V25.1z M14.4,13.9l0.9,7h1.5l0.8-7v-3.8h-3.2V13.9z'/></svg>Javascript has been disabled on your browser, so some functionality on the site may be disabled. Enable javascript in your browser to ensure full functionality.</div></noscript>

<div class="main-wrapper">

    <div class="slider-container">
        <ul class="slider">
            <li class="slider-image" style="background-image:url('image/verde/verde01.jpg');">
            <li class="slider-image" style="background-image:url('image/verde/verde02.jpg');">
            <li class="slider-image" style="background-image:url('image/verde/verde03.jpg');">
            <li class="slider-image" style="background-image:url('image/verde/verde04.jpg');">
        </ul>



        <div class="slider-content">


            <nav class="navbar navbar-inverse">
                <div class="container-fluid">

                    <div class="navbar-header">
                        <a href=index.jsp title='Home'>
                            <img src="image/logo/umd06.jpg" width="110" height="50" alt="UMDwell">
                        </a>
                    </div>
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.jsp" style="color:firebrick">&nbsp;&nbsp;&nbsp;UMDwell Home</a>
                    </div>
                    <div class="navbar-header">
                        <a class="navbar-brand" href="floorPlan.jsp" >Floor Plan Prices</a>
                    </div>
                    <div class="navbar-header">
                        <a class="navbar-brand" href="compare.jsp" >Check Availability</a>
                    </div>
                    <div class="navbar-header">
                        <a class="navbar-brand" href="amenity.jsp" >Amenities</a>
                    </div>
                    <div class="navbar-header">
                        <a class="navbar-brand" href="distance.jsp" >Distance to Campus</a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <%
                            session = request.getSession();
                            String Email = (String) session.getAttribute("Email");
                            if (Email == null) {
                        %>
                        <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Register</a></li>
                        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                        <%
                        } else {
                        %>
                        <li><a href="user_center_old.jsp"><span class="glyphicon glyphicon-lock"></span><%=Email%></a></li>
                        <li><a href="/servlet/LogOut"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
                        <%
                            }
                        %>
                    </ul>
                </div>
            </nav>

            <header class="template-header ">
                <div class="logo-container logo-image">
                    <a href=index.jsp title='Home'>
                        <img src="image/logo/umd01.png" alt="UMDwell">
                    </a>
                </div>
                <nav data-menu="animate" class="header-nav main-menu" id="global-nav">
                    <ul class="header-nav-list" role="menubar">
                        <li class="header-nav-item home">
                            <a class="header-nav-link  active" href="index.jsp" role="menuitem">Home</a></li>
                        <li class="header-nav-item residents has-subnav" aria-expanded="false">
                            <a class="header-nav-link js-subnav-trigger" href="#"
                               role="menuitem" aria-haspopup="true">Floor Plan Comparasion</a>
                            <ul class="header-nav-sublist resident-dropdown" role="menu" aria-label="submenu">
                                <li class="header-nav-subitem"><a class="header-nav-sublink"
                                                                  href="floorPlan.jsp" role="menuitem">Price</a></li>
                                <li class="header-nav-subitem"><a class="header-nav-sublink"
                                                                  href="compare.jsp" role="menuitem">Availablity</a></li>
                            </ul></li>
                        <li class="header-nav-item floorplans">
                            <a class="header-nav-link" href="amenity.jsp" role="menuitem">Amenities</a></li>
                        <li class="header-nav-item photos-tours">
                            <a class="header-nav-link" href="distance.jsp" role="menuitem">Distance to Campus</a></li>
                        <li class="header-nav-item apply">
                            <a class="header-nav-link" href="#" role="menuitem">Apply Now</a></li>
                    </ul>
                </nav>
                <div class="mobile-triggers">
                    <a href="javascript:void(0);" class="mobile-menu-trigger main js-menu-trigger" data-target="#global-nav" data-ui="offpage-menu">
                        <i class="icon" data-home-icon="5"></i>
                        <span class="trigger-text"></span>
                    </a>
                </div>
            </header>
            <div class="cta-container">
                <article class="cta-widget search single">
                    <h2 class="cta-header" style="color: yellow">live the ultimate around UMD campus</h2>
                    <p class="cta-text" style="font-family: 'Franklin Gothic Demi'">every UMDweller can find an ideal place to live in.</p>
                   </article>
            </div>
        </div>
    </div>
    <div class="page-wrapper clearfix">
        <div class="wrapper-content" >
            <div class="welcome-text-container" role="main">
                <h1 class="welcome-title">
                    Popular Apartment Communities for Terps
                </h1>
                <div class="welcome-text" style="alignment: center">
                    We would like to design a website to provide and develop quality affordable leasing opportunities for students in UMD,
                    who can find comparable renting house and leasing communities’ information in our database through the website.
                    <br />Owners and renters can register and log in our website to sign leases and records.

                    <br />Apartment communities offer you entertainment and healthy living. Enjoy the outdoors with a sparkling seasonal pool, 3 landscaped courtyards and bocce court. Skip the gym, and use the on-site fitness center with state of the art machinery.&nbsp;Relax in the community lounge, a spacious escape that is perfect&nbsp;for a movie night.&nbsp;We are also proud to be pet friendly, offering our furry friends their own bark park. Our residents also have access to ample bike storage, direct access to the Metro rail system, and electric vehicle charging stations. Hope every terps can live a healthy and joyful life!<br>
                    Let us welcome you home, contact us today!</div>
                <br />
                <h3 class="welcome-title">
                    Apartment Communities Locations Around UMD Campus
                </h3>
                <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d20119.286511707665!2d-76.93332681245549!3d38.99951071490352!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sApartment+Building!5e0!3m2!1sen!2sus!4v1543831145991"
                        width="1200" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
            </div>
        <div class="row">
            <div class="col-md-3">
                <div class="thumbnail">
                    <a href="https://live-theview.com/">
                        <img src="image/views/views01.jpg" alt="Lights" style="width:100%">
                        <div class="h3">
                            <p>University Views</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="thumbnail">
                    <a href="http://www.terrapinrow.com/">
                        <img src="image/terrapin/terrapin01.png" alt="Lights" style="width:100%">
                        <div class="h3">
                            <p>Terrapin Row</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="thumbnail">
                    <a href="https://www.westchestertower.com/">
                        <img src="image/westchester/westchester01.JPG" alt="Nature" style="width:100%">
                        <div class="h3">
                            <p>Westchester Tower</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="thumbnail">
                    <a href="https://www.landmarkcollegepark.com/">
                        <img src="image/landmark/landmark.jpg" alt="Fjords" style="width:100%">
                        <div class="h3">
                            <p>Landmark</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="thumbnail">
                    <a href="https://www.udr.com/washington-dc-apartments/college-park/domain-college-park/">
                        <img src="image/domain/domain.jpg" alt="Lights" style="width:100%">
                        <div class="h3">
                            <p>Domain</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="thumbnail">
                    <a href="https://www.verdegreenbelt.com/">
                        <img src="image/verde/verde11.jpg" alt="Nature" style="width:100%">
                        <div class="h3">
                            <p>Verde</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="thumbnail">
                    <a href="https://ross-companies.com/properties/seven-springs-apartments-college-park/">
                        <img src="image/sevenSprings/SevenSprings.jpg" alt="Fjords" style="width:100%">
                        <div class="h3">
                            <p style="alignment: center">Seven Springs Apartments</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-3">
                <div class="thumbnail">
                    <a href="https://www.americancampus.com/student-apartments/md/college-park/the-varsity">
                        <img src="image/Varsity/varsity01.jpg" alt="Fjords" style="width:100%">
                        <div class="h3">
                            <p>Varsity</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>



    <footer class="template-footer">
        <div class="footer-wrapper">
            <ul id="social-nav" class="social-icon-list count-5">
                <li class="social-icon-item facebook"><a class="social-icon-link" data-tracking='{
"category":		"Engagement",
"action":		"Click to Link",
"label":	"Facebook Icon Link"
}' title="Facebook" href="index.jsp" data-media="Facebook" target="_blank" rel="noopener" aria-describedby="Facebook"><i class="icon" data-home-icon="f" id="Facebook"></i></a></li><li class="social-icon-item google-plus"><a class="social-icon-link" data-tracking='{
"category":		"Engagement",
"action":		"Click to Link",
"label":	"Google-Plus Icon Link"
}' title="Google Plus" href="index.jsp" data-media="Google Plus" target="_blank" rel="noopener" aria-describedby="Google-Plus"><i class="icon" data-home-icon="g" id="Google-Plus"></i></a></li><li class="social-icon-item youtube"><a class="social-icon-link" data-tracking='{
"category":		"Engagement",
"action":		"Click to Link",
"label":	"Youtube Icon Link"
}' title="Youtube" href="index.jsp" data-media="Youtube" target="_blank" rel="noopener" aria-describedby="Youtube"><i class="icon" data-home-icon="y" id="Youtube"></i></a></li><li class="social-icon-item blog"><a class="social-icon-link" data-tracking='{
"category":		"Engagement",
"action":		"Click to Link",
"label":	"Blog Icon Link"
}' title="Blog" href="index.jsp" data-media="Blog" target="_blank" rel="noopener" aria-describedby="Blog"><i class="icon" data-home-icon="b" id="Blog"></i></a></li><li class="social-icon-item yelp"><a class="social-icon-link" data-tracking='{
"category":		"Engagement",
"action":		"Click to Link",
"label":	"Yelp Icon Link"
}' title="Yelp" href="index.jsp" data-media="Yelp" target="_blank" rel="noopener" aria-describedby="Yelp"><i class="icon" data-home-icon="Y" id="Yelp"></i></a></li>
            </ul>
            <article class="footer-box contact">
                <h1>Contact</h1>
                <div class="vcard">
                    <span class="fn">UMDwell</span>
                    <div class="adr">
                        <span class="street-address">7621 Mowatt Ln,</span>
                        <span class="locality">College Park </span>
                        <span class="region">MD </span>
                        <span class="postal-code">20742</span>
                    </div>
                    <a class="tel google-forwarding-number" href="tel:301-888-8888" data-tracking='{
"category"	:"Conversion",
"action"   	: "Click to Call",
"label"    	: "Phone Number Footer",
"is_bing"   : true
}'>
                        <span class="type">p:</span>
                        <span class="value"> 							(301) 888-8888
</span>
                    </a>
                    <a class="fax" href="fax:301-888-8888">
                        <span class="type">f:</span>
                        <span class="value"> (301) 888-8888</span>
                    </a>
                </div>
            </article>
            <article class="footer-box office-hours">
                <h5>UMDwell Office Hours</h5>
                <ul class="hours-table">
                    <li class="hours-table-row">
                        <span class="hours-day" aria-label="Mon - Fri">M - F:</span>
                        <span class="hours-time">9:30 am - 5:30 pm</span>
                    </li>
                    <li class="hours-table-row">
                        <span class="hours-day" aria-label="Sat">S:</span>
                        <span class="hours-time">10:00 am - 5:00 pm</span>
                    </li>
                    <li class="hours-table-row">
                        <span class="hours-day" aria-label="Sun">Su:</span>
                        <span class="hours-time">12:00 pm - 5:00 pm</span>
                    </li>
                </ul>
            </article>

            <ul class="footer-nav-list common">
                <li class="footer-nav-item">
                    <a class="footer-nav-link" href="index.jsp" rel="noopener" target="_blank">Site Map</a>
                </li>
                <li class="footer-nav-item">
                    <a class="footer-nav-link" href="index.jsp" rel="noopener" target="_blank">Terms of Use</a>
                </li>
            </ul>
            <div class="footer-copyright">&copy;2018 UMDwell, Inc. All rights reserved.</div>
        </div>
    </footer>
</div>
<script src="https://commoncdn.entrata.com/javascript/vendor/modernizr-2.6.2.min.js?ver=298142"></script>

<script src="https://commoncdn.entrata.com/website_templates/_assets/prospect_portal/prospect_portal.min.js?ver=298142"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCJsP0YKx28M8iSGlkGa2dfWXWRk35W6BY&libraries=places" id="google_maps" ></script>
<script src="https://commoncdn.entrata.com/website_templates/_assets/_common/contact_btn_controller.min.js?ver=298142"></script>
<script src="https://commoncdn.entrata.com/website_templates/_assets/_common/widget_loader.min.js?ver=298142"></script>
<script src="https://commoncdn.entrata.com/website_templates/_assets/template/blueline/home.min.js?ver=298142"></script>
<script type="text/javascript">
    var onloadCallback = function() {
        $.publish('recaptcha:ready');
    };
</script>
<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>
<script type="text/javascript">
    (function() {
        var psTracking = document.createElement('script');
        psTracking.type = 'text/javascript';
        psTracking.async = true;
        psTracking.src = ppConfig.exit_tags.website_stats_logger + 'is_bot/0/';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(psTracking);
    })();
</script>


<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"fc8c705c46","applicationID":"7186833,4735284","transactionName":"NQNXMBQAWkJRWxcLVwxJdhEVFVtcHw==","queueTime":0,"applicationTime":70,"atts":"GURARlwaSR0SWUFYQx8b","errorBeacon":"bam.nr-data.net","agent":""}</script>


</body>
</html>
