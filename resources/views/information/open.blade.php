@extends('layouts.app')
@section('language')
    <li>
        <a href="{{route('open', 'en') }}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{route('open', 'ru') }}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{route('open', 'uz') }}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
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
                                <li class="trail-item"><a href="{{route('statistics', app()->getLocale())}}">@lang("Information")</a></li>
                                <li class="trail-end">@lang("Open sources")</li>
                            </ul>                   
                        </div>
                    </div><!-- /.page-title-captions -->                        
                </div><!-- /.col-md-12 -->  
            </div><!-- /.row -->  
        </div><!-- /.container -->                      
    </div><!-- /.page-title -->

    <div class="blog">
        <div class="container">
            <div class="row">     
                <div>
                    <iframe src="http://service.customs.uz/autogtd_report/index.jsp?pc=7#" frameborder="0" width="1200" height="658" allowfullscreen="allowfullscreen"></iframe>
                </div>
            </div>
        </div>
    </div>

@endsection