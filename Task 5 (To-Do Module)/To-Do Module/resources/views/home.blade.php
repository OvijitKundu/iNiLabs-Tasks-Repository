@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col text-center">
            <h1>Welcome to To-Do Module!</h1>
            <!-- Button to navigate to the To-Do List -->
            <a href="{{ url('/todos') }}" class="btn btn-primary">Go to To-Do List</a>
        </div>
    </div>
</div>
@endsection
