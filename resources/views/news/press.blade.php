@extends('layouts.app')
@section('language')
    <li>
        <a href="{{route('press', 'en') }}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{route('press', 'ru') }}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{route('press', 'uz') }}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
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
                                <li class="trail-end">@lang("The press")</li>
                            </ul>                   
                        </div>
                    </div><!-- /.page-title-captions -->                        
                </div><!-- /.col-md-12 -->  
            </div><!-- /.row -->  
        </div><!-- /.container -->                      
    </div><!-- /.page-title -->

     <div class="flat-row ">
            <div class="container">
                <div class="row">
                    <div class="flat-wrapper">
                        <div class="general flat-awards-recognition">

                            <div class="awards-recognition">
                                @foreach ($news as $item)
                                    <div class="awards-recognition-item">
                                        <div class="ar-content">
                                            <p><strong>{{$item->title}}</strong></p>
                                            <p>{{$item->intro}}</p>
                                        </div>
                                    </div><!-- /.awards-recognition-item -->
                                @endforeach

                            </div><!-- /.awards-recognition -->
                            {{$news->links()}}
                        </div><!-- /.company-history -->

                        
                    </div><!-- /.flat-wrapper -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.flat-about -->
@endsection