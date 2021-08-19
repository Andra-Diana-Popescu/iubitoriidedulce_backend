<div>
    @include("page.meniu"); 
</div>

<div class="sqltable">
<div>
    <td><a href="{{ route('product_categories.create')}}" class="btn btn-primary">Add Product Category</a></td>
</div>

    <table class="table table-striped">
    <thead>
        <tr>
          <th>ID</th>
          <th>Product ID</th>
          <th>Category ID</th>
          <th>Brand ID</th>
        </tr>
    </thead>

    <tbody>
        @foreach($product_categories as $product_category)
        <tr>  
            <td>{{$product_category->id}}</td>
            <td>{{$product_category->product_id}}</td>
            <td>{{$product_category->category_id}}</td>
            <td>{{$product_category->brand_id}}</td>
            
            <td><a href="{{ route('product_categories.edit', $product_category->id)}}" class="btn btn-primary">Edit</a></td>
            <td>
                <form action="{{ route('product_categories.destroy', $product_category->id)}}" method="post">
                  @csrf
                  @method('DELETE')
                  <button class="btn btn-danger" type="submit">Delete</button>
                </form>
            </td>
        </tr>
        @endforeach
    </tbody>
</div>

