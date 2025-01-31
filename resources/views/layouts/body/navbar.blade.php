
<div class="sidebar" id="sidebar">
    <div class="sidebar-inner slimscroll">
       <div id="sidebar-menu" class="sidebar-menu">
          <ul>
             <li class="{{ request()->is('dashboard*') ? 'active' : null }}">
                <a href="{{ route('dashboard') }}"><img src="{{ asset('admin-template/img/icons/dashboard.svg') }}" alt="img"><span> Dashboard</span> </a>
             </li>
             <li class="{{ request()->is('products*') ? 'active' : null }}">
                <a href="{{ route('products.index') }}"><img src="{{ asset('admin-template/img/icons/product.svg') }}" alt="img"><span> Products</span></a>
                {{-- <ul>
                   <li><a href="productlist.html">Product List</a></li>
                   <li><a href="addproduct.html">Add Product</a></li>
                   <li><a href="categorylist.html">Category List</a></li>
                   <li><a href="addcategory.html">Add Category</a></li>
                   <li><a href="subcategorylist.html">Sub Category List</a></li>
                   <li><a href="subaddcategory.html">Add Sub Category</a></li>
                   <li><a href="brandlist.html">Brand List</a></li>
                   <li><a href="addbrand.html">Add Brand</a></li>
                   <li><a href="importproduct.html">Import Products</a></li>
                   <li><a href="barcode.html">Print Barcode</a></li>
                </ul> --}}
             </li>
             @if (in_array(Auth::user()->user_type, [1, 2, 4]))
                <li class="submenu {{ request()->is('orders*') ? 'active' : null }}">
                    <a href="javascript:void(0);"><img src="{{ asset('admin-template/img/icons/sales1.svg') }}" alt="img"><span> Orders</span> <span class="menu-arrow"></span></a>
                    <ul>
                    <li><a href="{{ route('orders.index') }}">Orders List</a></li>
                    <li><a href="{{ route('orders.complete') }}">Completed</a></li>
                    <li><a href="{{ route('orders.pending') }}">Pending</a></li>
                    <li><a href="{{ route('due.index') }}">Due</a></li>
                    </ul>
                </li>
             @endif
             @if (in_array(Auth::user()->user_type, [1, 2, 4]))
                <li class="submenu {{ request()->is('purchases*') ? 'active' : null }}">
                    <a href="javascript:void(0);"><img src="{{ asset('admin-template/img/icons/purchase1.svg') }}" alt="img"><span> Purchase</span> <span class="menu-arrow"></span></a>
                    <ul>
                    <li><a href="{{ route('purchases.index') }}">Purchase List</a></li>
                    <li><a href="{{ route('purchases.approvedPurchases') }}">Approval</a></li>
                    <li><a href="{{ route('purchases.dailyPurchaseReport') }}">Daily Purchase Report</a></li>
                    </ul>
                </li>
             @endif
             <li class="{{ request()->is('quotations*') ? 'active' : null }}">
                <a href="{{ route('quotations.index') }}"><img src="{{ asset('admin-template/img/icons/quotation1.svg') }}" alt="img"><span> Quotations</span></a>
             </li>
             @if (in_array(Auth::user()->user_type, [1, 2, 4]))
                <li class="submenu {{ request()->is('suppliers*', 'customers*') ? 'active' : null }}">
                <a href="javascript:void(0);"><img src="{{ asset('admin-template/img/icons/users1.svg') }}" alt="img"><span> Supliers & Customers</span> <span class="menu-arrow"></span></a>
                <ul>
                    <li><a href="{{ route('suppliers.index') }}">Suppliers </a></li>
                    <li><a href="{{ route('customers.index') }}">Customers </a></li>
                </ul>
                </li>
            @endif
             {{-- <li class="submenu">
                <a href="javascript:void(0);"><img src="{{ asset('admin-template/img/icons/expense1.svg') }}" alt="img"><span> Expense</span> <span class="menu-arrow"></span></a>
                <ul>
                   <li><a href="expenselist.html">Expense List</a></li>
                   <li><a href="createexpense.html">Add Expense</a></li>
                   <li><a href="expensecategory.html">Expense Category</a></li>
                </ul>
             </li> --}}
             {{-- <li class="submenu">
                <a href="javascript:void(0);"><img src="{{ asset('admin-template/img/icons/transfer1.svg') }}" alt="img"><span> Transfer</span> <span class="menu-arrow"></span></a>
                <ul>
                   <li><a href="transferlist.html">Transfer List</a></li>
                   <li><a href="addtransfer.html">Add Transfer </a></li>
                   <li><a href="importtransfer.html">Import Transfer </a></li>
                </ul>
             </li>
             <li class="submenu">
                <a href="javascript:void(0);"><img src="{{ asset('admin-template/img/icons/return1.svg') }}" alt="img"><span> Return</span> <span class="menu-arrow"></span></a>
                <ul>
                   <li><a href="salesreturnlist.html">Sales Return List</a></li>
                   <li><a href="createsalesreturn.html">Add Sales Return </a></li>
                   <li><a href="purchasereturnlist.html">Purchase Return List</a></li>
                   <li><a href="createpurchasereturn.html">Add Purchase Return </a></li>
                </ul>
             </li>
             <li class="submenu">
                <a href="javascript:void(0);"><img src="{{ asset('admin-template/img/icons/places.svg') }}" alt="img"><span> Places</span> <span class="menu-arrow"></span></a>
                <ul>
                   <li><a href="newcountry.html">New Country</a></li>
                   <li><a href="countrieslist.html">Countries list</a></li>
                   <li><a href="newstate.html">New State </a></li>
                   <li><a href="statelist.html">State list</a></li>
                </ul>
             </li>
             <li>
                <a href="components.html"><i data-feather="layers"></i><span> Components</span> </a>
             </li>
             <li>
                <a href="blankpage.html"><i data-feather="file"></i><span> Blank Page</span> </a>
             </li>
             <li class="submenu">
                <a href="javascript:void(0);"><i data-feather="alert-octagon"></i> <span> Error Pages </span> <span class="menu-arrow"></span></a>
                <ul>
                   <li><a href="error-404.html">404 Error </a></li>
                   <li><a href="error-500.html">500 Error </a></li>
                </ul>
             </li>
             <li class="submenu">
                <a href="javascript:void(0);"><img src="{{ asset('admin-template/img/icons/time.svg') }}" alt="img"><span> Reports</span> <span class="menu-arrow"></span></a>
                <ul>
                   <li><a href="purchaseorderreport.html">Purchase order report</a></li>
                   <li><a href="inventoryreport.html">Inventory Report</a></li>
                   <li><a href="salesreport.html">Sales Report</a></li>
                   <li><a href="invoicereport.html">Invoice Report</a></li>
                   <li><a href="purchasereport.html">Purchase Report</a></li>
                   <li><a href="supplierreport.html">Supplier Report</a></li>
                   <li><a href="customerreport.html">Customer Report</a></li>
                </ul>
             </li> --}}
{{--
             <li class="submenu">
               <a href="javascript:void(0);"><img src="{{ asset('admin-template/img/icons/users1.svg') }}" alt="img"><span> Users</span> <span class="menu-arrow"></span></a>
               <ul>
                  <li><a href="newuser.html">New User </a></li>
                  <li><a href="userlists.html">Users List</a></li>
               </ul>
            </li> --}}
            @if (in_array(Auth::user()->user_type, [1, 2, 4]))
            <li class="submenu {{ request()->is('users*', 'categories*', 'units*') ? 'active' : null }}">
               <a href="javascript:void(0);"><img src="{{ asset('admin-template/img/icons/settings.svg') }}" alt="img"><span> Settings</span> <span class="menu-arrow"></span></a>
               <ul>
                  <li><a href="{{ route('users.index') }}">Users</a></li>
                  <li><a href="{{ route('categories.index') }}">Categories</a></li>
                  <li><a href="{{ route('units.index') }}">Units</a></li>
               </ul>
            </li>
            @endif
             {{-- <li class="submenu">
                <a href="javascript:void(0);"><i data-feather="box"></i> <span>Elements </span> <span class="menu-arrow"></span></a>
                <ul>
                   <li><a href="sweetalerts.html">Sweet Alerts</a></li>
                   <li><a href="tooltip.html">Tooltip</a></li>
                   <li><a href="popover.html">Popover</a></li>
                   <li><a href="ribbon.html">Ribbon</a></li>
                   <li><a href="clipboard.html">Clipboard</a></li>
                   <li><a href="drag-drop.html">Drag & Drop</a></li>
                   <li><a href="rangeslider.html">Range Slider</a></li>
                   <li><a href="rating.html">Rating</a></li>
                   <li><a href="toastr.html">Toastr</a></li>
                   <li><a href="text-editor.html">Text Editor</a></li>
                   <li><a href="counter.html">Counter</a></li>
                   <li><a href="scrollbar.html">Scrollbar</a></li>
                   <li><a href="spinner.html">Spinner</a></li>
                   <li><a href="notification.html">Notification</a></li>
                   <li><a href="lightbox.html">Lightbox</a></li>
                   <li><a href="stickynote.html">Sticky Note</a></li>
                   <li><a href="timeline.html">Timeline</a></li>
                   <li><a href="form-wizard.html">Form Wizard</a></li>
                </ul>
             </li> --}}
             {{-- <li class="submenu">
                <a href="javascript:void(0);"><i data-feather="bar-chart-2"></i> <span> Charts </span> <span class="menu-arrow"></span></a>
                <ul>
                   <li><a href="chart-apex.html">Apex Charts</a></li>
                   <li><a href="chart-js.html">Chart Js</a></li>
                   <li><a href="chart-morris.html">Morris Charts</a></li>
                   <li><a href="chart-flot.html">Flot Charts</a></li>
                   <li><a href="chart-peity.html">Peity Charts</a></li>
                </ul>
             </li> --}}
             {{-- <li class="submenu">
                <a href="javascript:void(0);"><i data-feather="award"></i><span> Icons </span> <span class="menu-arrow"></span></a>
                <ul>
                   <li><a href="icon-fontawesome.html">Fontawesome Icons</a></li>
                   <li><a href="icon-feather.html">Feather Icons</a></li>
                   <li><a href="icon-ionic.html">Ionic Icons</a></li>
                   <li><a href="icon-material.html">Material Icons</a></li>
                   <li><a href="icon-pe7.html">Pe7 Icons</a></li>
                   <li><a href="icon-simpleline.html">Simpleline Icons</a></li>
                   <li><a href="icon-themify.html">Themify Icons</a></li>
                   <li><a href="icon-weather.html">Weather Icons</a></li>
                   <li><a href="icon-typicon.html">Typicon Icons</a></li>
                   <li><a href="icon-flag.html">Flag Icons</a></li>
                </ul>
             </li> --}}
             {{-- <li class="submenu">
                <a href="javascript:void(0);"><i data-feather="columns"></i> <span> Forms </span> <span class="menu-arrow"></span></a>
                <ul>
                   <li><a href="form-basic-inputs.html">Basic Inputs </a></li>
                   <li><a href="form-input-groups.html">Input Groups </a></li>
                   <li><a href="form-horizontal.html">Horizontal Form </a></li>
                   <li><a href="form-vertical.html"> Vertical Form </a></li>
                   <li><a href="form-mask.html">Form Mask </a></li>
                   <li><a href="form-validation.html">Form Validation </a></li>
                   <li><a href="form-select2.html">Form Select2 </a></li>
                   <li><a href="form-fileupload.html">File Upload </a></li>
                </ul>
             </li> --}}
             {{-- <li class="submenu">
                <a href="javascript:void(0);"><i data-feather="layout"></i> <span> Table </span> <span class="menu-arrow"></span></a>
                <ul>
                   <li><a href="tables-basic.html">Basic Tables </a></li>
                   <li><a href="data-tables.html">Data Table </a></li>
                </ul>
             </li> --}}
             {{-- <li class="submenu">
                <a href="javascript:void(0);"><img src="{{ asset('admin-template/img/icons/product.svg') }}" alt="img"><span> Application</span> <span class="menu-arrow"></span></a>
                <ul>
                   <li><a href="chat.html">Chat</a></li>
                   <li><a href="calendar.html">Calendar</a></li>
                   <li><a href="email.html">Email</a></li>
                </ul>
             </li> --}}
          </ul>
       </div>
    </div>
 </div>
