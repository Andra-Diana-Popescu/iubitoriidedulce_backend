<div>
    @include("page.meniu") 
</div>

<div class="container custom">

@foreach($products as $product) 


<div class="text-light pt-2 pb-2 mt-2 text-center">
   <span>{{$product->product_name}}</span>

    <img class="img-responsive" alt="" src="{{ $product->thumbnail }}" width="300px" height="300px"/>
</div>


@endforeach

</div>

<style>
    /* .custom {
        margin-top: 100px;
    } */
</style>