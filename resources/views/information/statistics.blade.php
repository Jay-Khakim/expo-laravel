@extends('layouts.app')
@section('language')
    <li>
        <a href="{{route('statistics', 'en') }}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{route('statistics', 'ru') }}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{route('statistics', 'uz') }}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
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
                                <li class="trail-item"><a href="{{route('statistics', app()->getLocale())}}">@lang("Information")</a></li>
                                <li class="trail-end">@lang("Statistics")</li>
                            </ul>                   
                        </div>
                    </div><!-- /.page-title-captions -->                        
                </div><!-- /.col-md-12 -->  
            </div><!-- /.row -->  
        </div><!-- /.container -->                      
    </div><!-- /.page-title -->

    <div class="blog">
            <div class="container">
            <div class="row">
            <div class="col-md-6 ">
                <div class="card">
                    <div class="card-body">
                        <p align="center">@lang("Export and import indicators")</p>
                        <hr>
                    </div>
                    <div class="card-body">
                        <canvas id="myChart"></canvas>
                        
                    </div>
                </div>
            </div>
            <div class="col-md-6 ">
                <div class="card">
                    <div class="card-body">
                        <p align="center">@lang("Export and import indicators")</p>
                        <hr>
                    </div>
                    <div class="card-body">
                        
                        <canvas id="myChart1"></canvas>
                    </div>
                </div>
            </div><br>
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <p align="center">@lang("Export and import indicators")</p>
                        <hr>
                    </div>
                    <div class="card-body">
                        
                        <canvas id="myChart2"></canvas>
                    </div>
                </div>
            </div>
            </div>
            </div>
        </div>
@endsection

@section('custom_js')
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <script type="text/javascript">
      var ctx = document.getElementById('myChart').getContext('2d');
      var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'pie',

    // The data for our dataset
    data: {
        labels: ['@lang("Uzbekistan")', '@lang("Russia")', '@lang("USA")', '@lang("Kazakhstan")', '@lang("Germany")', '@lang("Japan")'],
        datasets: [{
            label: '@lang("Export")',
            backgroundColor: ['#6699FF', '#3AE2CE','#00FFA9','yellow','pink','#FF9437'],
            borderColor: 'lightblue',
            data: [20, 30, 50, 20, 40, 30]
        }]
    },

    // Configuration options go here
    options: {}
});
      var ctx = document.getElementById('myChart1').getContext('2d');
      var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'bar',

    // The data for our dataset
    data: {
        labels: ['@lang("January")', '@lang("February")', '@lang("March")', '@lang("April")', '@lang("May")', '@lang("June")', '@lang("July")'],
        datasets: [{
            label: '@lang("Export")',
            backgroundColor: '#6699FF',
            borderColor: 'blue',
            data: [20, 30, 50, 20, 40, 30, 85]
        },
        {
            label: '@lang("Import")',
            backgroundColor: 'Red',
            // borderColor: 'pink',
            data: [2, 10, 5, 2, 20, 30, 45]
        }]
    },

    // Configuration options go here
    options: {
      tooltips: {
        mode: 'index',
      }
    }
});
       var ctx = document.getElementById('myChart2').getContext('2d');
      var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'line',

    // The data for our dataset
    data: {
        labels: ['@lang("January")', '@lang("February")', '@lang("March")', '@lang("April")', '@lang("May")', '@lang("June")', '@lang("July")'],
        datasets: [{
            label: '@lang("Export")',
            backgroundColor: '#6699FF',
            borderColor: 'blue',
            data: [20, 30, 50, 20, 40, 30, 85]
        },
        {
            label: '@lang("Import")',
            backgroundColor: 'Red',
            // borderColor: 'pink',
            data: [2, 10, 5, 2, 20, 30, 45]
        }]
    },

    // Configuration options go here
    options: {
      tooltips: {
        mode: 'index',
      }
    }
});
</script>
@endsection