@extends('layouts.app')
@section('language')
    <li>
        <a href="{{route('events', 'en') }}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{route('events', 'ru') }}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{route('events', 'uz') }}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
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
                                <li class="trail-end">@lang("Events")</li>
                            </ul>                   
                        </div>
                    </div><!-- /.page-title-captions -->                        
                </div><!-- /.col-md-12 -->  
            </div><!-- /.row -->  
        </div><!-- /.container -->                      
    </div><!-- /.page-title -->

    <!-- Blog shortcode -->
        <div class="flat-row">
            <div class="container">
                <div class="row">
                    <div class="flat-wrapper">
                        <div class="blog-shortcode clearfix">
                            @if (count($news)>0)
                                @foreach ($news as $item)
                                    <article class="blog-posts item-three-column">
                                        <div class="entry-wrapper">
                                            <div class="entry-cover">
                                                <h4 class="entry-time">
                                                    <span class="entry-day">{{$item->created_at->format('d')}}</span>
                                                    <span class="entry-month">
                                                        @if ($item->created_at->format('m') == 1)
                                                            @lang("Jan")
                                                        @endif
                                                        @if ($item->created_at->format('m') == 2)
                                                            @lang("Feb")
                                                        @endif
                                                        @if ($item->created_at->format('m') == 3)
                                                            @lang("Mar")
                                                        @endif
                                                        @if ($item->created_at->format('m') == 4)
                                                            @lang("Apr")
                                                        @endif
                                                        @if ($item->created_at->format('m') == 5)
                                                            @lang("May")
                                                        @endif
                                                        @if ($item->created_at->format('m') == 6)
                                                            @lang("Jun")
                                                        @endif
                                                        @if ($item->created_at->format('m') == 7)
                                                            @lang("Jul")
                                                        @endif
                                                        @if ($item->created_at->format('m') == 8)
                                                            @lang("Aug")
                                                        @endif
                                                        @if ($item->created_at->format('m') == 9)
                                                            @lang("Sep")
                                                        @endif
                                                        @if ($item->created_at->format('m') == 10)
                                                            @lang("Okt")
                                                        @endif
                                                        @if ($item->created_at->format('m') == 11)
                                                            @lang("Nov")
                                                        @endif
                                                        @if ($item->created_at->format('m') == 12)
                                                            @lang("Dec")
                                                        @endif
                                                    </span>
                                                </h4>
                                                <a target="_blank" href="/storage/{{$item->image1}}"><img src="/storage/{{$item->image1}}" alt="{{$item->title}}"></a>
                                            </div>
                                            <div class="entry-content-wrap">
                                                <div class="entry-header">
                                                    <h2 class="entry-title">
                                                        <a target="_blank" href="/storage/{{$item->image1}}">{{$item->title}}</a>
                                                    </h2>
                                                </div>
                                                <div class="entry-footer">
                                                    <div class="entry-meta">
                                                        {{-- <span class="entry-author"><a href="javascript:void(0)">ВКС</a></span> --}}
                                                        <span class="entry-categories"><a href="javascript:void(0)">ZOOM</a></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </article><!-- /.blog-post -->
                                @endforeach
                            @else 
                                <h2>@lang("Nothing found!")</h2>
                            @endif
                            
                           
                        </div><!-- /.blog-shortcode -->
                        {{$news->links()}}
                    </div><!-- /.flat-wrapper -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.flat-about -->
@endsection