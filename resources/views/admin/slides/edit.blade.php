<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    @if ($errors->any())
        @foreach ($errors->all() as $error)
            <div>{{ $error }}</div>
        @endforeach
    @endif
    <form action="{{ route('admin.slides.update', $slide->id) }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('put')
        <label for="">Name</label>
        <input type="text" class="" name="name" value="{{ $slide->name }}">
        <br>
        <img src="{{ $slide->getFirstMediaUrl('slide') }}" alt="">
        <br>
        <input type="file" name="photo" id="">
        <br>
        <button type="submit">Change</button>
    </form>
</body>

</html>
