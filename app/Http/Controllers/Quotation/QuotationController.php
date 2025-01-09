<?php

namespace App\Http\Controllers\Quotation;

use App\Enums\QuotationStatus;
use App\Http\Controllers\Controller;
use App\Http\Requests\Quotation\StoreQuotationRequest;
use App\Models\Customer;
use App\Models\Product;
use App\Models\Quotation;
use App\Models\QuotationDetails;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class QuotationController extends Controller
{
    public function index()
    {
        $quotations = Quotation::with(['customer'])->get();

        return view('quotations.index', [
            'quotations' => $quotations,
        ]);
    }

    public function create()
    {
        Cart::instance('quotation')
            ->destroy();

        return view('quotations.create', [
            'cart' => Cart::content('quotation'),
            'products' => Product::all(),
            'customers' => Customer::all(),

            // maybe?
            //'statuses' => QuotationStatus::cases()
        ]);
    }

    public function store(StoreQuotationRequest $request)
    {
        try {
            $quotation = null;

            DB::transaction(function () use ($request, &$quotation) {
                $quotation = Quotation::create([
                    'date' => $request->date,
                    'reference' => $request->reference,
                    'customer_id' => $request->customer_id,
                    'customer_name' => Customer::findOrFail($request->customer_id)->name,
                    'tax_percentage' => $request->tax_percentage,
                    'discount_percentage' => $request->discount_percentage,
                    'shipping_amount' => $request->shipping_amount,
                    'total_amount' => $request->total_amount,
                    'status' => $request->status,
                    'note' => $request->note,
                    'tax_amount' => Cart::instance('quotation')->tax(),
                    'discount_amount' => Cart::instance('quotation')->discount(),
                ]);

                foreach (Cart::instance('quotation')->content() as $cart_item) {
                    QuotationDetails::create([
                        'quotation_id' => $quotation->id,
                        'product_id' => $cart_item->id,
                        'product_name' => $cart_item->name,
                        'product_code' => $cart_item->options->code,
                        'quantity' => $cart_item->qty,
                        'price' => $cart_item->price,
                        'unit_price' => $cart_item->options->unit_price,
                        'sub_total' => $cart_item->options->sub_total,
                        'product_discount_amount' => $cart_item->options->product_discount,
                        'product_discount_type' => $cart_item->options->product_discount_type,
                        'product_tax_amount' => $cart_item->options->product_tax,
                    ]);
                }

                Cart::instance('quotation')->destroy();
            });

            // Send SMS Notification
            $operator_name = Auth::user()->name;
            $quotation_id = $quotation->id;
            $message = "Hello,\n\nQuotation #$quotation_id has been successfully created by $operator_name.\nCustomer: {$quotation->customer_name}\nTotal Amount: {$quotation->total_amount}\n\nRegards,\nSadeeka Electronics Team";

            sendSms(env('OWNER_PHONE'), $message);

            return redirect()
                ->route('quotations.index')
                ->with('success', 'Quotation Created!');
        } catch (\Exception $e) {
            // Log the error for debugging
            \Log::error('Quotation Creation Error: ' . $e->getMessage());

            return redirect()
                ->route('quotations.index')
                ->with('error', 'Failed to create quotation. Please try again.');
        }
    }


    public function show()
    {

    }

    public function edit()
    {

    }

    public function update()
    {

    }

    public function destroy(Quotation $quotation)
    {
        $quotation->delete();

        return redirect()
            ->route('quotations.index');
    }
}
