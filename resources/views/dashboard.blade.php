@extends('layouts.tabler')

@section('content')
    <div class="page-header d-print-none">
        <div class="container-xl">
            <div class="row g-2 align-items-center">
                <div class="col">
                    <div class="page-pretitle">
                        Overview
                    </div>
                    <h2 class="page-title">
                        Dashboard
                    </h2>
                </div>
                <!-- Page title actions -->
                <div class="col-auto ms-auto d-print-none">
                    <div class="btn-list">
                        <a href="{{ route('orders.create') }}" class="btn btn-primary d-none d-sm-inline-block">
                            <x-icon.plus/>
                            Create new order
                        </a>
                        <a href="{{ route('orders.create') }}" class="btn btn-primary d-sm-none btn-icon" aria-label="Create new report">
                            <x-icon.plus/>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="page-body">
        <div class="container-xl">
            <div class="row row-deck row-cards">

                <div class="col-12">
                    <div class="row">
                        <div class="col-lg-3 col-sm-6 col-12">
                           <div class="dash-widget">
                              <div class="dash-widgetimg">
                                 <span><img src="{{ asset('admin-template/img/icons/dash1.svg') }}" alt="img"></span>
                              </div>
                              <div class="dash-widgetcontent">
                                 <h5>Rs <span class="counters" data-count="307144.00">307,144.00</span></h5>
                                 <h6>Total Purchase Due</h6>
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 col-12">
                           <div class="dash-widget dash1">
                              <div class="dash-widgetimg">
                                 <span><img src="{{ asset('admin-template/img/icons/dash2.svg') }}" alt="img"></span>
                              </div>
                              <div class="dash-widgetcontent">
                                 <h5>Rs <span class="counters" data-count="4385.00">4,385.00</span></h5>
                                 <h6>Total Sales Due</h6>
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 col-12">
                           <div class="dash-widget dash2">
                              <div class="dash-widgetimg">
                                 <span><img src="{{ asset('admin-template/img/icons/dash2.svg') }}" alt="img"></span>
                              </div>
                              <div class="dash-widgetcontent">
                                 <h5>Rs <span class="counters" data-count="385656.50">385,656.50</span></h5>
                                 <h6>Total Sale Amount</h6>
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 col-12">
                           <div class="dash-widget dash3">
                              <div class="dash-widgetimg">
                                 <span><img src="{{ asset('admin-template/img/icons/dash2.svg') }}" alt="img"></span>
                              </div>
                              <div class="dash-widgetcontent">
                                 <h5>Rs <span class="counters" data-count="40000.00">400.00</span></h5>
                                 <h6>Total Sale Amount</h6>
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 col-12 d-flex">
                           <div class="dash-count">
                              <div class="dash-counts">
                                 <h4>{{ $customers }}</h4>
                                 <h5>Customers</h5>
                              </div>
                              <div class="dash-imgs">
                                 <i data-feather="user"></i>
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 col-12 d-flex">
                           <div class="dash-count das1">
                              <div class="dash-counts">
                                 <h4>{{ $suppliers }}</h4>
                                 <h5>Suppliers</h5>
                              </div>
                              <div class="dash-imgs">
                                 <i data-feather="user-check"></i>
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 col-12 d-flex">
                           <div class="dash-count das2">
                              <div class="dash-counts">
                                 <h4>{{ $purchases }}</h4>
                                 <h5>Purchase Invoice</h5>
                              </div>
                              <div class="dash-imgs">
                                 <i data-feather="file-text"></i>
                              </div>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 col-12 d-flex">
                           <div class="dash-count das3">
                              <div class="dash-counts">
                                 <h4>{{ $quotations }}</h4>
                                 <h5>Quotations</h5>
                              </div>
                              <div class="dash-imgs">
                                 <i data-feather="file"></i>
                              </div>
                           </div>
                        </div>
                     </div>


                </div>


            </div>
        </div>
    </div>
@endsection

@push('page-libraries')
    <script src="{{ asset('dist/libs/apexcharts/dist/apexcharts.min.js') }}" defer></script>
    <script src="{{ asset('dist/libs/jsvectormap/dist/js/jsvectormap.min.js') }}" defer></script>
    <script src="{{ asset('dist/libs/jsvectormap/dist/maps/world.js') }}" defer></script>
    <script src="{{ asset('dist/libs/jsvectormap/dist/maps/world-merc.js') }}" defer></script>
@endpush

