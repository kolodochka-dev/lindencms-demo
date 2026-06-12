@extends('layouts.app')
@section('title', 'Hyperion')
@section('content')
    @include('sections.areas', ['areas' => $page->areas])
@endsection