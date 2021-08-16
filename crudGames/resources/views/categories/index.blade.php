<div>
    @include("page.meniu"); 
</div>

<div class="sqltable">
<div>
    <td><a href="{{ route('categories.create')}}" class="btn btn-primary">Add a category</a></td>
</div>

<table class="table table-striped">
    <thead>
        
    </thead>
        <tr>
            <th>ID</th>
            <th>Category Name</th>
            <th>Description</th>
        </tr>
    <tbody>
        @foreach($categories as $category) 
        <tr>      
            <td>{{$category->id}}</td>
            <td>{{$category->category_name}}</td>
            <td>{{$category->description}}</td>
            
            <td><a href="{{ route('categories.edit', $category->id)}}" class="btn btn-primary">Edit</a></td>
            <td>
                <form action="{{ route('categories.destroy', $category->id)}}" method="post">
                  @csrf
                  @method('DELETE')
                  <button class="btn btn-danger" type="submit">Delete</button>
                </form>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
</div>

