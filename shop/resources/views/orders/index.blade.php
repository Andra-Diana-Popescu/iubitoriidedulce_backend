<div class="orders">
    @include("page.meniu"); 
</div>

<div class="sqltable">
<div>
    <td><a href="{{ route('orders.create')}}" class="btn btn-primary">Add order</a></td>
</div>

<table class="table table-striped">
    <thead>
        <tr>
          <th>ID</th>
          <th>Customer ID</th>
          <th>Amount</th>
          <th>Shipping Address</th>
          <th>Billing Address</th>
          <th>Order Email</th>
          <th>Order Status</th>
          <th>Order Date</th>
        </tr>
    </thead>

    <tbody>
        @foreach($orders as $order) 
        <tr>
            <td>{{$order->id}}</td>
            <td>{{$order->customer_id}}</td>
            <td>{{$order->amount}}</td>
            <td>{{$order->shipping_address}}</td>
            <td>{{$order->billing_address}}</td>
            <td>{{$order->order_email}}</td>
            <td>{{$order->order_status}}</td>
            <td>{{$order->order_date}}</td>
            
            <td><a href="{{ route('orders.edit', $order->id)}}" class="btn btn-primary">Edit</a></td>
            <td>
                <form action="{{ route('orders.destroy', $order->id)}}" method="post">
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

