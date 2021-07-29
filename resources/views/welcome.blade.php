<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Blog Management</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;600&display=swap" rel="stylesheet">
        <link href="{{ asset('resources/css/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
            .blog-inner{
              border: 1px solid #3333;
              padding: 20px;
            }
            .blog-title{
              text-align: center;
              margin-bottom: 20px;
            }
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ route('login') }}">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}">Register</a>
                        @endif
                    @endauth
                </div>
            @endif
            <div class="container">
              <div class="col-md-12">
                <h1 class="blog-title"><b>BLOGS</b></h1>
              </div>
              <div class="col-md-12">
                <div class="content">
                  @foreach($blogs as $blog)
                  <div class="col-md-3">
                    <div class="blog-inner">
                      <img src="{{$blog->blog_image}}" class="img-thumbnail" alt="{{$blog->title}}" style="height: 220px;">
                      <h3><b>{{$blog->title}}</b></h3>
                      <p>{{substr($blog->description,'0',100)}}</p>
                      <p>{{$blog->tags}}</p>
                    </div>

                  </div>

                  @endforeach
                </div>
              </div>

            </div>

        </div>
    </body>
</html>
