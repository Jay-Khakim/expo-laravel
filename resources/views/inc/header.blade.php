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
                                            <li><a href="{{route('scientific', app()->getLocale())}}">@lang("Scientific Research Center")</a></li>
                                            <li><a href="{{route('docs', app()->getLocale())}}">@lang("Normative documents")</a></li>
                                            
                                        </ul><!-- /.submenu -->
                                    </li>
                                    <li><a href="{{route('membership', app()->getLocale())}}">@lang("Membership")</a>
                                        <ul class="submenu"> 
                                            <li><a href="{{route('membership', app()->getLocale())}}">@lang("Become a member")</a></li>
                                            <li><a href="{{route('members-list', app()->getLocale())}}">@lang("List of members")</a></li>
                                            <li><a href="{{route('check-member', app()->getLocale())}}">@lang("Check for membership")</a></li>
                                            <li><a href="{{route('benefits', app()->getLocale())}}">@lang("Benefits")</a></li>
                                            <li><a href="{{route('members-service', app()->getLocale())}}">@lang("Services")</a></li>
                                        </ul><!-- /.submenu -->
                                    </li>
                                    <li><a href="{{route('news', app()->getLocale())}}">@lang("The press")</a>
                                        <ul class="submenu">
                                            <li><a href="{{route('news', app()->getLocale())}}">@lang("News")</a></li>
                                            {{-- <li><a href="#news1.php">@lang("Articles")</a></li> --}}
                                            <li><a href="{{route('press', app()->getLocale())}}">@lang("Press release")</a></li>
                                            <li><a href="{{route('events', app()->getLocale())}}">@lang("Events")</a></li>
                                        </ul><!-- /.submenu -->
                                    </li>    
                                    <li><a href="{{route('statistics', app()->getLocale())}}">@lang("Information")</a>
                                        <ul class="submenu">
                                            <li><a href="{{route('statistics', app()->getLocale())}}">@lang("Statistics")</a></li>
                                            <li><a href="{{route('open', app()->getLocale())}}">@lang("Open sources")</a></li>
                                            {{-- <li><a href="javascript:void(0)">@lang("Open data")</a></li> --}}
                                        </ul><!-- /.submenu -->
                                    </li>
                                    <li><a href="{{route('video', app()->getLocale())}}">@lang("Media")</a>
                                        <ul class="submenu"> 
                                            <li><a href="{{route('photo', app()->getLocale())}}">@lang("Gallery")</a></li>
                                            <li><a href="{{route('video', app()->getLocale())}}">@lang("Video")</a></li>
                                            {{-- <li><a href="#media2.php">@lang("Infographics")</a></li> --}}
                                        </ul><!-- /.submenu -->
                                    </li>                                            
                                    <li><a href="{{route('contact', app()->getLocale())}}">@lang("Contacts") </a></li>
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