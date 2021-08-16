<div>
    @include("page.meniu") 
</div>    
    
    <form method="post" action="{{ route('products.store') }}">
          <div class="form-group">
              @csrf
              <label for="country_name">UPC:</label>
              <input type="text" class="form-control" name="upc"/>
          </div>

          <div class="form-group">
              <label for="cases">Product name :</label>
              <input type="text" class="form-control" name="product_name"/>
          </div>

          <div class="form-group">
              <label for="cases">Price each :</label>
              <input type="number" class="form-control" name="price_each"/>
          </div>

          <div class="form-group">
              <label for="cases">Weight :</label>
              <input type="text" class="form-control" name="weight"/>
          </div>

          <div class="form-group">
              <label for="cases">Description :</label>
              <input type="text" class="form-control" name="description"/>
          </div>

          <div class="form-group">
              <label for="cases">Product ID :</label>
              <input type="text" class="form-control" name="product_id"/>
          </div>

          <div class="form-group">
              <label for="cases">Category :</label>
              <input type="text" class="form-control" name="category"/>
          </div>

          <div class="form-group">
              <label for="cases">Stock :</label>
              <input type="text" class="form-control" name="stock"/>
          </div>

          <div class="form-group">
              <label for="cases">Brand :</label>
              <input type="text" class="form-control" name="brand"/>
          </div>

          <button type="submit" class="btn btn-primary create2">Add Product</button>
    </form>