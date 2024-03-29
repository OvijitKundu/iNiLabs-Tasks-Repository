@extends('layouts.app')

@section('content')
<div class="container">
    <h1>{{ $todo->title }}</h1>
    <p>{{ $todo->description }}</p>
    <a href="{{ route('todos.index') }}" class="btn btn-secondary">Back to list</a>
</div>
@endsection
