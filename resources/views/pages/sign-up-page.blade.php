@extends('layouts.app')
@section('title', 'Hyperion')
@section('content')
    @include('sections.signup', ['memberships' => $page->memberships])
@endsection