@pushonce('page-scripts')
    <script>
        // @formatter:off
        document.addEventListener("DOMContentLoaded", function () {
            window.ApexCharts && (new ApexCharts(document.getElementById('chart-revenue-bg'), {
                chart: {
                    type: "area",
                    fontFamily: 'inherit',
                    height: 40.0,
                    sparkline: {
                        enabled: true
                    },
                    animations: {
                        enabled: false
                    },
                },
                dataLabels: {
                    enabled: false,
                },
                fill: {
                    opacity: .16,
                    type: 'solid'
                },
                stroke: {
                    width: 2,
                    lineCap: "round",
                    curve: "smooth",
                },
                series: [{
                    name: "Profits",
                    data: [37, 35, 44, 28, 36, 24, 65, 31, 37, 39, 62, 51, 35, 41, 35, 27, 93, 53, 61, 27, 54, 43, 19, 46, 39, 62, 51, 35, 41, 67]
                }],
                tooltip: {
                    theme: 'dark'
                },
                grid: {
                    strokeDashArray: 4,
                },
                xaxis: {
                    labels: {
                        padding: 0,
                    },
                    tooltip: {
                        enabled: false
                    },
                    axisBorder: {
                        show: false,
                    },
                    type: 'datetime',
                },
                yaxis: {
                    labels: {
                        padding: 4
                    },
                },
                labels: [
                    '2020-06-20', '2020-06-21', '2020-06-22', '2020-06-23', '2020-06-24', '2020-06-25', '2020-06-26', '2020-06-27', '2020-06-28', '2020-06-29', '2020-06-30', '2020-07-01', '2020-07-02', '2020-07-03', '2020-07-04', '2020-07-05', '2020-07-06', '2020-07-07', '2020-07-08', '2020-07-09', '2020-07-10', '2020-07-11', '2020-07-12', '2020-07-13', '2020-07-14', '2020-07-15', '2020-07-16', '2020-07-17', '2020-07-18', '2020-07-19'
                ],
                colors: [tabler.getColor("primary")],
                legend: {
                    show: false,
                },
            })).render();
        });
        // @formatter:on
    </script>
    <script>
        // @formatter:off
        document.addEventListener("DOMContentLoaded", function () {
            window.ApexCharts && (new ApexCharts(document.getElementById('chart-new-clients'), {
                chart: {
                    type: "line",
                    fontFamily: 'inherit',
                    height: 40.0,
                    sparkline: {
                        enabled: true
                    },
                    animations: {
                        enabled: false
                    },
                },
                fill: {
                    opacity: 1,
                },
                stroke: {
                    width: [2, 1],
                    dashArray: [0, 3],
                    lineCap: "round",
                    curve: "smooth",
                },
                series: [{
                    name: "May",
                    data: [37, 35, 44, 28, 36, 24, 65, 31, 37, 39, 62, 51, 35, 41, 35, 27, 93, 53, 61, 27, 54, 43, 4, 46, 39, 62, 51, 35, 41, 67]
                },{
                    name: "April",
                    data: [93, 54, 51, 24, 35, 35, 31, 67, 19, 43, 28, 36, 62, 61, 27, 39, 35, 41, 27, 35, 51, 46, 62, 37, 44, 53, 41, 65, 39, 37]
                }],
                tooltip: {
                    theme: 'dark'
                },
                grid: {
                    strokeDashArray: 4,
                },
                xaxis: {
                    labels: {
                        padding: 0,
                    },
                    tooltip: {
                        enabled: false
                    },
                    type: 'datetime',
                },
                yaxis: {
                    labels: {
                        padding: 4
                    },
                },
                labels: [
                    '2020-06-20', '2020-06-21', '2020-06-22', '2020-06-23', '2020-06-24', '2020-06-25', '2020-06-26', '2020-06-27', '2020-06-28', '2020-06-29', '2020-06-30', '2020-07-01', '2020-07-02', '2020-07-03', '2020-07-04', '2020-07-05', '2020-07-06', '2020-07-07', '2020-07-08', '2020-07-09', '2020-07-10', '2020-07-11', '2020-07-12', '2020-07-13', '2020-07-14', '2020-07-15', '2020-07-16', '2020-07-17', '2020-07-18', '2020-07-19'
                ],
                colors: [tabler.getColor("primary"), tabler.getColor("gray-600")],
                legend: {
                    show: false,
                },
            })).render();
        });
        // @formatter:on
    </script>
    <script>
        // @formatter:off
        document.addEventListener("DOMContentLoaded", function () {
            window.ApexCharts && (new ApexCharts(document.getElementById('chart-active-users'), {
                chart: {
                    type: "bar",
                    fontFamily: 'inherit',
                    height: 40.0,
                    sparkline: {
                        enabled: true
                    },
                    animations: {
                        enabled: false
                    },
                },
                plotOptions: {
                    bar: {
                        columnWidth: '50%',
                    }
                },
                dataLabels: {
                    enabled: false,
                },
                fill: {
                    opacity: 1,
                },
                series: [{
                    name: "Profits",
                    data: [37, 35, 44, 28, 36, 24, 65, 31, 37, 39, 62, 51, 35, 41, 35, 27, 93, 53, 61, 27, 54, 43, 19, 46, 39, 62, 51, 35, 41, 67]
                }],
                tooltip: {
                    theme: 'dark'
                },
                grid: {
                    strokeDashArray: 4,
                },
                xaxis: {
                    labels: {
                        padding: 0,
                    },
                    tooltip: {
                        enabled: false
                    },
                    axisBorder: {
                        show: false,
                    },
                    type: 'datetime',
                },
                yaxis: {
                    labels: {
                        padding: 4
                    },
                },
                labels: [
                    '2020-06-20', '2020-06-21', '2020-06-22', '2020-06-23', '2020-06-24', '2020-06-25', '2020-06-26', '2020-06-27', '2020-06-28', '2020-06-29', '2020-06-30', '2020-07-01', '2020-07-02', '2020-07-03', '2020-07-04', '2020-07-05', '2020-07-06', '2020-07-07', '2020-07-08', '2020-07-09', '2020-07-10', '2020-07-11', '2020-07-12', '2020-07-13', '2020-07-14', '2020-07-15', '2020-07-16', '2020-07-17', '2020-07-18', '2020-07-19'
                ],
                colors: [tabler.getColor("primary")],
                legend: {
                    show: false,
                },
            })).render();
        });
        // @formatter:on
    </script>
@endpushonce
