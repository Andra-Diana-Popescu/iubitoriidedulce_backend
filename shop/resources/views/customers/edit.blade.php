<div>
    @include("page.meniu") 
</div>

<form method="post" action="{{ route('customers.update', $customer->id ) }}">
          <div class="form-group">
              @csrf
              @method('PATCH')
              <label for="country_name">Full Name:</label>
              <input type="text" class="form-control" name="full_name" value="{{ $customer->full_name }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Email :</label>
              <input type="text" class="form-control" name="email" value="{{ $customer->email }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Billing Address :</label>
              <input type="text" class="form-control" name="billing_address" value="{{ $customer->billing_address }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Shipping Address :</label>
              <input type="text" class="form-control" name="shipping_address" value="{{ $customer->shipping_address }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Phone :</label>
              <input type="text" class="form-control" name="phone" value="{{ $customer->phone }}"/>
          </div>

          <div class="form-group">
              <label for="cases">Country :</label>
              <input type="text" class="form-control" name="country" value="{{ $customer->country }}"/>
          </div>

          <button type="submit" class="btn btn-primary update4">Update Data</button>
      </form>

      