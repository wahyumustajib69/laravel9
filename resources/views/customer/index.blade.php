@extends('app')
@section('content')
@if(session('success'))
<p class="alert alert-success">{{ session('success') }}</p>
@endif
<div class="card card-default">
    <div class="card-header">
        <form class="row row-cols-auto g-1">
            <div class="col">
                <input class="form-control" type="text" name="q" value="{{ $q }}" placeholder="Search here..." />
            </div>
            <div class="col">
                <button class="btn btn-success"><i class="fa fa-refresh"></i></button>
            </div>
            <div class="col">
                <a class="btn btn-primary" href="{{ route('customer.create') }}"><i class="fa fa-plus-circle"></i> </a>
            </div>
        </form>
    </div>
    <div class="card-body p-0 table-responsive">
        <table class="table table-bordered table-striped table-hover mb-0">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Customer Name</th>
                    <th>Contact Name</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <?php $no = 1 ?>
            @foreach($customers as $customer)
            <tr>
                <td>{{ $no++ }}</td>
                <td>{{ $customer->customer_name }}</td>
                <td>{{ $customer->contact_name }}</td>
                <td>{{ $customer->address }}</td>
                <td>{{ $customer->city }}</td>
                <td>
                    <a class="btn btn-sm btn-warning" href="{{ route('customer.edit', $customer) }}"><i class="fa fa-wrench"></i></a>
                    <form method="POST" action="{{ route('customer.destroy', $customer) }}" style="display: inline-block;">
                        @csrf
                        @method('DELETE')
                        <button class="btn btn-sm btn-danger" onclick="return confirm('Delete?')"><i class="fa fa-trash"></i></button>
                    </form>
                </td>
            </tr>
            @endforeach
        </table>
    </div>
</div>
@endsection