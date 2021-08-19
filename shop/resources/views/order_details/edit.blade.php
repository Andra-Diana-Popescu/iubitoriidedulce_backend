<div>
    @include("page.meniu") 
</div>

<form method="post" action="{{ route('order_details.update', $order_detail->id ) }}">
          <div class="form-group">
              @csrf
              @method('PATCH')
              <label for="country_name">UPC :</label>
              <input type="text" class="form-control" name="upc" value="{{ $order_detail->upc }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Order ID :</label>
              <input type="text" class="form-control" name="order_id" value="{{ $order_detail->order_id }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Product ID :</label>
              <input type="text" class="form-control" name="product_id" value="{{ $order_detail->product_id }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Price :</label>
              <input type="text" class="form-control" name="price" value="{{ $order_detail->price }}"/>
          </div>

          <button type="submit" class="btn btn-primary update5">Update Data</button>
      </form>

      