@extends('layouts.app')
@section('language')
    <li>
        <a href="{{route('photo', 'en') }}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{route('photo', 'ru') }}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{route('photo', 'uz') }}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
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
                                <li class="trail-item"><a href="{{route('video', app()->getLocale())}}">@lang("Media")</a></li>
                                <li class="trail-end">@lang("Gallery")</li>
                            </ul>                   
                        </div>
                    </div><!-- /.page-title-captions -->                        
                </div><!-- /.col-md-12 -->  
            </div><!-- /.row -->  
        </div><!-- /.container -->                      
    </div><!-- /.page-title -->

    <section class="flat-row">
        <div class="container">
            <div class="row">
                <div class="flat-wrapper">
                    <div class="flat-portfolio portfolio-grid">
                        <div class="portfolio"> 
                            @foreach ($photos as $photo)
                                <div class="portfolio-item item-four-column coaching consulting">
                                    <div class="portfolio-wrap">
                                        <div class="portfolio-thumbnail">
                                            <a href="/storage/{{$photo->image}}"><img src="/storage/{{$photo->image}}" alt="{{$photo->name}}"></a>
                                        </div>
                                        <div class="portfolio-info">
                                            <div class="portfolio-info-wrap">
                                                <h6 class="portfolio-title">
                                                    <a href="/storage/{{$photo->image}}" target="_blank">{{$photo->name}}</a>
                                                </h6>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- /.portfolio-item -->
                            @endforeach
                            
                        </div><!-- /.portfolio -->
                        
                    </div><!-- /.flat-portfolio -->
                    
                </div><!-- /.flat-wrapper -->
                
            </div><!-- /.row -->
            {{$photos->links()}}
        </div><!-- /.container -->
    </section>
@endsection