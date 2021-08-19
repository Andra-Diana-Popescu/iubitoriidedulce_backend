<div>
    @include("page.meniu") 
</div>

<form method="post"
action="{{ route('orders.update', $order->id ) }}">
          <div class="form-group">
              @csrf
              @method('PATCH')
              <label for="country_name">Customer ID :</label>
              <input type="text" class="form-control" name="customer_id" value="{{ $order->customer_id }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Amount :</label>
              <input type="text" class="form-control" name="amount" value="{{ $order->amount }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Shipping Address :</label>
              <input type="text" class="form-control" name="shipping_address" value="{{ $order->shipping_address }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Billing Address :</label>
              <input type="text" class="form-control" name="billing_address" value="{{ $order->billing_address }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Order Email :</label>
              <input type="text" class="form-control" name="order_email" value="{{ $order->order_email }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Order Status :</label>
              <input type="text" class="form-control" name="order_status" value="{{ $order->order_status }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Order Date :</label>
              <input type="date" class="form-control" name="order_date" value="{{ $order->order_date }}"/>
          </div>

          <button type="submit" class="btn btn-primary update">Update Data</button>
      </form>

      