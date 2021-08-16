<div>
    @include("page.meniu") 
</div>    

<form method="post" action="{{ route('order_details.store') }}">
          <div class="form-group">
              @csrf
              <label for="country_name">UPC:</label>
              <input type="text" class="form-control" name="upc"/>
          </div>

          <div class="form-group">
              <label for="cases">Order ID :</label>
              <input type="text" class="form-control" name="order_id"/>
          </div>

          <div class="form-group">
              <label for="cases">Product ID :</label>
              <input type="text" class="form-control" name="product_id"/>
          </div>

          <div class="form-group">
              <label for="cases">Price :</label>
              <input type="text" class="form-control" name="price"/>
          </div>

          <button type="submit" class="btn btn-primary create5">Add Order Details</button>
    </form>