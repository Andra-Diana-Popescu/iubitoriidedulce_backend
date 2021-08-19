<div>
    @include("page.meniu") 
</div>

<form method="post" action="{{ route('product_categories.update', $product_category->id ) }}">
          <div class="form-group">
              @csrf
              @method('PATCH')
              <label for="country_name">Product ID :</label>
              <input type="text" class="form-control" name="product_id" value="{{ $product_category->product_id }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Category ID :</label>
              <input type="text" class="form-control" name="category_id" value="{{ $product_category->category_id }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Brand ID :</label>
              <input type="text" class="form-control" name="brand_id" value="{{ $product_category->brand_id }}"/>
          </div>

          <button type="submit" class="btn btn-primary update6">Update Data</button>
      </form>

      