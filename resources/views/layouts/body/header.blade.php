
<div class="header">
    <div class="header-left active">
       <a href="{{ url('/') }}" class="logo">
       <img src="{{ asset('assets/img/sadeeka_electronics_logo.png') }}" alt="">
       </a>
       <a href="{{ url('/') }}" class="logo-small">
       <img src="{{ asset('assets/img/sadeeka_electronics_logo.png') }}" alt="">
       </a>
       <a id="toggle_btn" href="javascript:void(0);">
       </a>
    </div>
    <a id="mobile_btn" class="mobile_btn" href="#sidebar">
    <span class="bar-icon">
    <span></span>
    <span></span>
    <span></span>
    </span>
    </a>
    <ul class="nav user-menu">
       {{-- <li class="nav-item">
          <div class="top-nav-search">
             <a href="javascript:void(0);" class="responsive-search">
             <i class="fa fa-search"></i>
             </a>
             <form action="#">
                <div class="searchinputs">
                   <input type="text" placeholder="Search Here ...">
                   <div class="search-addon">
                      <span><img src="{{ asset('admin-template/img/icons/closes.svg') }}" alt="img"></span>
                   </div>
                </div>
                <a class="btn" id="searchdiv"><img src="{{ asset('admin-template/img/icons/search.svg') }}" alt="img"></a>
             </form>
          </div>
       </li>
       <li class="nav-item dropdown has-arrow flag-nav">
          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="javascript:void(0);" role="button">
          <img src="{{ asset('admin-template/img/flags/us1.png') }}" alt="" height="20">
          </a>
          <div class="dropdown-menu dropdown-menu-right">
             <a href="javascript:void(0);" class="dropdown-item">
             <img src="{{ asset('admin-template/img/flags/us.png') }}" alt="" height="16"> English
             </a>
             <a href="javascript:void(0);" class="dropdown-item">
             <img src="{{ asset('admin-template/img/flags/fr.png') }}" alt="" height="16"> French
             </a>
             <a href="javascript:void(0);" class="dropdown-item">
             <img src="{{ asset('admin-template/img/flags/es.png') }}" alt="" height="16"> Spanish
             </a>
             <a href="javascript:void(0);" class="dropdown-item">
             <img src="{{ asset('admin-template/img/flags/de.png') }}" alt="" height="16"> German
             </a>
          </div>
       </li> --}}
       {{-- <li class="nav-item dropdown">
          <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
          <img src="{{ asset('admin-template/img/icons/notification-bing.svg') }}" alt="img"> <span class="badge rounded-pill">4</span>
          </a>
          <div class="dropdown-menu notifications">
             <div class="topnav-dropdown-header">
                <span class="notification-title">Notifications</span>
                <a href="javascript:void(0)" class="clear-noti"> Clear All </a>
             </div>
             <div class="noti-content">
                <ul class="notification-list">
                   <li class="notification-message">
                      <a href="activities.html">
                         <div class="media d-flex">
                            <span class="avatar flex-shrink-0">
                            <img alt="" src="{{ asset('admin-template/img/profiles/avatar-02.jpg') }}">
                            </span>
                            <div class="media-body flex-grow-1">
                               <p class="noti-details"><span class="noti-title">John Doe</span> added new task <span class="noti-title">Patient appointment booking</span></p>
                               <p class="noti-time"><span class="notification-time">4 mins ago</span></p>
                            </div>
                         </div>
                      </a>
                   </li>
                   <li class="notification-message">
                      <a href="activities.html">
                         <div class="media d-flex">
                            <span class="avatar flex-shrink-0">
                            <img alt="" src="{{ asset('admin-template/img/profiles/avatar-03.jpg') }}">
                            </span>
                            <div class="media-body flex-grow-1">
                               <p class="noti-details"><span class="noti-title">Tarah Shropshire</span> changed the task name <span class="noti-title">Appointment booking with payment gateway</span></p>
                               <p class="noti-time"><span class="notification-time">6 mins ago</span></p>
                            </div>
                         </div>
                      </a>
                   </li>
                   <li class="notification-message">
                      <a href="activities.html">
                         <div class="media d-flex">
                            <span class="avatar flex-shrink-0">
                            <img alt="" src="{{ asset('admin-template/img/profiles/avatar-06.jpg') }}">
                            </span>
                            <div class="media-body flex-grow-1">
                               <p class="noti-details"><span class="noti-title">Misty Tison</span> added <span class="noti-title">Domenic Houston</span> and <span class="noti-title">Claire Mapes</span> to project <span class="noti-title">Doctor available module</span></p>
                               <p class="noti-time"><span class="notification-time">8 mins ago</span></p>
                            </div>
                         </div>
                      </a>
                   </li>
                   <li class="notification-message">
                      <a href="activities.html">
                         <div class="media d-flex">
                            <span class="avatar flex-shrink-0">
                            <img alt="" src="{{ asset('admin-template/img/profiles/avatar-17.jpg') }}">
                            </span>
                            <div class="media-body flex-grow-1">
                               <p class="noti-details"><span class="noti-title">Rolland Webber</span> completed task <span class="noti-title">Patient and Doctor video conferencing</span></p>
                               <p class="noti-time"><span class="notification-time">12 mins ago</span></p>
                            </div>
                         </div>
                      </a>
                   </li>
                   <li class="notification-message">
                      <a href="activities.html">
                         <div class="media d-flex">
                            <span class="avatar flex-shrink-0">
                            <img alt="" src="{{ asset('admin-template/img/profiles/avatar-13.jpg') }}">
                            </span>
                            <div class="media-body flex-grow-1">
                               <p class="noti-details"><span class="noti-title">Bernardo Galaviz</span> added new task <span class="noti-title">Private chat module</span></p>
                               <p class="noti-time"><span class="notification-time">2 days ago</span></p>
                            </div>
                         </div>
                      </a>
                   </li>
                </ul>
             </div>
             <div class="topnav-dropdown-footer">
                <a href="activities.html">View all Notifications</a>
             </div>
          </div>
       </li> --}}
       <li class="nav-item dropdown has-arrow main-drop">
          <a href="javascript:void(0);" class="dropdown-toggle nav-link userset" data-bs-toggle="dropdown">
          <span class="user-img"><img src="{{ asset('admin-template/img/profiles/avator1.jpg') }}" alt="">
          <span class="status online"></span></span>
          </a>
          <div class="dropdown-menu menu-drop-user">
             <div class="profilename">
                <div class="profileset">
                   <span class="user-img"><img src="{{ asset('admin-template/img/profiles/avator1.jpg') }}" alt="">
                   <span class="status online"></span></span>
                   <div class="profilesets">
                      <h6>{{ Auth::user()->name }}</h6>
                      <h5>{{ Auth::user()->name }}</h5>
                   </div>
                </div>
                <hr class="m-0">
                <a class="dropdown-item" href="{{ route('profile.edit') }}l"> <i class="me-2" data-feather="user"></i> My Profile</a>
                {{-- <a class="dropdown-item" href="generalsettings.html"><i class="me-2" data-feather="settings"></i>Settings</a> --}}
                <hr class="m-0">
                <a class="dropdown-item logout pb-0" href="{{ route('logout') }}"><img src="{{ asset('admin-template/img/icons/log-out.svg') }}" class="me-2" alt="img">Logout</a>
             </div>
          </div>
       </li>
    </ul>
    <div class="dropdown mobile-user-menu">
       <a href="javascript:void(0);" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
       <div class="dropdown-menu dropdown-menu-right">
            <a href="{{ route('profile.edit') }}" class="dropdown-item">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon dropdown-item-icon icon-tabler icon-tabler-settings" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                    <path d="M10.325 4.317c.426 -1.756 2.924 -1.756 3.35 0a1.724 1.724 0 0 0 2.573 1.066c1.543 -.94 3.31 .826 2.37 2.37a1.724 1.724 0 0 0 1.065 2.572c1.756 .426 1.756 2.924 0 3.35a1.724 1.724 0 0 0 -1.066 2.573c.94 1.543 -.826 3.31 -2.37 2.37a1.724 1.724 0 0 0 -2.572 1.065c-.426 1.756 -2.924 1.756 -3.35 0a1.724 1.724 0 0 0 -2.573 -1.066c-1.543 .94 -3.31 -.826 -2.37 -2.37a1.724 1.724 0 0 0 -1.065 -2.572c-1.756 -.426 -1.756 -2.924 0 -3.35a1.724 1.724 0 0 0 1.066 -2.573c-.94 -1.543 .826 -3.31 2.37 -2.37c1 .608 2.296 .07 2.572 -1.065z"></path>
                    <path d="M12 12m-3 0a3 3 0 1 0 6 0a3 3 0 1 0 -6 0"></path>
                </svg>
                Account
            </a>
          <a class="dropdown-item" href="generalsettings.html">Settings</a>

           <form action="{{ route('logout') }}" method="post">
                @csrf
                <button type="submit" class="dropdown-item">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon dropdown-item-icon icon-tabler icon-tabler-logout" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M14 8v-2a2 2 0 0 0 -2 -2h-7a2 2 0 0 0 -2 2v12a2 2 0 0 0 2 2h7a2 2 0 0 0 2 -2v-2" /><path d="M9 12h12l-3 -3" /><path d="M18 15l3 -3" /></svg>
                    Logout
                </button>
            </form>
       </div>
    </div>
 </div>

