<!DOCTYPE html>
<html lang="en">

<head>
    @include('head')
</head>
{{-- animsition --}}

<body class="">

    <!-- Header -->
    <header>
        @include('header')
    </header>

    <!-- Cart -->
    @include('cart')


    @yield('content')

   
    <!-- Footer -->

    @include('footer')

</body>

</html>
