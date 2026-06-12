@extends('layouts.app')
@section('title', 'Hyperion')
@section('content')
    @include('sections.memberships', ['memberships' => $page->memberships])
@endsection