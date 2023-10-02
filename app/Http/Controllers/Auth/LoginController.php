<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Http\ReidrectResponse;

class LoginController extends Controllers
{
    // Login Controller
    use AuthenticatesUsers;

    protected $redirectTo = RouteServiceProvider::HOME;

    public function __construct()
    {
        $this->middlew('guest')->except('logout');
    }



    public function login(Request $request): RedirectResponse
    {   
        $input = $request->all(); 

        $this->validate($request, [
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if(auth()->attempt(array('email' => $input['email'], 'password' => $input['password'])))

        {

            if (auth()->user()->type == 'admin') {

                return redirect()->route('admin.home');

            }else if (auth()->user()->type == 'manager') {

                return redirect()->route('manager.home');

            }else{

                return redirect()->route('home');

            }

        }else{

            return redirect()->route('login')

                ->with('error','Email-Address And Password Are Wrong.');

        }

    }
}