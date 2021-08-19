<div>
    @include("page.meniu") 
</div>

<!-- de modificat -->

<div class="sqltable">

    <div>
        <td><a href="{{ route('products.create')}}" class="btn btn-primary">Add product</a></td>
    </div>

    <br>
    
 
       
    <table class="table table-striped">
    <thead> 
    <tr>
            <th>ID</th>
            <th>UPC</th>
            <th>Product Name</th>
            <th>Price Each</th>
            <th>Weight</th>
            <th>Description</th>
            <th>Product ID</th>
            <th>Category</th>
            <th>Stock</th>
            <th>Brand</th>
        </tr>
        </thead>   

<tbody>
@foreach($products as $product) 

    <tr >
                <td>{{$product->id}}</td>
                <td>{{$product->upc}}</td>
                <td>{{$product->product_name}}</td>
                <td>{{$product->price_each}}</td>
                <td>{{$product->weight}}</td>
                <td>{{$product->description}}</td>
                <td>{{$product->product_id}}</td>
                <td>{{$product->category}}</td>
                <td>{{$product->stock}}</td>
                <td>{{$product->brand}}</td>
                <td><a href="{{ route('products.edit', $product->id)}}" class="btn btn-primary">Edit</a></td>
                <td>
                    <form action="{{ route('products.destroy', $product->id)}}" method="post">
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
