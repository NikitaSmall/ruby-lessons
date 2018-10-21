@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Photos</div>

                <div class="card-body">
                  <div id="carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                      @foreach ($photos as $i => $photo)
                          @if ($i == 0)
                            <div class="carousel-item active">
                          @else
                            <div class="carousel-item">
                          @endif
                          <img class="d-block w-100" src="{{ $photo->path }}" alt="">
                          <div class="carousel-caption d-none d-md-block">
                            <h5>header</h5>
                            <p>text</p>
                          </div>
                        </div>
                      @endforeach
                    </div>
                    <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
                </div>
            </div>
        </div>
    </div>
</div>

<br>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Add photo</div>
                <div class="card-body">

                    <form method="post" action="{{ route('createPhoto') }}" enctype="multipart/form-data">
                      {{ csrf_field() }}
                      <div>
                        <label>
                          Choose your photo:
                        </label>
                        <input type="file" name="photo" required>
                      </div>
                      <input type="submit" value="add photo">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
