@extends('layouts.app')
@section('language')
    <li>
        <a href="{{route('single-news', ['language' => 'en', 'id' => $single->id])}}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{route('single-news', ['language' => 'ru', 'id' => $single->id])}}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{route('single-news', ['language' => 'uz', 'id' => $single->id])}}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
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
                                <li class="trail-item"><a href="{{route('news', app()->getLocale())}}">@lang("The press")</a></li>
                                <li class="trail-end">@lang("News")</li>
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
                <div class="content-wrap">
                    <div class="main-content">
                        <div class="main-content-wrap">
                            <div class="content-inner">
                                <article class="blog-post">
                                    <div class="entry-wrapper">
                                        <div class="entry-header">
                                            <h4 class="entry-time">
                                                <span class="entry-day">{{$single->created_at->format('d')}}</span>
                                                <span class="entry-month">
                                                    @if ($single->created_at->format('m') == 1)
                                                        @lang("Jan")
                                                    @endif
                                                    @if ($single->created_at->format('m') == 2)
                                                        @lang("Feb")
                                                    @endif
                                                    @if ($single->created_at->format('m') == 3)
                                                        @lang("Mar")
                                                    @endif
                                                    @if ($single->created_at->format('m') == 4)
                                                        @lang("Apr")
                                                    @endif
                                                    @if ($single->created_at->format('m') == 5)
                                                        @lang("May")
                                                    @endif
                                                    @if ($single->created_at->format('m') == 6)
                                                        @lang("Jun")
                                                    @endif
                                                    @if ($single->created_at->format('m') == 7)
                                                        @lang("Jul")
                                                    @endif
                                                    @if ($single->created_at->format('m') == 8)
                                                        @lang("Aug")
                                                    @endif
                                                    @if ($single->created_at->format('m') == 9)
                                                        @lang("Sep")
                                                    @endif
                                                    @if ($single->created_at->format('m') == 10)
                                                        @lang("Okt")
                                                    @endif
                                                    @if ($single->created_at->format('m') == 11)
                                                        @lang("Nov")
                                                    @endif
                                                    @if ($single->created_at->format('m') == 12)
                                                        @lang("Dec")
                                                    @endif
                                                </span>
                                                <span class="entry-year">{{$single->created_at->format('Y')}}</span>
                                            </h4>
                                            <div class="entry-header-content">
                                                <h4 class="entry-title">
                                                    <a href="javascript:void(0)">{{$single->title}}</a>
                                                </h4>
                                                <div class="entry-meta">
                                                    <i class="fa fa-user"></i>
                                                    <span class="entry-author"><a href="javascript:void(0)">@lang("PR manager")</a></span>
                                                    {{-- <i class="fa fa-comment"></i>
                                                    <span class="entry-comments-link"><a href="#">0 Комментария</a></span> --}}
                                                </div>
                                            </div><!-- /.entry-header-content -->
                                        </div><!-- /.entry-header -->

                                        <div class="entry-cover">
                                            <a href="javascript:void(0)">
                                                <img style="width:100%" src="/storage/{{$single->image1}}" alt="{{$single->title}}">
                                            </a>
                                        </div><!-- /.entry-cover -->

                                        <div class="entry-content">
                                            <p> {!!$single->intro!!} </p>
                                            @if ($single->image2)
                                                <div class="entry-cover">
                                                    <a href="#21">
                                                        <img src="/storage/{{$single->image2}}" alt="{{$single->title}}">
                                                    </a>
                                                </div><!-- /.entry-cover -->
                                            @endif
                                            <div class="general-text">
                                                <p>
                                                    <strong> {!!$single->highlighted!!}</strong>
                                                </p>
                                                @if ($single->image3)
                                                    <div class="entry-cover">
                                                        <a href="#21">
                                                            <img src="/storage/{{$single->image3}}" alt="{{$single->title}}">
                                                        </a>
                                                    </div><!-- /.entry-cover -->
                                                @endif
                                                @if ($single->body)
                                                    <ul class="flat-list style1 style2">
                                                        <li> {!!$single->body!!} </li>  
                                                    </ul>
                                                @endif
                                                <div class="flat-divider d30px"></div>
                                                @if ($single->image4)
                                                    <div class="entry-cover">
                                                        <a href="#21">
                                                            <img src="/storage/{{$single->image4}}" alt="{{$single->title}}">
                                                        </a>
                                                    </div><!-- /.entry-cover -->
                                                @endif
                                                <p> {!!$single->conclusion!!} </p>                                
                                            </div>
                                        </div><!-- /.entry-content -->
                                    </div><!-- /.entry-wrapper -->
                                </article><!-- /.blog-post -->
                            </div><!-- /.content-inner -->
                        </div><!-- /.main-content-wrap -->
                    </div><!-- /.main-content -->

                    <div class="sidebars">
                        <div class="sidebars-wrap">
                            <div class="sidebar">
                                <div class="widget widget_recent_entries">
                                    <h4 class="widget-title">@lang("Latest news")</h4>
                                    <ul>
                                        @foreach ($latests as $last)
                                            <li>
                                                <a href="{{route('single-news', [app()->getLocale(), $last->id])}}"> {{$last->title}} </a>
                                                <span class="post-date">
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
                                                    {{$last->created_at->format('d')}}, {{$last->created_at->format('Y')}}</span>
                                            </li>
                                        @endforeach
                                        
                                        {{-- <li>
                                            <a href="#">ҚҚСНИ ҚАЙТАРИШ ЭНДИ БАРЧА УЧУН…</a>
                                            <span class="post-date">Август 24, 2020</span>
                                        </li>
                                        <li>
                                            <a href="#">РОССИЯНИНГ НОВОСИБИРСК ВИЛОЯТИГА 200 ТОННА ОЛМА ЭКСПОРТ ҚИЛИНДИ.</a>
                                            <span class="post-date">Август 28, 2020</span>
                                        </li> --}}
                                    </ul>
                                </div><!-- /.widget_recent_entries -->

                                <div class="widget widget_categories">
                                    <h4 class="widget-title">@lang("Categories")</h4>
                                    <ul>
                                        <li><a href="{{route('category-news', [app()->getLocale(), 'export'])}}">@lang("Export news")</a></li>
                                        <li><a href="{{route('category-news', [app()->getLocale(), 'import-news'])}}">@lang("Import news")</a></li>
                                        <li><a href="#">@lang("Official Meetings")</a></li>
                                        <li><a href="{{route('category-news', [app()->getLocale(), 'association'])}}">@lang("Association news")</a></li>
                                    </ul>
                                </div><!-- /.widget_categories -->

                                <div class="widget widget_text">
                                    <div class="textwidget">
                                        <div class="content-text">
                                            <h4 class="title">@lang("About the activities of the association")</h4>
                                            <p>@lang("Detailed information on the activities of the Exporters' Association of Uzbekistan, its tasks and activities should be provided at the following link").</p>
                                            <p><a class="button" href="{{route('about', app()->getLocale())}}">@lang("See")</a></p>
                                        </div>
                                    </div><!-- /.textwidget -->
                                </div><!-- /.widget_text -->
                            </div><!-- /.sidebar -->
                        </div><!-- /.sidebars-wrap -->
                    </div><!-- /.sidebars -->
                </div><!-- /.content-wrap  -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.blog -->
@endsection
