@extends('layouts.app')
@section('language')
    <li>
        <a href="{{route('members-service', 'en') }}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{route('members-service', 'ru') }}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{route('members-service', 'uz') }}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
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
                                <li class="trail-end">@lang("Services")</li>
                            </ul>                   
                        </div>
                    </div><!-- /.page-title-captions -->                        
                </div><!-- /.col-md-12 -->  
            </div><!-- /.row -->  
        </div><!-- /.container -->                      
    </div><!-- /.page-title -->


    <div class="container">
            <div class="row">
                <h3 align="center">@lang("FREE SERVICES FOR MEMBERS")</h3>            
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th style="width: 10%"><b>№</b></th>
                            <th><b>@lang("Name of free services")</b></th>
                            
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>@lang("Placement of products in the Uzbekmart online showroom") </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>@lang("Submission of trade proposals from foreign countries")</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>@lang("Providing primary legal advice on the activities of exporters")</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>@lang("Assistance in participation in exhibitions in foreign countries free of charge or on a discount basis")</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>@lang("Free consultations on transport and logistics")</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>@lang("Providing legal advice on issues related to customs clearance")</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>@lang("Providing discounts from hotels throughout the country (according to the list)")</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>@lang("Practical assistance in obtaining business visas of foreign countries")</td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>@lang("Provide practical assistance in establishing contacts with government agencies")</td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td>@lang("Practical assistance in improving skills related to export and marketing, participation in seminars, trainings")</td>
                        </tr>
                        <tr>
                            <td>11</td>
                            <td>@lang("Practical assistance in obtaining advertising on a discount basis through foreign and local media")</td>
                        </tr>
                        <tr>
                            <td>12</td>
                            <td>@lang("15% discount on escort of trucks in the territory of the Republic of Kazakhstan")</td>
                        </tr>
                        </tbody>
                    </table>

                        <h3 align="center">@lang("PAID SERVICES")</h3> 
                        <p style="color: red; text-align: center;">@lang("After the implementation of these paid services, the established amount of money (1-2%) will be paid.")</p>           
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th style="width: 10%"><b>№</b></th>
                            <th></th>
                            <th><b>@lang("For members")<br></b></th>
                            <th><b>@lang("For non-members")</b></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>@lang("Practical assistance in obtaining subsidies to cover transportation costs")</td>
                            <td>1 %</td>
                            <td>2 %</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>@lang("Practical assistance in VAT refund")</td>
                            <td>1 %</td>
                            <td>2 %</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>@lang("Provide practical assistance in obtaining 'GAP, Halal, HACCP' certificates on a subsidized basis in order to accelerate the export of products to foreign markets")</td>
                            <td>1 %</td>
                            <td>2 %</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>@lang("Practical assistance in obtaining an insurance policy (EXPORT insurance policy) with a subsidy")</td>
                            <td>1 %</td>
                            <td>2 %</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>@lang("Practical assistance in the protection of the rights and interests of exporters in the judiciary")</td>
                            <td>1 %</td>
                            <td>2 %</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>@lang("Execution of the organization's products in showrooms and trading houses in foreign countries by agreement")</td>
                            <td>1 %</td>
                            <td>2 %</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>@lang("Placement of products at local trade fairs and permanent markets")</td>
                            <td>1 %</td>
                            <td>2 %</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>@lang("Assistance in attracting foreign investors")</td>
                            <td>1 %</td>
                            <td>2 %</td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>@lang("Finding buyers for foreign products")</td>
                            <td>1 %</td>
                            <td>2 %</td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td>@lang("Practical assistance in debt collection")</td>
                            <td>1 %</td>
                            <td>2 %</td>
                        </tr>
                        <tr>
                            <td>11</td>
                            <td>@lang("Practical assistance in the process of land acquisition 'E_auksion'")</td>
                            <td>1 %</td>
                            <td>2 %</td>
                        </tr>
                        </tbody>
                    </table>
                    <p class="text-right">+998 99 702 00 00,+998 90 007 68 65,+998 71 207 00 98<br>      
                    <a href="{{route('home', app()->getLocale())}}">www.exportuz.com</a>, <a href="http://uzbekmart.com">www.uzbekmart.com</a> 
                    </p>
            </div>
        </div>
@endsection