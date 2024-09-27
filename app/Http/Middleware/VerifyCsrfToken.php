<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;

class VerifyCsrfToken extends Middleware
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array<int, string>
     */
    protected $except = [
    		'blood-request/*',
    //     'http://127.0.0.1:8000/admin/blood-request/payment/success',
    //     'http://localhost/admin/blood-request/confirm/success',
    //     'https://sandbox.sslcommerz.com/gwprocess/v4/api.php',
    //     'http://localhost/admin/blood-request/confirm/cancel', 'http://localhost/admin/blood-request/confirm/fail',
    
            'https://sbdms.hupbd.org/admin/blood-request/payment/success',
            'https://sbdms.hupbd.org/admin/blood-request/confirm/success',
            'https://sandbox.sslcommerz.com/gwprocess/v3/api.php',
            'https://sbdms.hupbd.org/admin/blood-request/confirm/cancel', 'https://sbdms.hupbd.org/admin/blood-request/confirm/fail',   

        
    ];
}
