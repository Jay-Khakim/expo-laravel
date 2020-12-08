@extends('layouts.app')
@section('language')
    <li>
        <a href="{{route('benefits', 'en') }}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{route('benefits', 'ru') }}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{route('benefits', 'uz') }}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
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
                                <li class="trail-end">@lang("Benefits")</li>
                            </ul>                   
                        </div>
                    </div><!-- /.page-title-captions -->                        
                </div><!-- /.col-md-12 -->  
            </div><!-- /.row -->  
        </div><!-- /.container -->                      
    </div><!-- /.page-title -->

    <div class="flat-row pad-bottom0px">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <h3 class="title-training-programs no-margin-top">@lang("Benefits of the Association of Exporters of Uzbekistan")</h3>
                </div><!-- /.col-md-8 -->
            </div><!-- /.row -->

            <div class="flat-divider d40px"></div>

            <div class="row">
                <div class="col-md-6">
                    <p>@lang("We offer a wide range of services and assistance to our exporters who are members of our association. In particular"):<br><br>
                        -@lang("studying the demand and supply of foreign buyers");<br>
                        -@lang("дунёнинг турли мамлакатларидан харидор топиш");<br>
                        -@lang("participating in various exhibitions of the world market with your suitable products");<br><br> 
                        @lang("Receiving more than 20 types of services from the organization");<br> 
                        -@lang("free consultation and more").;<br>
                    </p>                      
                    <p>@lang("In addition, the Exporters' Association of Uzbekistan will help you work with government agencies and find solutions to your problems. Another innovation is that our organization is working to unite all organizations in the country and establish a research center. The main organization protects the rights of its members under the law").<br>
                    <br><b>@lang("We are glad that you are with us")!!!</b> </p>
                    <p>&nbsp;</p>
                </div><!-- /.col-md-6 -->

                <div class="col-md-6">
                    <img src="/images/training/1.jpg" alt="images">
                </div><!-- /.col-md-6 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.flat-row -->

    <div class="flat-divider d60px"></div>

    <div class="flat-row background-f1f2f8 pad-bottom70px">
            <div class="container">
                <div class="row">
                    <div class="flat-wrapper">
                        <div class="flat-title-button">
                            <h3 class="title"><i class="fa fa-line-chart"></i>@lang("Activities of the Association")</h3>
                            {{-- <p><a class="button sm" href="join2.php">@lang("See all")</a></p> --}}
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
    <hr>
    <div class="flat-row pad-top70px pad-bottom70px">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="flat-contact-us">
                        <h2 class="title no-margin-top">@lang("Become a member of the association right now")!</h2>
                        <h4 class="desc no-margin-top">@lang("To become a member now, call us") <a class="scheme2" href="callto:+998951454502">+998 95 145-45-02</a>, @lang("or use the link below") </h4>
                        <a class="button lg" 
                        @if (app()->getLocale() === 'en')
                            href="https://form.jotform.com/202652118441447"
                        @endif
                        @if (app()->getLocale() === 'uz')
                            href="https://form.jotform.com/202573195115452"
                        @else 
                            href="https://form.jotform.com/202651416750450"
                        @endif
                        >@lang("membership")</a>
                    </div>
                </div><!-- /.col-md-8 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.flat-row -->
@endsection