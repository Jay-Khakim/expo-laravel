@extends('layouts.app')
@section('language')
    <li>
        <a href="{{route('contact', 'en') }}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{route('contact', 'ru') }}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{route('contact', 'uz') }}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
    </li>
@endsection

@section('content')
    <!-- Page title -->
    <div class="page-title style1">
        <div class="container">
            <div class="row">
                <div class="col-md-12">                    
                    <div class="page-title-heading">
                        <div class="breadcrumbs">
                            <ul class="trail-items">
                                <li class="trail-item"><a href="{{route('home', app()->getLocale())}}">@lang("Main")</a></li>
                                <li class="trail-item"><a href="{{route('contact', app()->getLocale())}}">@lang("Contacts")</a></li>
                                <li class="trail-end">@lang("Contacts")</li>
                            </ul>                   
                        </div>
                    </div><!-- /.page-title-captions -->                        
                </div><!-- /.col-md-12 -->  
            </div><!-- /.row -->  
        </div><!-- /.container -->                      
    </div><!-- /.page-title -->

    <div class="flat-row parallax parallax3">
        <div class="overlay bg-f1f2f8"></div>
        <div class="container">
            <div class="row">
                <div class="flat-wrapper">
                    <div class="flat-iconbox clearfix">
                        <div class="item-three-column">
                            <div class="iconbox">
                                <div class="box-header">
                                    <div class="box-icon">
                                        <i class="fa fa-comments"></i>
                                    </div>
                                    <h5 class="box-title">@lang("Contact us")!</h5>
                                </div>
                                <div class="box-content">
                                    <p>@lang("Our contacts")</p>
                                    <p>
                                        <strong>@lang("Phone"):</strong> +998 71 207 00 98<br>
                                        <strong>@lang("Email address"):</strong> info@exportuz.com<br>
                                                                        
                                    </p>
                                </div>      
                            </div><!-- /.iconbox -->
                        </div><!-- /.item-three-column -->

                        <div class="item-three-column">
                            <div class="iconbox">
                                <div class="box-header">
                                    <div class="box-icon">
                                        <i class="fa fa-clock-o"></i>
                                    </div>
                                    <h5 class="box-title">@lang("Working hours")</h5>
                                </div>
                                <div class="box-content">
                                    <p>@lang("Find out working hours and details").</p>
                                    <p>
                                        <strong>@lang("Monday-Saturday"):</strong> 9:00 – 18:00<br>
                                        <strong>@lang("Sunday"):</strong> @lang("Day off")
                                    </p>
                                </div>      
                            </div><!-- /.iconbox -->
                        </div><!-- /.item-three-column -->

                        <div class="item-three-column">
                            <div class="iconbox">
                                <div class="box-header">
                                    <div class="box-icon">
                                        <i class="fa fa-globe"></i>
                                    </div>
                                    <h5 class="box-title">@lang("The address of the association")</h5>
                                </div>
                                <div class="box-content">
                                    <p>@lang("Main address")</p><br>
                                    <p>
                                        <strong>@lang("Region"):</strong> @lang("Олмазор")<br>
                                        <strong>@lang("Street"):</strong> @lang("Korakamish, 8A")<br>             
                                    </p>
                                </div>      
                            </div><!-- /.iconbox -->
                        </div><!-- /.item-three-column -->
                    </div><!-- /.flat-iconbox -->
                </div><!-- /.flat-wrapper -->                    
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.flat-row -->

    <div class="flat-row pad-bottom20px">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="flat-contact-us style1">
                        <h4 class="desc no-margin-top no-margin-bottom">@lang("Send message")</h4>
                        <p>@lang("Fill out the contact section below and our business consultants will get in touch soon").</p>
                    </div>
                    <div class="flat-divider d20px"></div>
                    <div class="social-links">
                        <a href="#">
                            <i class="fa fa-twitter"></i>
                        </a>
                        <a href="#">
                            <i class="fa fa-facebook-official"></i>
                        </a>
                        <a href="#">
                            <i class="fa fa-google-plus"></i>
                        </a>
                    </div>

                    <div class="flat-divider d20px"></div>
                </div><!-- /.col-md-4 -->

                <div class="col-md-8">
                    <form id="contactform" method="post" action="./contact/contact-process.php">
                        <div class="row">
                            <div class="col-md-6">
                                <span><input name="name" type="text" value="" placeholder="@lang('Name')" required="required"></span>
                                <span><input id="email" name="email" type="email" value="" placeholder="@lang('Email address')" required="required"></span>
                                <span><input id="phone" name="phone" type="text" value="" placeholder="@lang('Phone')" required="required"></span>
                                <span><input id="subject" name="subject" type="text" value="" placeholder="@lang('Subject')" required="required"></span>                                
                            </div><!-- /.col-md-6 -->

                            <div class="col-md-6">
                                <span><textarea name="message" placeholder="@lang('Comment')" required="required"></textarea></span>
                                <span class="form-submit"><input name="submit" type="submit" id="submit" class="submit" value="@lang('Send')">
                                </span>
                            </div><!-- /.col-md-6 -->
                        </div><!-- /.row -->
                    </form>
                </div><!-- /.col-md-8 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.flat-row -->

    <div class="fluit" style="margin-bottom: -10px;">
        <iframe align="center" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d650.2518319499841!2d69.21856252920595!3d41.355331205372956!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38ae8d4e64adf79d%3A0x3a39127fd8ff297b!2sO%E2%80%99zbekiston%20Eksportchilar%20Uyushmasi!5e1!3m2!1suz!2s!4v1590062066869!5m2!1suz!2s" style="width: 100% ; height: 400px;" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
    </div><!-- /#flat-map -->
@endsection