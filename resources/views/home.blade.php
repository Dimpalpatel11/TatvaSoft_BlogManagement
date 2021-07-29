@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            @if(session('message'))
            <div class="alert alert-{{session('alert-class')}} text-center">
              <span>{{session('message')}}</span>
            </div>
            @endif
            <div class="card">
                <div class="card-header">{{ __('Blogs') }}</div>
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif
                <div class="card-body">
                  <a href="{{route('addBlog')}}" class="btn btn-success pull-right">Add Blog</a>
                  @if(count($blogs) > 0)
                  <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Title</th>
                        <th scope="col">Description</th>
                        <th scope="col">Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      @foreach($blogs as $blog)
                      <tr>
                        <td>{{$blog->blog_id}}</td>
                        <td>{{$blog->title}}</td>
                        <td>{{substr($blog->description,'0',100)}}</td>
                        <td> <a href="{{route('editBlog',$blog->blog_id)}}" class="btn btn-primary">Edit</a> <a href="{{route('deleteBlog',$blog->blog_id)}}" class="btn btn-danger">Delete</a> </td>
                      </tr>
                      @endforeach
                    </tbody>
                  </table>
                  @else
                  <div class="col-md-12">
                    <h3 style="text-align:center;">You have not uploaded any Blogs</h3>
                  </div>

                  @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('script')
  @if(Session::has('message'))
  <script>
    $(function(){
      toastr.{{ Session::get('alert-class')}}(' {{ Session::get('message')}}');
    });
  </script>
  @endif
@endsection
