<div class="top">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="flat-address">  
                    <div class="social-links">
                        <a href="https://t.me/Eksportchilar_uyushmasi" target="_blank">
                            <i class="fa fa-paper-plane-o"></i>
                        </a>
                        <a href="https://www.facebook.com/uzex.uyushma" target="_blank">
                            <i class="fa fa-facebook"></i>
                        </a>
                        <a href="https://www.youtube.com/channel/UCqknB-bdjhBK10uZVyjuUnQ" target="_blank">
                            <i class="fa fa-youtube"></i>
                        </a>
                    </div>      
                    <div class="custom-info">
                        <span>@lang("Social media")</span> 
                        <i class="fa fa-reply"></i>info@exportuz.com 
                        <i class="fa fa-phone"></i>(+998)71 207 00 98        
                    </div>
                </div><!-- /.flat-address -->
            </div><!-- /.col-md-8 -->   
            <div class="col-md-4">
                <div class="top-navigator">        
                    <ul>
                        @yield('language')
                    </ul>
                </div><!-- /.top-navigator -->
            </div><!-- /.col-md-4 -->              
        </div><!-- /.row -->
    </div><!-- /.container -->
</div><!-- /.top -->

<header id="header" class="header header-v2 clearfix"> 
    <div class="header-wrap clearfix">
        <div class="container">
            <div class="row">
                {{-- <div class="col-md-9"> --}}
                    <div class="col-md-9">
                        <div id="logo" class="logo">
                            <a href="{{route('home', app()->getLocale())}}">
                                <img src="/images/logo.png" width="50" height="50" alt="images">
                            </a>
                        </div><!-- /.logo -->
                        <div class="btn-menu">
                            <span></span>
                        </div><!-- //mobile menu button -->
                    
                        <div class="nav-wrap">                                
                            <nav id="mainnav" class="mainnav" style="margin-top: -3px;">
                                <ul class="menu"> 
                                    <li class="home">
                                        <a href="{{route('home', app()->getLocale())}}" class="active">@lang("Main")</a>
                                    </li>
                                    <li><a href="{{route('headquater', app()->getLocale())}}">@lang("Association")</a>
                                        <ul class="submenu">
                                            <li><a href="{{route('headquater', app()->getLocale())}}">@lang("Headquarter")</a></li>
                                            <li><a href="{{route('about', app()->getLocale())}}">@lang("About association")</a></li>
                                            <li><a href="{{route('service', app()->getLocale())}}">@lang("Services")</a></li>
                                            <li><a href="{{route('territorial', app()->getLocale())}}">@lang("Territorial divisions")</a></li>
                                            <li><a href="{{route('foreign', app()->getLocale())}}">@lang("Foreign divisions")</a></li>
                                            <li><a href="sub-team2.php">@lang("Scientific Research Center")</a></li>
                                            <li><a href="docs.php">@lang("Normative documents")</a></li>
                                            
                                        </ul><!-- /.submenu -->
                                    </li>
                                    <li><a href="join.php">@lang("Membership")</a>
                                        <ul class="submenu"> 
                                            <li><a href="join.php">@lang("Become a member")</a></li>
                                            <li><a href="join1.php">@lang("List of members")</a></li>
                                            <li><a href="join3.php">@lang("Check for membership")</a></li>
                                            <li><a href="join2.php">@lang("Benefits")</a></li>
                                        </ul><!-- /.submenu -->
                                    </li>
                                    <li><a href="news.php">@lang("The press")</a>
                                        <ul class="submenu">
                                            <li><a href="news.php">@lang("News")</a></li>
                                            <li><a href="#news1.php">@lang("Articles")</a></li>
                                            <li><a href="#news2.php">@lang("Press release")</a></li>
                                            <li><a href="#news3.php">@lang("Events")</a></li>
                                        </ul><!-- /.submenu -->
                                    </li>    
                                    <li><a href="javascript:void(0)">@lang("Information")</a>
                                        <ul class="submenu">
                                            <li><a href="data.php">@lang("Statistics")</a></li>
                                            <li><a href="#data1.php">@lang("Open data")</a></li>
                                        </ul><!-- /.submenu -->
                                    </li>
                                    <li><a href="media1.php">@lang("Media")</a>
                                        <ul class="submenu"> 
                                            <li><a href="#media.php">@lang("Gallery")</a></li>
                                            <li><a href="media1.php">@lang("Video")</a></li>
                                            <li><a href="#media2.php">@lang("Infographics")</a></li>
                                        </ul><!-- /.submenu -->
                                    </li>                                            
                                    <li><a href="contact.php">@lang("Contacts") </a></li>
                                </ul><!-- /.menu -->
                            </nav><!-- /.mainnav -->  
                        </div><!-- /.nav-wrap -->
                    </div> 
                <div class="col-md-3">
                    <div class="top-search">
                        <div class="widget widget_search">
                            <form class="search-form">
                                <input type="search" class="search-field" placeholder="@lang('Search') …">
                                <input type="submit" class="search-submit">
                            </form>
                        </div>
                    </div>
                </div><!-- /.col-md-3 -->
            </div><!-- /.row -->
        </div><!-- /.container -->             
    </div><!-- /.header-inner --> 
</header><!-- /.header -->