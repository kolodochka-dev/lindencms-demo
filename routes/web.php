<?php

use App\Nodes\Lead;
use App\Nodes\Pages\AboutPage;
use App\Nodes\Pages\AreasPage;
use App\Nodes\Pages\GalleryPage;
use App\Nodes\Pages\HomePage;
use App\Nodes\Pages\MembershipsPage;
use App\Nodes\Pages\SignUpPage;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;

Route::get('/', HomePage::class)->name('site.home');
Route::get('/signup', SignUpPage::class)->name('site.signup');
Route::get('/membership', MembershipsPage::class)->name('site.memberships');
Route::get('/areas', AreasPage::class)->name('site.areas');
Route::get('/gallery', GalleryPage::class)->name('site.gallery');
Route::get('/about', AboutPage::class)->name('site.about');

Route::post('/leads', function (Request $request) {
    $lead = Lead::make();
    $lead->fill($request->all());
    $lead->context('db.write')->write();

    return redirect()->route('site.home');
})->name('site.leads.create');

