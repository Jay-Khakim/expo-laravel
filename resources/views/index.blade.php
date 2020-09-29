@extends('layouts.app')

@section('language')
    <li>
        <a href="{{ url( 'en') }}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{ url( 'ru') }}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{ url( 'uz') }}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
    </li>
@endsection

@section('content')

     <!-- Slider -->
    <div class="tp-banner-container">
        <div class="tp-banner" >
            <ul>
                @foreach ($banner_news as $news)
                    <li data-transition="random-static" data-slotamount="7" data-masterspeed="1000" data-saveperformance="on">
                        <img src="/storage/{{$news->image1}}" alt="{{$news->title}}" />
                        <div class="tp-caption sfl title-slide center" data-x="40" data-y="111" data-speed="1000" data-start="1000" data-easing="Power3.easeInOut">
                            <div class="break">
                                <p id="slider" style="color: white;">{{$news->title}}</p>
                            </div>
                        </div>
                        <div class="tp-caption sfr desc-slide center" data-x="40" data-y="272" data-speed="1000" data-start="1500" data-easing="Power3.easeInOut">
                            <p style="color: white;">{{$news->subtitle}}</p>
                        </div>
                        <div class="tp-caption sfl flat-button-slider" data-x="40" data-y="323" data-speed="1000" data-start="2000" data-easing="Power3.easeInOut"><a href="#">@lang("More")</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-chevron-right"></i></div>
                    </li>
                @endforeach
            </ul>
        </div>
    </div>

    <div class="flat-row pad-top10px pad-bottom40px">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="no-margin-top no-margin-bottom f-size16px">@lang("Join to the Association of Exporters of Uzbekistan and develop your export") <a class="link" href="join.php">@lang("Become a member")</a></h3>
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.flat-row -->

    <div class="flat-row flat-latest-news pad-bottom70px">
        <div class="container">
            <div class="row">
                <div class="flat-wrapper">
                    <div class="flat-title-button">
                        <h3 class="title"><i class="fa fa-newspaper-o"></i>@lang("Latest news")</h3>
                        <p><a class="button sm" href="blog-v1.php">@lang("See all")</a></p>
                    </div>
                </div><!-- /.flat-wrapper -->
            </div><!-- /.row -->

            <div class="flat-divider d30px"></div>

            <div class="row">
                <div class="col-md-8">
                    <div class="row">

                        @foreach ($latests as $last)
                           <div class="col-md-6">
                                <article class="blog-posts">
                                    <div class="entry-wrapper">
                                        <div class="entry-cover">
                                            <h4 class="entry-time">
                                                <span class="entry-day">{{$last->created_at->format('d')}}</span>
                                                <span class="entry-month">
                                                    @if ($last->created_at->format('m') == 1)
                                                        @lang("Jan")
                                                    @endif
                                                    @if ($last->created_at->format('m') == 2)
                                                        @lang("Feb")
                                                    @endif
                                                    @if ($last->created_at->format('m') == 3)
                                                        @lang("Mar")
                                                    @endif
                                                    @if ($last->created_at->format('m') == 4)
                                                        @lang("Apr")
                                                    @endif
                                                    @if ($last->created_at->format('m') == 5)
                                                        @lang("May")
                                                    @endif
                                                    @if ($last->created_at->format('m') == 6)
                                                        @lang("Jun")
                                                    @endif
                                                    @if ($last->created_at->format('m') == 7)
                                                        @lang("Jul")
                                                    @endif
                                                    @if ($last->created_at->format('m') == 8)
                                                        @lang("Aug")
                                                    @endif
                                                    @if ($last->created_at->format('m') == 9)
                                                        @lang("Sep")
                                                    @endif
                                                    @if ($last->created_at->format('m') == 10)
                                                        @lang("Okt")
                                                    @endif
                                                    @if ($last->created_at->format('m') == 11)
                                                        @lang("Nov")
                                                    @endif
                                                    @if ($last->created_at->format('m') == 12)
                                                        @lang("Dec")
                                                    @endif
                                                    {{-- {{$last->created_at->format('M')}} --}}
                                                
                                                </span>
                                            </h4>
                                            <a href="news-sub.php"><img src="/storage/{{$last->image1}}" alt="{{$last->title}}"></a>
                                        </div>
                                        <div class="entry-content-wrap">
                                            <div class="entry-header">
                                                <h2 class="entry-title">
                                                    <a href="news-sub.php">{{$last->title}}</a>
                                                </h2>
                                            </div>
                                            <div class="entry-footer">
                                                <div class="entry-meta">
                                                    <span class="entry-author"><a href="#">@lang("Headquarter")</a></span>
                                                    <span class="entry-categories"><a href="#">@lang("PR manager")</a></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </div><!-- /.col-md-6 --> 
                        @endforeach
                    </div>
                </div><!-- /.col-md-8 -->

                <div class="col-md-4">
                    @foreach ($right_side_latests as $item)
                        <article class="latest-post">
                            <div class="entry-wrapper clearfix">
                                <div class="entry-cover">
                                    <a href="news.php"><img src="/storage/{{$item->image1}}" width="130" alt="images"></a>
                                </div>
                                <div class="entry-content-wrap">
                                    <div class="entry-header">
                                        <h2 class="entry-title">
                                            <a href="news.php">{{$item->title}}</a>
                                        </h2>
                                    </div>
                                    <div class="entry-footer">
                                        <div class="entry-meta">
                                            <span class="entry-author"><a href="#">@lang("Headquarter")</a></span>
                                            <span class="entry-categories"><a href="#">@lang("PR manager")</a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                    @endforeach
                </div><!-- /.col-md-4 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.flat-row -->

    <div class="flat-row pad-top0px">
            <div class="container">
                <div class="row">
                    <div class="flat-wrapper">
                        <div class="flat-imagebox clearfix">
                            <div class="item-three-column">
                                <div class="imagebox">
                                    <div class="box-wrapper">
                                        <div class="box-image">
                                            <img src="images/imagebox/1.jpg" alt="images">
                                        </div>
                                        <div class="box-header">
                                            <h5 class="box-title">
                                                <a href="{{route('category-news', [app()->getLocale(), 'Mukhtor-Umarov'])}}">@lang("About the Chairman of the Board")</a>
                                            </h5>
                                        </div>
                                        <div class="box-content">
                                            <div class="box-desc">@lang("All news about Mukhtor Umarov, the chairman of the Association of Exporters of Uzbekistan.")</div>
                                            <a class="button style1" href="{{route('category-news', [app()->getLocale(), 'Mukhtor-Umarov'])}}">@lang("More")</a>
                                        </div>
                                    </div>
                                </div><!-- /.imagebox -->
                            </div><!-- /.item-three-column -->

                            <div class="item-three-column">
                                <div class="imagebox">
                                    <div class="box-wrapper">
                                        <div class="box-image">
                                            <img src="images/imagebox/2.jpg" alt="images">
                                        </div>
                                        <div class="box-header">
                                            <h5 class="box-title">
                                                <a href="{{route('category-news', [app()->getLocale(), 'association'])}}">@lang("Association news")</a>
                                            </h5>
                                        </div>
                                        <div class="box-content">
                                            <div class="box-desc">@lang("All news about the Association of Exporters of Uzbekistan")</div>
                                            <a class="button style1" href="{{route('category-news', [app()->getLocale(), 'association'])}}">@lang("More")</a>
                                        </div>
                                    </div>
                                </div><!-- /.imagebox -->
                            </div><!-- /.item-three-column -->

                            <div class="item-three-column">
                                <div class="imagebox">
                                    <div class="box-wrapper">
                                        <div class="box-image">
                                            <img src="images/imagebox/3.jpg" alt="images">
                                        </div>
                                        <div class="box-header">
                                            <h5 class="box-title">
                                                <a href="{{route('events', app()->getLocale())}}">@lang('Official Meetings')</a>
                                            </h5>
                                        </div>
                                        <div class="box-content">
                                            <div class="box-desc">@lang("About official meetings of the Association of Exporters of Uzbekistan.")</div>
                                            <a class="button style1" href="{{route('events', app()->getLocale())}}">@lang("More")</a>
                                        </div>
                                    </div>
                                </div><!-- /.imagebox -->
                            </div><!-- /.item-three-column -->
                        </div><!-- /.flat-imagebox -->
                    </div><!-- /.flat-wrapper -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.flat-row -->


        <div class="flat-row background-f1f2f8 pad-bottom70px">
            <div class="container">
                <div class="row">
                    <div class="flat-wrapper">
                        <div class="flat-title-button">
                            <h3 class="title"><i class="fa fa-line-chart"></i>@lang("Activities of the Association")</h3>
                            <p><a class="button sm" href="{{route('benefits', app()->getLocale())}}">@lang("See all")</a></p>
                        </div>
                    </div><!-- /.flat-wrapper -->
                </div><!-- /.row -->

                <div class="flat-divider d30px"></div>

                <div class="row">
                    <div class="flat-wrapper">
                        <div class="flat-iconbox clearfix">
                            <div class="item-three-column">
                                <div class="iconbox">
                                    <div class="box-header">
                                        <div class="box-icon">
                                            <i class="fa fa-shield"></i>
                                        </div>
                                        <h4 class="box-title">@lang("Protection of rights")</h4>
                                    </div>
                                    <div class="box-content">
                                        @lang("Protecting the rights and interests of exporting and importing entrepreneurs")
                                        <p class="box-readmore">
                                            <a href="join2.php">@lang("More")</a>
                                        </p>
                                    </div>
                                </div><!-- /.iconbox -->
                            </div><!-- /.item-three-column -->

                            <div class="item-three-column">
                                <div class="iconbox">
                                    <div class="box-header">
                                        <div class="box-icon">
                                            <i class="fa fa-user-plus"></i>
                                        </div>
                                        <h4 class="box-title">@lang("Assistance in finding partners")</h4>
                                    </div>
                                    <div class="box-content">
                                        @lang("Assistance to entrepreneurs in finding investors and financial institutions")<br>
                                        <p class="box-readmore">
                                            <a href="join2.php">@lang("More")</a>
                                        </p>
                                    </div>
                                </div><!-- /.iconbox -->
                            </div><!-- /.item-three-column -->

                            <div class="item-three-column">
                                <div class="iconbox">
                                    <div class="box-header">
                                        <div class="box-icon">
                                            <i class="fa fa-bar-chart-o"></i>
                                        </div>
                                        <h4 class="box-title">@lang("Consolidation in the export segment")</h4>
                                    </div>
                                    <div class="box-content">
                                        @lang("Consolidation of association and various organizations in the export sector.")
                                        <p class="box-readmore">
                                            <a href="join2.php">@lang("More")</a>
                                        </p>
                                    </div>
                                </div><!-- /.iconbox -->
                            </div><!-- /.item-three-column -->

                            <div class="item-three-column">
                                <div class="iconbox">
                                    <div class="box-header">
                                        <div class="box-icon">
                                            <i class="fa fa-line-chart"></i>
                                        </div>
                                        <h4 class="box-title">@lang("Assistance to entrepreneurs")</h4>
                                    </div>
                                    <div class="box-content">
                                        @lang("Providing practical assistance to entrepreneurs in entering foreign markets")
                                        <p class="box-readmore">
                                            <a href="join2.php">@lang("More")</a>
                                        </p>
                                    </div>
                                </div><!-- /.iconbox -->
                            </div><!-- /.item-three-column -->
                            <div class="item-three-column">
                                <div class="iconbox">
                                    <div class="box-header">
                                        <div class="box-icon">
                                            <i class="fa fa-dollar"></i>
                                        </div>
                                        <h4 class="box-title">@lang("Trading houses and foreign exhibitions")</h4>
                                    </div>
                                    <div class="box-content">
                                        @lang("Placement of products in trading houses in abroad and participation in foreign exhibitions.")
                                        <p class="box-readmore">
                                            <a href="join2.php">@lang("More")</a>
                                        </p>
                                    </div>
                                </div><!-- /.iconbox -->
                            </div><!-- /.item-three-column -->

                            <div class="item-three-column">
                                <div class="iconbox">
                                    <div class="box-header">
                                        <div class="box-icon">
                                            <i class="fa fa-bank"></i>
                                        </div>
                                        <h4 class="box-title">@lang("Cooperation with organizations")</h4>
                                    </div>
                                    <div class="box-content">
                                        @lang("Establishing cooperation with non-governmental organizations in abroad")
                                        <p class="box-readmore">
                                            <a href="join2.php">@lang("More")</a>
                                        </p>
                                    </div>
                                </div><!-- /.iconbox -->
                            </div><!-- /.item-three-column -->

                            
                        </div><!-- /.flat-iconbox -->
                    </div><!-- /.flat-wrapper -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.flat-row -->

        <div class="counter-them">
            <div  class="container" >
                <div class="flat-counter">
                    <div class="item-four-column">
                        <div class="counter">
                            <div class="counter-image">
                                <i class="fa fa-user"></i>
                            </div>
                            <div class="counter-content">
                                <span class="numb-count" data-to="40" data-speed="3000" data-waypoint-active="yes">40</span>
                                <span class="counter-suffix">@lang("employees")</span>
                            </div>
                            <div class="counter-title">@lang("Employees of the association throughout the country")</div>
                        </div>
                    </div>

                    <div class="item-four-column">
                        <div class="counter">
                            <div class="counter-image">
                                <i class="fa fa-users"></i>
                            </div>
                            <div class="counter-content">
                                <span class="numb-count" data-to="1000" data-speed="3000" data-waypoint-active="yes">350</span>
                                <span class="counter-suffix">+</span>
                            </div>
                            <div class="counter-title">@lang("Enterprises that are members of the association")</div>
                        </div>
                    </div>

                    <div class="item-four-column">
                        <div class="counter">
                            <div class="counter-image">
                                <i class="fa fa-globe"></i>
                            </div>
                            <div class="counter-content">
                                <span class="numb-count" data-to="50" data-speed="3000" data-waypoint-active="yes">16</span>
                                <span class="counter-suffix">@lang("countries")</span>
                            </div>
                            <div class="counter-title">@lang("Representative offices in 16 countries around the world")</div>
                        </div>
                    </div>

                    <div class="item-four-column">
                        <div class="counter">
                            <div class="counter-image">
                                <i class="fa fa-trophy"></i>
                            </div>
                            <div class="counter-content">
                                <span class="numb-count" data-to="8" data-speed="3000" data-waypoint-active="yes">500+</span>
                                <span class="counter-suffix">@lang("projects")</span>
                            </div>
                            <div class="counter-title">@lang("Collection of various investment projects")</div>
                        </div>
                    </div>
                </div><!-- /.flat-counter -->
            </div>
        </div>

          <div class="flat-row pad-bottom0px background-20242e" >
            <div class="container" >
                <div class="row">
                    <div class="col-md-6">
                        <div class="title-section style1">
                            <h3 class="title"><span>@lang("Benefits of the association")</span></h3>
                        </div>

                        <div class="list-about">
                            <h4>
                                <span>
                                    <i class="fa fa-check border"></i>
                                    @lang("Relations with International Chambers of Commerce")
                                </span>
                            </h4>
                            <p><span>@lang("Liaison with International Chambers of Commerce and Industry and Trade Organizations has been established to assist entrepreneurs in our country in developing their business.")</span></p>
                        </div><!-- /.list-about -->

                        <div class="list-about">
                            <h4>
                                <span>
                                    <i class="fa fa-check border"></i>
                                    @lang("Cooperation with foreign embassies")
                                </span>
                            </h4>
                            <p><span>@lang("Cooperation with Uzbekistan embassies operating in 43 foreign countries as well as the formation of the activities of entrepreneurs in our country abroad has been established.")</span></p>
                        </div><!-- /.list-about -->

                        <div class="list-about">
                            <h4>
                                <span>
                                    <i class="fa fa-check border"></i>
                                    @lang("Relations with NGOs and government agencies")
                                </span>
                            </h4>
                            <p><span>@lang("Establishing contacts with non-governmental non-profit organizations, government agencies and establishing a single platform for exports.")</span></p>
                        </div><!-- /.list-about -->
                    </div><!-- /.col-md-6 -->

                    <div class="col-md-6">
                        <div class="title-section style1">
                            <h3 class="title"><span>@lang("Video about Association")</span></h3>
                        </div>

                        <div class="flat-divider d30px"></div>

                        <div class="flat-video-fancybox">
                            <a class="fancybox" data-type="iframe" href="https://www.youtube.com/embed/Y06xtnUDTtE?autoplay=1">
                                <img src="images/v1.jpg" alt="images">

                            </a>
                        </div><br>
                    </div><!-- /.col-md-6 -->
                </div><!-- /.row -->
                {{-- </div><!-- /.clients-image --> --}}
            </div><!-- /.container -->
        </div><!-- /.flat-row -->

        <div class="flat-row">
            <div class="container">
                <div class="row">
                    <div class="flat-wrapper">
                        <div class="flat-title-button">
                            <h3 class="title"><i class="fa fa-2x fa-users"></i>@lang("Headquarter")</h3>
                        </div>
                    </div><!-- /.flat-wrapper -->
                </div><!-- /.row -->

                <div class="flat-divider d35px"></div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="flat-testimonial">
                            @foreach ($main_employers as $employer)
                                {{-- {{dd($main_employers)}} --}}
                                <div class="testimonial">
                                    <div class="testimonial-image">
                                        <img src="/storage/{{$employer->image}}" alt="{{$employer->name}}">
                                    </div>
                                    <div class="testimonial-content">
                                        <div class="testimonial-meta">
                                            <div class="testimonial-author">
                                                <strong class="author-name">{{$employer->name}}</strong><br>
                                                <div class="author-info">
                                                    <span class="subtitle">{{$employer->position}}</span>
                                                    <!-- <span class="divider">-</span>
                                                        <a href="#" class="company">Unified</a> -->
                                                </div>
                                            </div>
                                        </div>
                                        <blockquote>
                                            <br>@lang("Headquater's personnel")</blockquote>
                                    </div>
                                </div><!-- /.testimonial -->
                            @endforeach

                        </div><!-- /.flat-testimonial -->
                    </div><!-- /.col-md-12 -->
                </div><!-- /.row -->

                <div class="flat-divider d85px"></div>

                <div class="row">
                    <div class="col-md-12">
                        <p class="view-all-testimonial">
                            <a href="team.php" class="link2">@lang("All personnel")<i class="fa fa-chevron-right"></i></a>
                        </p>
                    </div><!-- /.col-md-12 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.flat-row -->

        <div class="flat-row">
            <div class="container">
                <div class="row">
                    <div class="flat-wrapper">
                        <div class="flat-title-button">
                            <h3 class="title"><i class="fa fa-2x fa-map-marker"></i>@lang("Territorial divisions")</h3>
                        </div>
                    </div><!-- /.flat-wrapper -->
                </div><!-- /.row -->

                <div class="flat-divider d35px"></div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="flat-testimonial">
                            @foreach ($territorial_employers as $staff)
                               <div class="testimonial" id="loc">
                                    <div id="location-h4" class="owl-location-h9">
                                        <div class="item-locaition" >
                                            <h3>{{$staff->branche->name}}</h3>
                                            <div class="inner-location">
                                                <p><i class="fa fa-user" aria-hidden="true"></i>{{$staff->name}}
                                                <img src="/storage/{{$staff->image}}"  width="120" height="120" style="z-index: -1; float: right;">
                                                </p>
                                                <p><i class="fa fa-map-marker" aria-hidden="true"></i>{{$staff->position}} </p>
                                                @if ($staff->email)
                                                    <p><i class="fa fa-phone" aria-hidden="true"></i>{{$staff->email}}</p>
                                                @endif
                                            

                                            </div>
                                        </div>
                                    </div>
                                </div><!-- /.testimonial --> 
                            @endforeach

                        </div><!-- /.flat-testimonial -->
                    </div><!-- /.col-md-12 -->
                </div><!-- /.row -->
                <div class="row">
                    <div class="col-md-12">
                        <p class="view-all-testimonial">
                            <a href="sub-team.php" class="link2">@lang("All personnel")<i class="fa fa-chevron-right"></i></a>
                        </p>
                    </div><!-- /.col-md-12 -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.flat-row -->

        <div class="fluit" style="margin-bottom: -10px;">
            <iframe align="center" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d650.2518319499841!2d69.21856252920595!3d41.355331205372956!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38ae8d4e64adf79d%3A0x3a39127fd8ff297b!2sO%E2%80%99zbekiston%20Eksportchilar%20Uyushmasi!5e1!3m2!1suz!2s!4v1590062066869!5m2!1suz!2s" style="width: 100% ; height: 400px;" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        </div><!-- /#flat-map -->



@endsection