@extends('layouts.app')
@section('language')
    <li>
        <a href="{{route('membership', 'en') }}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{route('membership', 'ru') }}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{route('membership', 'uz') }}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
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
                                <li class="trail-item"><a href="{{route('membership', app()->getLocale())}}">@lang("Membership")</a></li>
                                <li class="trail-end">@lang("Become a member")</li>
                            </ul>                   
                        </div>
                    </div><!-- /.page-title-captions -->                        
                </div><!-- /.col-md-12 -->  
            </div><!-- /.row -->  
        </div><!-- /.container -->                      
    </div><!-- /.page-title -->

    <!-- Portfolio single -->
        <div class="flat-row flat-portfolio-single pad-bottom0px">
            <div class="container">
                <div class="row">
                    <div class="flat-wrapper">

                        <div class="flat-row pad-top70px pad-bottom70px">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-2">
                                        <div class="flat-contact-us">
                                            <h2 class="title no-margin-top">@lang("Become a member of the association right now")!</h2>
                                            <h4 class="desc no-margin-top">@lang("To become a member now, call us") <a class="scheme2" href="callto:+998951454502">+998 95 145-45-02</a>, @lang("or use the link below") </h4>
                                            <a class="button lg" 
                                            @if (app()->getLocale() === 'en')
                                                href="https://form.jotform.com/202652118441447"
                                            @endif
                                            @if (app()->getLocale() === 'uz')
                                                href="https://form.jotform.com/202573195115452"
                                            @else 
                                                href="https://form.jotform.com/202651416750450"
                                            @endif
                                            >@lang("membership")</a>
                                        </div>
                                    </div><!-- /.col-md-8 -->
                                </div><!-- /.row -->
                            </div><!-- /.container -->
                        </div><!-- /.flat-row -->

                        <div class="navigation post-navigation">
                            <ul class="nav-links">
                                <li class="previous-post">
                                    <a href="{{route('members-list', app()->getLocale())}}" rel="prev"><span class="meta-nav">@lang("Previous")</span>@lang("List of members")</a>
                                </li>
                                <li class="next-post">
                                    <a href="{{route('benefits', app()->getLocale())}}" rel="next"><span class="meta-nav">@lang("Next")</span>@lang("Benefits")</a>
                                </li>
                            </ul>
                        </div><!-- /.navigation .post-navigation -->
                    </div><!-- /.flat-wrapper -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.flat-portfolio-single -->

    
@endsection