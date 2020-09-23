@extends('layouts.app')
@section('language')
    <li>
        <a href="{{route('single-member', ['language' => 'en', 'slug_en' => $member->slug_en])}}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{route('single-member', ['language' => 'ru', 'slug_en' => $member->slug_en])}}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{route('single-member', ['language' => 'uz', 'slug_en' => $member->slug_en])}}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
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
                                <li class="trail-item"><a href="{{route('members-list', app()->getLocale())}}">@lang("List of members")</a></li>
                                <li class="trail-end">@lang("Member")</li>
                            </ul>                   
                        </div>
                    </div><!-- /.page-title-captions -->                        
                </div><!-- /.col-md-12 -->  
            </div><!-- /.row -->  
        </div><!-- /.container -->                      
    </div><!-- /.page-title -->

    <div class="flat-row">
        <div class="container">
            <div class="row">
                <div class="flat-wrapper single-products woocommerce-page">
                    <div class="images">
                        <img src="/storage/{{$member->image}}" alt="{{$member->name}}">
                    </div>
                    <div class="summary">
                        <h3 class="product_title">{{$member->name}}</h3>
                        <div>
                            <p><strong>@lang("Certificate number") </strong> {{$member->certificate_number}}</p>
                            <p><strong>@lang("Tax Identification Number"): </strong> {{$member->inn}}</p>
                            <p><strong>@lang("Expiry date"): </strong> <b>{{$member->expiry_date->format('Y-m-d')}}</b></p>
                        </div>
                        <div class="description">
                            @if ($dt->format('Y-m-d') < $member->expiry_date->format('Y-m-d'))
                                <p class="price">@lang("A MEMBER OF THE ASSOCIATION OF EXPORTS OF UZBEKISTAN")</p>
                            @else 
                                <p class="price text-danger">@lang("THE MEMBERSHIP IS EXPIRED!")</p>
                            @endif
                            
                        </div>
                        <form class="cart" action="/storage/certificate{{$member->file}}">
                            <button type="submit" class="single_add_to_cart_button button alt">@lang("Certificate")</button>
                        </form>
                    </div><!-- /.summary -->

                    <div class="flat-tabs woocommerce-tabs">
                        <ul class="menu-tabs">
                            <li class="active"><a href="javascript:void(0)">@lang("Description")</a></li>
                        </ul>
                        <div class="content-tab">
                            <div class="content-inner">
                                <p>{!!$member->desc!!}</p>
                            </div><!-- /.content-inner -->

                            

                        </div><!-- /.content-tab -->
                    </div><!-- /.flat-tabs -->

                    
                </div><!-- /.flat-wrapper -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.flat-about -->
@endsection