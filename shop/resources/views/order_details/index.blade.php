<div>
    @include("page.meniu"); 
</div>

<div class="sqltable">
<div>
    <td><a href="{{ route('order_details.create')}}" class="btn btn-primary">Add order details</a></td>
</div>

<table class="table table-striped">
    <thead>
        <tr>
          <th>ID</th>
          <th>UPC</th>
          <th>Order ID</th>
          <th>Product ID</th>
          <th>Price</th>
        </tr>
    </thead>

    <tbody>
        @foreach($order_details as $order_detail)
        <tr>
            <td>{{$order_detail->id}}</td>
            <td>{{$order_detail->upc}}</td>
            <td>{{$order_detail->order_id}}</td>
            <td>{{$order_detail->product_id}}</td>
            <td>{{$order_detail->price}}</td>
            
            <td><a href="{{ route('order_details.edit', $order_detail->id)}}" class="btn btn-primary">Edit</a></td>
            <td>
                <form action="{{ route('order_details.destroy', $order_detail->id)}}" method="post">
                  @csrf
                  @method('DELETE')
                  <button class="btn btn-danger" type="submit">Delete</button>
                </form>
            </td>
        </tr>
        @endforeach
    </tbody>
</div>

