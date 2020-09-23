@extends('layouts.app')
@section('language')
    <li>
        <a href="{{route('service', 'en') }}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{route('service', 'ru') }}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{route('service', 'uz') }}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
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
                                <li class="trail-end">@lang("Services")</li>
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
                    <div class="general flat-testimonials">
                        <div class="general-text">
                            <h4 class="title">@lang("Services")</h4>
                            <p>@lang("The Association of Exporters of Uzbekistan offers the following services to its members:")</p>
                        </div><!-- /.general-text -->

                        <div class="flat-divider d30px"></div>

                        <div class="testimonials clearfix">
                            <div class="item-two-column">
                                <div class="testimonials-item">
                                    <div class="testimonial-content">
                                        <div class="testimonial-meta">
                                            <!-- <div class="testimonial-author">
                                                <strong class="author-name">Ҳуқуқларини ҳимоя қилиш</strong>
                                            </div> -->
                                            <blockquote>@lang("Ensuring the representation and protection of the rights and interests of the members of the Association in government agencies and in foreign markets")</blockquote>
                                        </div>
                                    </div>
                                </div><!-- /.testimonials-item -->

                                <div class="flat-divider d30px"></div>

                                <div class="testimonials-item">
                                    <div class="testimonial-content">
                                        <div class="testimonial-meta">

                                            <blockquote>@lang("Supporting the activities of the members of the Association to expand the range of consumer products in foreign markets")</blockquote>
                                            <br><br><br>
                                        </div>
                                    </div>
                                </div><!-- /.testimonials-item -->

                                <div class="flat-divider d30px"></div>

                                <div class="testimonials-item">
                                    <div class="testimonial-content">
                                        <div class="testimonial-meta">
                                            
                                            <blockquote>@lang("Assisting members in developing new foreign markets and finding foreign buyers")</blockquote>
                                        </div>
                                    </div>
                                </div><!-- /.testimonials-item -->

                                <div class="flat-divider d30px"></div>

                                <div class="testimonials-item">
                                    <div class="testimonial-content">
                                        <div class="testimonial-meta">
                                            
                                            <blockquote>@lang("Improving the skills of the Association's members through training programs, trainings and seminars, including with the participation of leading international experts")</blockquote>
                                        </div>
                                    </div>
                                </div><!-- /.testimonials-item -->
                            </div><!-- /.item-two-column -->

                            <div class="item-two-column">
                                
                                <div class="testimonials-item">
                                    <div class="testimonial-content">
                                        <div class="testimonial-meta">
                                            
                                            <blockquote>@lang("Informing its members about international exhibitions and providing them with practical assistance in participating in these exhibitions.")</blockquote>
                                        </div>
                                    </div>
                                </div><!-- /.testimonials-item -->

                                <div class="flat-divider d30px"></div>

                                <div class="testimonials-item">
                                    <div class="testimonial-content">
                                        <div class="testimonial-meta">
                                            
                                            <blockquote>@lang("Legally giving advices to members of the organization on recourse to the International Court of Arbitration on the basis of agreements with foreign partners and recourse to the International Court of Arbitration for the protection of their interests")</blockquote>
                                        </div>
                                    </div>
                                </div><!-- /.testimonials-item -->

                                <div class="flat-divider d30px"></div>

                                <div class="testimonials-item">
                                    <div class="testimonial-content">
                                        <div class="testimonial-meta">
                                            
                                            <blockquote>@lang("Advertising the products of the members of the organization through their foreign offices.")</blockquote>
                                        </div>
                                    </div>
                                </div><!-- /.testimonials-item -->

                                <div class="flat-divider d30px"></div>

                                <div class="testimonials-item">
                                    <div class="testimonial-content">
                                        <div class="testimonial-meta">
                                            
                                            <blockquote>@lang("Free advertising of products on the Internet pages of the International Forum of the Association")</blockquote><br><br>
                                        </div>
                                    </div>
                                </div><!-- /.testimonials-item -->

                                {{-- <div class="flat-divider d30px"></div>

                                <div class="testimonials-item">
                                    <div class="testimonial-content">
                                        <div class="testimonial-meta">
                                            
                                            <blockquote>Уюшма аъзоларининг шартномаларини экспортдан молиялаштиргандан сўнг</blockquote><br><br><br>
                                        </div>
                                    </div>
                                </div><!-- /.testimonials-item --> --}}
                            </div><!-- /.item-two-column -->
                        </div><!-- /.testimonials -->
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
                                                <a class="" href="{{route('about', app()->getLocale())}}">@lang("About association")</a>
                                            </li>
                                            <li class="menu-item">
                                                <a class="active" href="{{route('service', app()->getLocale())}}">@lang("Services")</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="{{route('territorial', app()->getLocale())}}">@lang("Territorial divisions")</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="{{route('foreign', app()->getLocale())}}">@lang("Foreign divisions")</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="{{route('scientific', app()->getLocale())}}">@lang("Scientific Research Center")</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="{{route('docs', app()->getLocale())}}">@lang("Normative documents")</a>
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
                                            </form>
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

