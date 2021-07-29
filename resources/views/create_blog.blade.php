@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Blogs') }}</div>
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif
                <div class="card-body">
                  <form method="POST" action="{{ route('storeBlog') }}" id="blogForm" enctype="multipart/form-data">
                      @csrf

                      <div class="form-group row {{$errors->has('title') ? ' has-error' : ""}}">
                          <label for="title" class="col-md-4 col-form-label text-md-right">{{ __('Title') }}</label>
                          <div class="col-md-6">
                              <input id="title" type="text" class="form-control @error('title') is-invalid @enderror" name="title" value="{{ old('title') }}" required placeholder="Title">
                              @if($errors->has('title'))
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $errors->first('title') }}</strong>
                                  </span>
                              @endif
                          </div>
                      </div>

                      <div class="form-group row {{$errors->has('description') ? ' has-error' : ""}}">
                          <label for="description" class="col-md-4 col-form-label text-md-right">{{ __('Blog Description') }}</label>
                          <div class="col-md-6">
                            <textarea name="description" id="description" rows="8" cols="80" class="form-control @error('description') is-invalid @enderror" value="{{ old('description') }}" required placeholder="Blog Description" required></textarea>
                            @if($errors->has('description'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('description') }}</strong>
                                </span>
                            @endif
                          </div>
                      </div>

                      <div class="form-group row {{$errors->has('tags') ? ' has-error' : ""}}">
                          <label for="title" class="col-md-4 col-form-label text-md-right">{{ __('Blog Tags') }}</label>
                          <div class="col-md-6">
                              <input id="tags" type="text" class="form-control @error('tags') is-invalid @enderror" name="tags" value="{{ old('tags') }}" placeholder="Nice,Cool,Great" required>
                              @if($errors->has('tags'))
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $errors->first('tags') }}</strong>
                                  </span>
                              @endif
                          </div>
                      </div>

                      <div class="form-group row {{$errors->has('blog_image') ? ' has-error' : ""}}">
                          <label for="title" class="col-md-4 col-form-label text-md-right">{{ __('Blog Image') }}</label>
                          <div class="col-md-6">
                              <input id="blog_image" type="file" class="form-control @error('blog_image') is-invalid @enderror" name="blog_image" required >
                              @if($errors->has('blog_image'))
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $errors->first('blog_image') }}</strong>
                                  </span>
                              @endif
                          </div>
                      </div>

                      <div class="form-group row mb-0">
                          <div class="col-md-6 offset-md-4">
                              <button type="submit" class="btn btn-success">
                                  {{ __('Add Blog') }}
                              </button>
                              <a href="{{route('home')}}" class="btn btn-secondary">{{ __('Back') }}</a>

                          </div>
                      </div>
                  </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('script')

<script>
  jQuery("#blogForm").validate({
    errorElement: 'span',
    errorClass: "text-red",
    rules: {
      "title":{
        required:true,
      },
      "description":{
        required:true,
      },
      "tags":{
        required:true,
      },
      "blog_image":{
        required:true,
      },
    },
    messages:{
      "title":{
        required:"Please Enter Blog Title",
      },
      "description":{
        required:"Please Enter Blog Description",
      },
      "tags":{
        required:"Please Enter Tags in Comma seperated Format",
      },
      "blog_image":{
        required:"Please Enter Blog Image",
      },
    },
    errorPlacement: function(error, element){
      error.insertAfter(element.closest(".form-control"));
    },
  });
</script>

@endsection
