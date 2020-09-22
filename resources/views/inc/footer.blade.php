<!-- Footer -->
    <footer class="footer">
        <div class="content-bottom-widgets">        
            <div class="container">
                <div class="row"> 
                    <div class="flat-wrapper">
                        <div class="ft-wrapper">
                            <div class="footer-70">
                                <div class="widget widget_text" style="margin-top: 5px;">            
                                    <div class="textwidget">
                                        <div class="custom-info">
                                            <span>@lang("Contact us")</span>
                                            <span><i class="fa fa-reply"></i>info@exportuz.com </span> 
                                            <span><i class="fa fa-map-marker"></i>@lang("8A, Korakamish street, Olmazor region, Tahskent city")</span> 
                                            <span><i class="fa fa-phone"></i>+99871 207 00 98</span>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- /.col-md-10 -->

                            <div class="footer-30">
                                <div class="widget widget_text">            
                                    <div class="textwidget">
                                        <div class="logo-ft" id="logo-mob"><img src="/images/logo-ft.png" alt="logo"></div>
                                    </div>
                                </div>
                            </div><!-- /.col-md-2 -->
                        </div><!-- /.ft-wrapper -->
                    </div><!-- /.flat-wrapper -->
                </div><!-- /.row -->    
            </div><!-- /.container -->
        </div><!-- /.footer-widgets -->

        <div class="footer-widgets">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="widget widget_text">            
                            <div class="textwidget">
                                <p>@lang("Coordinating the activities of enterprises that are members of the Association, as well as representing and protecting the interests of the joint property.")</p>
                                <form class="ft-form">
                                <p>
                                    <input type="submit" value="@lang('More')">
                                </p>
                            </form>
                            </div>
                        </div>
                    </div><!-- /.col-md-4 -->

                    <div class="col-md-4">
                        <div class="widget widget_nav_menu">
                            <div class="menu-footer-menu-container">
                                <ul class="ft-menu">
                                    <li><a href="{{route('about', app()->getLocale())}}">@lang("About us")</a></li>
                                    <li><a href="news.php">@lang("News")</a></li>
                                    <li><a href="#faq.php">@lang("Questions")</a></li>
                                    <li><a href="{{route('headquater', app()->getLocale())}}">@lang("Headquarter")</a></li>
                                    <li><a href="{{route('service', app()->getLocale())}}">@lang("Association activities")</a></li>
                                    <li><a href="{{route('territorial', app()->getLocale())}}">@lang("Territorial divisions")</a></li>
                                    <li><a href="sub-team2.php">@lang("SRC")</a></li>
                                    <li><a href="join.php">@lang("Membership")</a></li>
                                    <li><a href="#portfolio.php">@lang("New projects")</a></li>
                                    <li><a href="media1.php">@lang("Media")</a></li>
                                    <li><a href="contact.php">@lang("Contacts")</a></li>
                                    <li><a href="media1.php">@lang("Video messages")</a></li>
                                </ul>
                            </div>
                        </div>
                    </div><!-- /.col-md-4 -->

                    <div class="col-md-4">
                        <div class="widget widget_mc4wp_form_widget">
                            <form class="ft-form">
                                <p>
                                    <label>@lang("Subscribe to Exportuz news")</label>
                                    <input type="text" name="EMAIL" placeholder="@lang('Leave your Email')..">
                                </p>
                                <p>
                                    <input type="submit" value="@lang('Send')">
                                </p>
                            </form>
                        </div>
                    </div><!-- /.col-md-4 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.footer-content -->

        <div class="footer-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
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
                    </div><!-- /.col-md-12 -->
                    <div class="col-md-12">
                        <div class="copyright">
                            <div class="copyright-content">
                                © 2020 @lang("Association of Exporters of Uzbekistan")
                            </div>
                        </div>
                    </div><!-- /.col-md-12 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.footer-content -->
    </footer>

{{-- </div> --}}