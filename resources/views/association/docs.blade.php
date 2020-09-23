@extends('layouts.app')
@section('language')
    <li>
        <a href="{{route('territorial', 'en') }}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{route('territorial', 'ru') }}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{route('territorial', 'uz') }}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
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
                                <li class="trail-item"><a href="{{route('about', app()->getLocale())}}">@lang('Association')</a></li>
                                <li class="trail-end">@lang("Normative documents")</li>
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
                            <div class="flat-iconbox clearfix">
                            <div class="item-three-column">
                                <div class="iconbox">
                                    <div class="box-header">
                                        <div class="box-icon">
                                            <i class="fa fa-bank"></i>
                                        </div>
                                        <h4 class="box-title">@lang("About foreign divisions")</h4><br>
                                    </div>
                                    <div class="box-content">
                                        <p class="box-readmore">
                                            <a href="#21">@lang("Download")</a>
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
                                        <h4 class="box-title">@lang("About freedom of entrepreneurial activity")</h4>
                                    </div>
                                    <div class="box-content">
                                        <p class="box-readmore">
                                            <a href="#21">@lang("Download")</a>
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
                                        <h4 class="box-title">@lang("Regulations on territorial divisions")</h4>
                                    </div>
                                    <div class="box-content">
                                        <p class="box-readmore">
                                            <a href="#21">@lang("Download")</a>
                                        </p>
                                    </div>      
                                </div><!-- /.iconbox -->
                            </div><!-- /.item-three-column -->
                        </div><!-- /.flat-iconbox -->
                    </div><!-- /.flat-wrapper -->
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div><!-- /.flat-about -->
@endsection