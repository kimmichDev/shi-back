<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    @foreach ($slides as $slide)
        {{-- {{ $slide->getFirstMediaUrl('slide') }} --}}
        <div style="border: 2px solid black">
            <img src="{{ $slide->getFirstMediaUrl('slide') }}" width="200px" alt="">
            <a href="{{ route('admin.slides.edit', $slide->id) }}">Edit</a>
        </div>
    @endforeach
</body>

</html>
