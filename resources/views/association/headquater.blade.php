@extends('layouts.app')
@section('language')
    <li>
        <a href="{{route('headquater', 'en') }}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{route('headquater', 'ru') }}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{route('headquater', 'uz') }}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
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
                                {{-- <li>@lang("You are at this destination"):</li> --}}
                                <li class="trail-item"><a href="{{route('home', app()->getLocale())}}">@lang("Main")</a></li>
                                <li class="trail-item"><a href="{{route('about', app()->getLocale())}}">@lang("Association")</a></li>
                                <li class="trail-end">>@lang("Headquarter")</li>
                            </ul>                   
                        </div>
                    </div><!-- /.page-title-captions -->                        
                </div><!-- /.col-md-12 -->  
            </div><!-- /.row -->  
        </div><!-- /.container -->                      
    </div><!-- /.page-title -->

    <div class="flat-row flat-general sidebar-right">
            <div class="container">
                <div class="row">
                    <div class="flat-wrapper">
                        <div class="general flat-teammember">
                            @foreach ($main_employers as $main)
                                <div class="member">
                                    <div class="member-image">
                                        <img src="/storage/{{$main->image}}" alt="{{$main->name}}">
                                    </div>
                                    <div class="member-info">
                                        <h3 class="member-name">{{$main->name}}</h3><br>
                                        <div class="member-subtitle">{{$main->position}}</div>
                                        <div class="member-desc">
                                            <p>{{$main->reception_time}}</p>
                                        </div>
                                        <div class="social-links style1">
                                            <a href="
                                                @if ($main->twitter)
                                                    {{$main->twitter}}
                                                @else 
                                                    javascript:void(0)
                                                @endif
                                            ">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                            <a href="
                                                @if ($main->facebook)
                                                    {{$main->facebook}}
                                                @else 
                                                    javascript:void(0)
                                                @endif
                                            ">
                                                <i class="fa fa-facebook-official"></i>
                                            </a>
                                            <a href="
                                                @if ($main->linkedin)
                                                    {{$main->linkedin}}
                                                @else 
                                                    javascript:void(0)
                                                @endif
                                            ">
                                                <i class="fa fa-linkedin"></i>
                                            </a>
                                            <a href="
                                                @if ($main->email)
                                                    {{$main->email}}
                                                @else 
                                                    javascript:void(0)
                                                @endif
                                            ">
                                                <i class="fa fa-google-plus"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div><!-- /.member -->
                            @endforeach
                            {{$main_employers->links()}} 
                        </div><!-- /.flat-teammember -->

                        <div class="general-sidebar">
                            <div class="sidebar-wrap">
                                <div class="sidebar">
                                    <div class="widget widget_nav_menu">
                                        <ul class="nav_menu">
                                            <li class="menu-item">
                                                <a class="active" href="{{route('headquater', app()->getLocale())}}">@lang("Headquarter")</a>
                                            </li>
                                            <li class="menu-item">
                                                <a  href="{{route('about', app()->getLocale())}}">@lang("About association")</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="{{route('service', app()->getLocale())}}">@lang("Services")</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="sub-team.php">@lang("Territorial divisions")</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="sub-team1.php">@lang("Foreign divisions")</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="sub-team2.php">@lang("Scientific Research Center")</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="docs.php">@lang("Normative documents")</a>
                                            </li>
                                        </ul>
                                    </div><!-- /.widget_nav_menu -->

                                    <div class="widget widget_text">
                                        <div class="textwidget">
                                            <h4 class="widget_title">@lang("Presentation about association")</h4>
                                            <p>@lang("The Association of Exporters of Uzbekistan covers about 4,000 small and medium-sized businesses in almost all sectors of the economy of the Republic of Uzbekistan.") <a href="#" class="scheme2">info@uzbekmartuz.com </a></p>
                                            <form class="widget-form" action="/uyushma.pdf">
                                                <!-- <p>
                                                    <input type="text" name="EMAIL" placeholder="Your email address">
                                                </p> -->
                                                <p>
                                                    <input type="submit" value="@lang('Download')">
                                                </p>
                                            </form>
                                        </div>
                                    </div><!-- /.widget_text -->
                                </div><!-- /.sidebar -->
                            </div><!-- /.sidebar-wrap -->
                        </div><!-- /.general-sidebar -->
                    </div><!-- /.flat-wrapper -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.flat-about -->
@endsection