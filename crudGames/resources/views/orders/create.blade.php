<div>
    @include("page.meniu") 
</div>    

<form method="post" action="{{ route('orders.store') }}">
          <div class="form-group">
              @csrf
              <label for="country_name">Customer ID :</label>
              <input type="text" class="form-control" name="customer_id"/>
          </div>

          <div class="form-group">
              <label for="cases">Amount :</label>
              <input type="text" class="form-control" name="amount"/>
          </div>

          <div class="form-group">
              <label for="cases">Shipping Address :</label>
              <input type="text" class="form-control" name="shipping_address"/>
          </div>

          <div class="form-group">
              <label for="cases">Billing Address :</label>
              <input type="text" class="form-control" name="billing_address"/>
          </div>

          <div class="form-group">
              <label for="cases">Order Email :</label>
              <input type="text" class="form-control" name="order_email"/>
          </div>

          <div class="form-group">
              <label for="cases">Order Status :</label>
              <input type="text" class="form-control" name="order_status"/>
          </div>

          <div class="form-group">
              <label for="cases">Order Date :</label>
              <input type="date" class="form-control" name="order_date"/>
          </div>

          <button type="submit" class="btn btn-primary create">Add Order</button>
    </form>