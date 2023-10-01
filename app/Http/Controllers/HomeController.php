<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\View\View;

class HomeController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('auth');
    }



    public function index(): View
    {
        return view('home');
    }



    public function adminHome(): View
    {
        return view('adminHome');
    }

    

    public function managerHome(): View
    {
        return view('managerHome');
    }
}

