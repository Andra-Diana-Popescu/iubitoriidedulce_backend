<div>
    @include("page.meniu") 
</div>    

<form method="post" action="{{ route('categories.store') }}">
          <div class="form-group">
              @csrf
              <label for="country_name">Category Name</label>
              <input type="text" class="form-control" name="category_name"/>
          </div>

          <div class="form-group">
              <label for="cases">Description :</label>
              <input type="text" class="form-control" name="description"/>
          </div>

          <button type="submit" class="btn btn-primary create3">Add Category</button>
    </form>