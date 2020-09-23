@extends('layouts.app')
@section('language')
    <li>
        <a href="{{route('check-member', 'en') }}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{route('check-member', 'ru') }}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{route('check-member', 'uz') }}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
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
                                <li class="trail-end">@lang("Check for membership")</li>
                            </ul>                   
                        </div>
                    </div><!-- /.page-title-captions -->                        
                </div><!-- /.col-md-12 -->  
            </div><!-- /.row -->  
        </div><!-- /.container -->                      
    </div><!-- /.page-title -->

        <!-- Begin Hiraola's Content Wrapper Area -->
        <div class="hiraola-content_wrapper" style="margin-bottom: 100px;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div style="border: 2px double #1288B0; background-color: white; padding: 10px; margin-top: 10px;"> 
                            <div class="container-fluid">
                                <h2 align="center">@lang("Verification of membership in the association")</h2>   
                                <form action="{{route('check', app()->getLocale())}}" type="get">  
                                    @csrf
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th style="width: 500px;">@lang("Enter Tax Identification Number")</th>
                                                <th><input type="search" id="OKPO" name="check" style="width: 170px;" /></th>
                                            </tr>
                                        </thead>
                                    </table>
                                    <h3 align="center"><button class="btn btn-primary" style="width: 50%;">@lang("Check")</button></h3>
                                    {{-- <h3 align="center"><a href="member-res.php" style="width: 50%;" class="btn btn-primary">@lang("Check")</a></h3> --}}
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hiraola's Content Wrapper Area End Here -->

        @if ($member ?? ''>0)
                <!-- Begin Hiraola's Content Wrapper Area -->
                <div class="hiraola-content_wrapper" style="margin-bottom: 50px; margin-top: 50px;">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div style="border: 2px double #1288B0; background-color: white; padding: 10px; margin-top: 10px;"> 
                                        <div class="container-fluid">
                                        <h2 align="center">@lang("Information on membership in the association")</h2>
                                        {{-- <p align="center">(@lang("Рўйхатдан ўтказувчи ва ваколатли органлар маълумоти асосида шакллантирилди"))</p> --}}
                                        @foreach ($member ?? '' as $item)
                                            <hr>
                                            <table class="table table-striped table-hover">
                                                <thead>
                                                <tr>
                                                    <th>@lang("Certificate status"):</th>
                                                    <th>
                                                        @if ($dt->format('Y-m-d') < $item->expiry_date->format('Y-m-d'))
                                                            <b style="color: green;">@lang("Active")
                                                        @else 
                                                            <b style="color: red;">@lang("EXPIRED")
                                                        @endif
                                                        </b></th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>@lang("Certificate number"):</td>
                                                    <td><b>{{$item->certificate_number}}</b></td>
                                                </tr>
                                                <tr>
                                                    <td>@lang("Tax Identification Number"):</td>
                                                    <td><b>{{$item->inn}}</b></td>
                                                </tr>
                                                <tr>
                                                    <td>@lang("Name of the legal entity member of the association"):</td>
                                                    <td><b>{{$item->name}}</b></td>
                                                </tr>
                                                <tr>
                                                    <td>@lang("Expiry date"):</td>
                                                    <td><b>{{$item->expiry_date->format('Y-m-d')}}</b></td>
                                                </tr>
                                                </tbody>
                                            </table>
                                            <hr>
                                        @endforeach
                                        </div>
                                        <p style="text-align: right;">@lang("Today") {{$dt->format('Y-m-d')}} </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Hiraola's Content Wrapper Area End Here -->
            
        @endif
@endsection