@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Todo List</h1>
    <a href="{{ route('todos.create') }}" class="btn btn-primary mb-3">Add Todo</a>
    <ul class="list-group">
        @forelse($todos as $todo)
            <li class="list-group-item d-flex justify-content-between align-items-center">
                {{ $todo->title }}
                <div>
                    <a href="{{ route('todos.show', $todo->id) }}" class="btn btn-secondary btn-sm">View</a>
                    <a href="{{ route('todos.edit', $todo->id) }}" class="btn btn-primary btn-sm">Edit</a>
                    <form action="{{ route('todos.destroy', $todo->id) }}" method="POST" style="display:inline">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>
                </div>
            </li>
        @empty
            <li class="list-group-item">No todos found.</li>
        @endforelse
    </ul>
</div>
@endsection
