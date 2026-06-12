@extends('layouts.app')
@section('title', 'Hyperion')
@section('content')
    @include('sections.gallery', ['gallery' => $page->gallery])
@endsection