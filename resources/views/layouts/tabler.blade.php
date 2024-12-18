
<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>{{ config('app.name') }}</title>
    <link rel="icon" type="image/x-icon" href="{{ asset('favicon2.png') }}" />

    <!-- CSS files -->
    <link href="{{ asset('dist/css/tabler.min.css') }}" rel="stylesheet"/>
    <link rel="stylesheet" href="{{ asset('admin-template/css/bootstrap.min.css') }}">

    <link rel="stylesheet" href="{{ asset('admin-template/css/animate.css') }}">

    <link rel="stylesheet" href="{{ asset('admin-template/css/dataTables.bootstrap4.min.css') }}">

    <link rel="stylesheet" href="{{ asset('admin-template/plugins/fontawesome/css/fontawesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('admin-template/plugins/fontawesome/css/all.min.css') }}">

    <link rel="stylesheet" href="{{ asset('admin-template/css/style.css') }}">
    {{-- <style>
        @import url('https://rsms.me/inter/inter.css');
        :root {
            --tblr-font-sans-serif: 'Inter Var', -apple-system, BlinkMacSystemFont, San Francisco, Segoe UI, Roboto, Helvetica Neue, sans-serif;
        }
        body {
            font-feature-settings: "cv03", "cv04", "cv11";
        }
    </style> --}}

    <!-- Custom CSS for specific page.  -->
    @stack('page-styles')
    @livewireStyles
</head>
    <body>
        <div id="global-loader">
            <div class="whirly-loader"> </div>
        </div>
        <div class="main-wrapper">

            @include('layouts.body.header')

            @include('layouts.body.navbar')

            <div class="page-wrapper">
                <div>
                    @yield('content')
                </div>

                @include('layouts.body.footer')
            </div>
        </div>

        <!-- Tabler Core -->
        {{-- <script src="{{ asset('dist/js/tabler.min.js') }}" defer></script> --}}

        <script src="{{ asset('admin-template/js/jquery-3.6.0.min.js') }}"></script>

        <script src="{{ asset('admin-template/js/feather.min.js') }}"></script>

        <script src="{{ asset('admin-template/js/jquery.slimscroll.min.js') }}"></script>

        <script src="{{ asset('admin-template/js/jquery.dataTables.min.js') }}"></script>
        <script src="{{ asset('admin-template/js/dataTables.bootstrap4.min.js') }}"></script>

        <script src="{{ asset('admin-template/js/bootstrap.bundle.min.js') }}"></script>

        <script src="{{ asset('admin-template/plugins/apexchart/apexcharts.min.js') }}"></script>
        <script src="{{ asset('admin-template/plugins/apexchart/chart-data.js') }}"></script>

        <script src="{{ asset('admin-template/js/script.js') }}"></script>
        {{--- Page Scripts ---}}
        @stack('page-scripts')

        @livewireScripts
    </body>
</html>
