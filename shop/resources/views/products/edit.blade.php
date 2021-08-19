<div>
    @include("page.meniu") 
</div>
  <div class="card-body">
    @if ($errors->any())
      <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
            @endforeach
        </ul>
      </div><br />
    @endif
<form method="post" action="{{ route('products.update', $product->id ) }}">
          <div class="form-group">
              @csrf
              @method('PATCH')
              <label for="country_name">Product UPC:</label>
              <input type="text" class="form-control" name="upc" value="{{ $product->upc }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Product Name :</label>
              <input type="text" class="form-control" name="product_name" value="{{ $product->product_name }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Price Each :</label>
              <input type="number" class="form-control" name="price_each" value="{{ $product->price_each }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Weight :</label>
              <input type="text" class="form-control" name="weight" value="{{ $product->weight }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Description :</label>
              <input type="text" class="form-control" name="description" value="{{ $product->description }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Product ID :</label>
              <input type="text" class="form-control" name="product_id" value="{{ $product->product_id }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Stock :</label>
              <input type="number" class="form-control" name="stock" value="{{ $product->stock }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Brand :</label>
              <input type="text" class="form-control" name="brand" value="{{ $product->brand }}"/>
          </div>

          <button type="submit" class="btn btn-primary update2">Update Data</button>
      </form>

      