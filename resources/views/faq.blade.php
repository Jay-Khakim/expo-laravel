@extends('layouts.app')
@section('language')
    <li>
        <a href="{{route('faq', 'en') }}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{route('faq', 'ru') }}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{route('faq', 'uz') }}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
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
                                <li class="trail-item"><a href="{{route('faq', app()->getLocale())}}">@lang("FAQ")</a></li>
                                <li class="trail-end">@lang("FAQ")</li>
                            </ul>                   
                        </div>
                    </div><!-- /.page-title-captions -->                        
                </div><!-- /.col-md-12 -->  
            </div><!-- /.row -->  
        </div><!-- /.container -->                      
    </div><!-- /.page-title -->

    <div class="flat-row  ">
        <div class="container">
            <div class="row">
                <div class="flat-wrapper">
                    <div class="general flat-faq">
                        <div class="general-text">
                            <h4 class="title">@lang("What are the advantages of the Association of Exporters of Uzbekistan?")</h4>
                            <p>@lang("We offer a wide range of services and assistance to our exporters who are members of our organization. Including: -study of demand and supply of foreign buyers");<br>
                            @lang("-find buyers from different countries of the world;")<br>
                            @lang("-participation in various exhibitions of the world market with your suitable products; Receive more than 20 types of services from the organization; -free consultation and others");</p>
                        </div><!-- /.clients-text -->

                        <div class="flat-accordion style1">
                            <div class="flat-toggle">
                                <h6 class="toggle-title active">@lang("What issues can the Association of Exporters of Uzbekistan help with?")</h6>
                                <div class="toggle-content">
                                    <p>@lang("- In the protection of rights");<br>
                                        @lang("- Assistance in finding partners");<br>
                                        @lang("- Consolidation in the export sector");<br>
                                        @lang("- In helping to entrepreneurs");<br>
                                        @lang("- In cooperation with organizations");<br>
                                        @lang("- Free consultations");<br>
                                    </p>                               
                                </div>
                            </div><!-- /toggle -->
                            <div class="flat-toggle">
                                <h6 class="toggle-title active">@lang("How can I become a member of the association?")</h6>
                                <div class="toggle-content">
                                    <p>@lang("It is enough to make a one call") <a class="scheme2" href="callto:+998951454502">+998 95 145-45-02</a>, @lang("or leave the information at the following link")
                                        @if (app()->getLocale() === 'en')
                                            <a href='https://form.jotform.com/202652118441447'> https://form.jotform.com/202652118441447</a>
                                        @endif
                                        @if (app()->getLocale() === 'uz')
                                            <a href='https://form.jotform.com/202573195115452'> https://form.jotform.com/202573195115452</a>
                                        @endif
                                        @if (app()->getLocale() === 'ru')
                                            <a href='https://form.jotform.com/202651416750450'> https://form.jotform.com/202651416750450</a> 
                                        @endif
                                    </p>                               
                                </div>
                            </div><!-- /toggle -->

                            <div class="flat-toggle">
                                <h6 class="toggle-title active">@lang("When was the Association of Exporters of Uzbekistan established?")</h6>
                                <div class="toggle-content">
                                    <p>@lang("THE ASSOCIATION OF EXPORTERS OF UZBEKISTAN (Certificate 40 1740, registered on September 23, 2019) was established to develop the export potential of the Republic of Uzbekistan in all areas.")</p>                               
                                </div>
                            </div><!-- /toggle -->

                            <div class="flat-toggle">
                                <h6 class="toggle-title active">@lang("What services does the Association of Exporters of Uzbekistan have?")</h6>
                                <div class="toggle-content">
                                    <p>@lang("There are free services for members as well as paid services")</p> 
                                    <p><a href="{{route('members-service', app()->getLocale())}}">@lang("More")</a></p>
                                </div>
                            </div><!-- /toggle -->
                            <div class="flat-toggle">
                                <h6 class="toggle-title active">@lang("How can I stay informed about the news of the association?")</h6>
                                <div class="toggle-content">
                                    <p>@lang("You can stay informed about the association and all other news through the special news section.")</p> 
                                    <p><a href="{{route('news', app()->getLocale())}}">@lang("More")</a></p>
                                </div>
                            </div><!-- /toggle -->
                            <div class="flat-toggle">
                                <h6 class="toggle-title active">@lang("How can I contact you?")</h6>
                                <div class="toggle-content">
                                    <p>@lang("Address"): @lang("8A, Korakamish street, Olmazor region, Tahskent city");<br>
                                        @lang("Phone"): +99871 207 00 98<br>
                                        @lang("Email address"): info@exportuz.com</p>
                                </div>
                            </div><!-- /toggle -->
                        </div><!-- /.flat-accordion -->
                    </div><!-- /.flat-clients -->                        
                </div><!-- /.flat-wrapper -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.flat-about -->

@endsection