<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
class UserController extends Controller
{
    public function index()
    {
        $users = User::select('name', 'email', 'phone')->get();
        return view('admin.users.users-list', compact('users'));
    }

}
