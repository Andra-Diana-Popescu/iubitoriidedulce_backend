<div>
    @include("page.meniu") 
</div>

<form method="post" action="{{ route('categories.update', $category->id ) }}">
          <div class="form-group">
              @csrf
              @method('PATCH')
              <label for="country_name">Category Name:</label>
              <input type="text" class="form-control" name="category_name" value="{{ $category->category_name }}"/>
          </div>

        
          <div class="form-group">
              <label for="cases">Description :</label>
              <input type="text" class="form-control" name="description" value="{{ $category->description }}"/>
                    <!-- de ce nu merge description????? -->
          </div>

          <button type="submit" class="btn btn-primary update3">Update Data</button>
      </form>

      