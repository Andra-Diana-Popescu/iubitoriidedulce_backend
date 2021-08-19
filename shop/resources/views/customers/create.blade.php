<div>
    @include("page.meniu") 
</div>    

<form method="post" action="{{ route('customers.store') }}">
          <div class="form-group">
              @csrf
              <label for="country_name">Full Name:</label>
              <input type="text" class="form-control" name="full_name"/>
          </div>

          <div class="form-group">
              <label for="cases">Email :</label>
              <input type="text" class="form-control" name="email"/>
          </div>

          <div class="form-group">
              <label for="cases">Billing Address :</label>
              <input type="text" class="form-control" name="billing_address"/>
          </div>

          <div class="form-group">
              <label for="cases">Shipping Address :</label>
              <input type="text" class="form-control" name="shipping_address"/>
          </div>

          <div class="form-group">
              <label for="cases">Phone :</label>
              <input type="text" class="form-control" name="phone"/>
          </div>

          <div class="form-group">
              <label for="cases">Country :</label>
              <input type="text" class="form-control" name="country"/>
          </div>

          <button type="submit" class="btn btn-primary create4">Add Customer</button>
    </form>