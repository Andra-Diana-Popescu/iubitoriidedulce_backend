<div>
    @include("page.meniu") 
</div>    

<form method="post" action="{{ route('product_categories.store') }}">
          <div class="form-group">
              @csrf
              <label for="country_name">Product ID :</label>
              <input type="text" class="form-control" name="product_id"/>
          </div>

          <div class="form-group">
              <label for="cases">Category ID :</label>
              <input type="text" class="form-control" name="category_id"/>
          </div>

          <div class="form-group">
              <label for="cases">Brand ID :</label>
              <input type="text" class="form-control" name="brand_id"/>
          </div>

          <button type="submit" class="btn btn-primary create6">Add Product Category</button>
    </form>