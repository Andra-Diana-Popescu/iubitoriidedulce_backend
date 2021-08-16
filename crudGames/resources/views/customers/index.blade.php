<div>
    @include("page.meniu"); 
</div>


<div class="sqltable">
<div>
    <td><a href="{{ route('customers.create')}}" class="btn btn-primary">Add customer</a></td>
</div>

<table class="table table-striped">
    <thead>
        <tr>
          <th>ID</th>
          <th>Full Name</th>
          <th>Email</th>
          <th>Billing Address</th>
          <th>Shipping Address</th>
          <th>Phone</th>
          <th>Country</th>
        </tr>
    </thead>

    <tbody>
    @foreach($customers as $customer) 
    <tr>
            <td>{{$customer->id}}</td>
            <td>{{$customer->full_name}}</td>
            <td>{{$customer->email}}</td>
            <td>{{$customer->billing_address}}</td>
            <td>{{$customer->shipping_address}}</td>
            <td>{{$customer->phone}}</td>
            <td>{{$customer->country}}</td>
            
            <td><a href="{{ route('customers.edit', $customer->id)}}" class="btn btn-primary">Edit</a></td>
            <td>
                <form action="{{ route('customers.destroy', $customer->id)}}" method="post">
                  @csrf
                  @method('DELETE')
                  <button class="btn btn-danger" type="submit">Delete</button>
                </form>
            </td>
        </tr>
    @endforeach
    </tbody>
</table>     
</div>

