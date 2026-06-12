@extends('layouts.app')
@section('title', 'Hyperion')
@section('content')
    @include('sections.about', ['about' => $page->about])
@endsection