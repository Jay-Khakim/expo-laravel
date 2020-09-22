@extends('layouts.app')
@section('language')
    <li>
        <a href="{{route('about', 'en') }}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{route('about', 'ru') }}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{route('about', 'uz') }}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
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
                                {{-- <li>Сиз ушбу манзилдасиз:</li> --}}
                                <li class="trail-item"><a href="{{route('home', app()->getLocale())}}">@lang("Main")</a></li>
                                <li class="trail-item"><a href="{{route('about', app()->getLocale())}}">@lang('Association')</a></li>
                                <li class="trail-end">@lang("About association")</li>
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
                        <div class="general company-history">
                            <div class="general-text">
                                <h4 class="title">@lang("Association of Exporters of Uzbekistan").</h4>
                                <p>@lang("Coordinating the activities of enterprises that are members of the Association, as well as the representation and protection of common property interests;")</p>
                                <p>@lang("Assisting to member companies in expanding business contacts and relationships with foreign partners, exporting products to foreign markets, as well as establishing new developments and attracting foreign investment;")</p>
                                <p>@lang("Assistance to member organizations in organizing exhibitions, fairs, presentations, conferences, business forums, cooperation exchanges in the Republic of Uzbekistan and abroad")</p>
                            </div><!-- /.general-text -->

                            <div class="flat-divider d40px"></div>

                            <ul class="history">
                                <li>
                                    <div class="year-content">
                                        <h3>@lang("September 23, 2019")</h3>
                                        <p>@lang("THE ASSOCIATION OF EXPORTERS OF UZBEKISTAN (Certificate 40 1740, registered on September 23, 2019) was established to develop the export potential of the Republic of Uzbekistan in all areas.")</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="year-content">
                                        <h3>2019</h3>
                                        <p>@lang("Cooperation with NGOs and government agencies on the Export section has been established")</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="year-content">
                                        <h3>2019</h3>
                                        <p>@lang("The Department of Identification and Analysis of Export Indicators of the Republic of Uzbekistan has been established.")</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="year-content">
                                        <h3>2020</h3>
                                        <p>@lang("EXPORT EXPRESS scientific-analytical program aired on 24 TV channels of Uzbekistan")</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="year-content">
                                        <h3>@lang("Today")</h3>
                                        <p>@lang("The Association of Exporters of Uzbekistan covers about 4,000 small and medium-sized businesses in almost all sectors of the economy of the Republic of Uzbekistan.")</p>
                                    </div>
                                </li>
                            </ul><!-- /.history -->
                        </div><!-- /.company-history -->

                        <div class="general-sidebar">
                            <div class="sidebar-wrap">
                                <div class="sidebar">
                                    <div class="widget widget_nav_menu">
                                        <ul class="nav_menu">
                                            <li class="menu-item">
                                                <a class="" href="{{route('headquater', app()->getLocale())}}">@lang("Headquarter")</a>
                                            </li>
                                            <li class="menu-item">
                                                <a class="active" href="{{route('about', app()->getLocale())}}">@lang("About association")</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="{{route('service', app()->getLocale())}}">@lang("Services")</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="{{route('territorial', app()->getLocale())}}">@lang("Territorial divisions")</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="{{route('foreign', app()->getLocale())}}">@lang("Foreign divisions")</a>
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
                                            </form>{{route('service', app()->getLocale())}}
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