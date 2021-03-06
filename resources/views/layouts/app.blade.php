<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    {{-- <meta name="viewport" content="width=device-width, initial-scale=1"> --}}

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@lang("Association of Exporters of Uzbekistan")</title>
    <meta name="author" content="MBM IT Company">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" type="text/css" href="{{asset("/stylesheets/bootstrap.css")}}" >
    <link rel="stylesheet" type="text/css" href="{{asset("/stylesheets/style.css")}}">
    <link rel="stylesheet" type="text/css" href="{{asset("/stylesheets/responsive.css")}}">
    <link rel="stylesheet" type="text/css" href="{{asset("/stylesheets/colors/color5.css")}}" id="colors">
    <link rel="stylesheet" type="text/css" href="{{asset("/stylesheets/animate.css")}}">
    <link href="/icon/apple-touch-icon-48-precomposed.png" rel="apple-touch-icon-precomposed" sizes="48x48">
    <link href="/icon/apple-touch-icon-32-precomposed.png" rel="apple-touch-icon-precomposed">
    <link href="/icon/favicon.png" rel="shortcut icon">
    @yield('css')

    {{-- Jot form --}}
    @if (app()->getLocale() === 'en')
        <script src="https://form.jotform.com/static/feedback2.js" type="text/javascript"> new JotformFeedback({ formId: "202652118441447", buttonText: "@lang('Membership.')", base: "https://form.jotform.com/", background: "#1CBAC8", fontColor: "#FFFFFF", buttonSide: "right", buttonAlign: "center", type: false, width: 700, height: 500, isCardForm: false }); 
    </script>
    @endif
    @if (app()->getLocale() === 'uz')
        <script src="https://form.jotform.com/static/feedback2.js" type="text/javascript"> new JotformFeedback({ formId: "202573195115452", buttonText: "@lang('Membership.')", base: "https://form.jotform.com/", background: "#1CBAC8", fontColor: "#FFFFFF", buttonSide: "right", buttonAlign: "center", type: false, width: 700, height: 500, isCardForm: false }); 
    </script>
    @endif
    @if(app()->getLocale() === 'ru')
        <script src="https://form.jotform.com/static/feedback2.js" type="text/javascript"> new JotformFeedback({ formId: "202651416750450", buttonText: "@lang('Membership.')", base: "https://form.jotform.com/", background: "#1CBAC8", fontColor: "#FFFFFF", buttonSide: "right", buttonAlign: "center", type: false, width: 700, height: 500, isCardForm: false }); 
    </script>
    @endif
    

    <!-- Scripts -->
    {{-- <script src="{{ asset('js/app.js') }}" defer></script>  --}}

    <!-- Fonts -->
    {{-- <link rel="dns-prefetch" href="//fonts.gstatic.com"> --}}
    {{-- <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet"> --}}

    <!-- Styles -->
    {{-- <link href="{{ asset('css/app.css') }}" rel="stylesheet">  --}}
</head>
<body class="header-sticky page-loading">
    <div class="boxed">
        @include('inc.header')

        @yield('content')


        @include('inc.footer')

        <!-- Go Top -->
        <a class="go-top">
            <i class="fa fa-chevron-up"></i>
        </a> 
    </div>


    <!-- Javascript -->
    <script type="text/javascript" src="/javascript/jquery.min.js"></script>
    <script type="text/javascript" src="/javascript/bootstrap.min.js"></script>
    <script type="text/javascript" src="/javascript/jquery.easing.js"></script> 
    <script type="text/javascript" src="/javascript/owl.carousel.js"></script> 
    <script type="text/javascript" src="/javascript/jquery-waypoints.js"></script>
    <script type="text/javascript" src="/javascript/jquery.fancybox.js"></script>
    <script type="text/javascript" src="/javascript/jquery.cookie.js"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCIm1AxfRgiI_w36PonGqb_uNNMsVGndKo&v=3.7"></script>
    <script type="text/javascript" src="/javascript/gmap3.min.js"></script>
    <script type="text/javascript" src="/javascript/parallax.js"></script>
    <!-- <script type="text/javascript" src="javascript/switcher.js"></script> -->
    <script type="text/javascript" src="/javascript/smoothscroll.js"></script>
    <script type="text/javascript" src="/javascript/jquery-validate.js"></script>
    <script type="text/javascript" src="/javascript/main.js"></script>

    <!-- Revolution Slider -->
    <script type="text/javascript" src="/javascript/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="/javascript/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="/javascript/slider.js"></script>
    @yield('custom_js')
</body>
</html>
