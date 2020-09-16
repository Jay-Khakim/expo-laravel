@extends('layouts.app')

@section('language')
    <li>
        <a href="{{ url( 'en') }}"><img src="/images/icon/1.jpg" alt="English language icon"><span>@lang("En")</span></a>
    </li>
    <li>
        <a href="{{ url( 'ru') }}"><img src="/images/icon/2.jpg" alt="Russian language icon"><span>@lang("Ru")</span></a>
    </li>
    <li>
        <a href="{{ url( 'uz') }}"><img src="/images/icon/3.jpg" alt="Uzbek Language Icon"><span>@lang("Uz")</span></a>
    </li>
@endsection

@section('content')

     <!-- Slider -->
    <div class="tp-banner-container">
        <div class="tp-banner" >
            <ul>
                <li data-transition="random-static" data-slotamount="7" data-masterspeed="1000" data-saveperformance="on">
                    <img src="images/slides/1.jpg" alt="slider-image" />
                    <div class="tp-caption sfl title-slide center" data-x="40" data-y="111" data-speed="1000" data-start="1000" data-easing="Power3.easeInOut">
                        <p style="color: white;">Россия ва Ўзбекистон <br> ўртасидаги савдо айланмаси </p>
                    </div>
                    <div class="tp-caption sfr desc-slide center" data-x="40" data-y="272" data-speed="1000" data-start="1500" data-easing="Power3.easeInOut">
                        <p style="color: white;">беш ой ичида 18 фоизга ўсди.</p>
                    </div>
                    <div class="tp-caption sfl flat-button-slider" data-x="40" data-y="323" data-speed="1000" data-start="2000" data-easing="Power3.easeInOut"><a href="#">Батафсил</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-chevron-right"></i></div>
                </li>

                <li data-transition="random-static" data-slotamount="7" data-masterspeed="1000" data-saveperformance="on">
                    <img src="images/slides/2.jpg" alt="slider-image" />
                    <div class="tp-caption sfl title-slide center" data-x="40" data-y="111" data-speed="1000" data-start="1000" data-easing="Power3.easeInOut">
                        <p style="color: white;"> <br>Шаҳрисабзда</p>
                    </div>
                    <div class="tp-caption sfr desc-slide center" data-x="40" data-y="272" data-speed="1000" data-start="1500" data-easing="Power3.easeInOut">
                        <p style="color: white;">«Марказий экспорт бозори» очилди.</p>
                    </div>
                    <div class="tp-caption sfl flat-button-slider bg-button-slider-15416e" data-x="40" data-y="323" data-speed="1000" data-start="2000" data-easing="Power3.easeInOut"><a href="#">Батафсил</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-chevron-right"></i></div>

                    <div class="tp-caption sfr flat-button-slider" data-x="268" data-y="323" data-speed="1000" data-start="2000" data-easing="Power3.easeInOut"><a href="#">Алоқа</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-chevron-right"></i></div>

                </li>

                <li data-transition="slidedown" data-slotamount="7" data-masterspeed="1000" data-saveperformance="on">
                    <img src="images/slides/3.jpg" alt="slider-image" />
                    <div class="tp-caption sfl title-slide center" data-x="40" data-y="111" data-speed="1000" data-start="1000" data-easing="Power3.easeInOut">
                        <p style="color: white;">«Ўздавкарантин»<br>экспорт қилувчиларга </p>
                    </div>
                    <div class="tp-caption sfr desc-slide center" data-x="40" data-y="272" data-speed="1000" data-start="1500" data-easing="Power3.easeInOut">
                        <p style="color: white;">транзит йўлаклари бўйича мурожаат билан чиқди.</p>
                    </div>
                    <div class="tp-caption sfl flat-button-slider" data-x="40" data-y="323" data-speed="1000" data-start="2000" data-easing="Power3.easeInOut"><a href="#">Батафсил</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-chevron-right"></i></div>
                </li>
            </ul>
        </div>
    </div>

@endsection