<!DOCTYPE html>
<html lang="ru" data-theme="light">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <script src="https://unpkg.com/htmx.org@2.0.4"
        integrity="sha384-HGfztofotfshcF7+8n44JQL2oJmowVChPTg48S+jvZoztPfvwD79OC/LTtG6dMp+"
        crossorigin="anonymous"></script>
    <link
        href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap"
        rel="stylesheet">
</head>

<body class="antialiased">
    <header class="sticky top-0 z-40 bg-white/95 backdrop-blur-sm border-b border-gray-100 shadow-sm">
        <div class="max-w-7xl mx-auto px-5 md:px-8 py-4 flex flex-wrap items-center justify-between gap-4">
            <a href="{{ route('site.home') }}" class="flex items-center gap-3">
                <div 
                    class="w-9 h-9 rounded-xl bg-orange-500 shadow-sm flex items-center justify-center text-white font-bold text-lg">
                    H
                </div>
                <span class="text-xl font-bold tracking-tight text-gray-900">HYPERION</span>
            </a>
            <div class="hidden md:flex items-center gap-7 text-sm font-medium">
                <a href="{{ route('site.signup') }}" class="text-gray-700 hover:text-orange-600">Sign Up</a>
                <a href="{{ route('site.memberships') }}" class="text-gray-700 hover:text-orange-600">Membership</a>
                <a href="{{ route('site.areas') }}" class="text-gray-700 hover:text-orange-600">Areas</a>
                <a href="{{ route('site.gallery') }}" class="text-gray-700 hover:text-orange-600">Gallery</a>
                <a href="{{ route('site.about') }}" class="text-gray-700 hover:text-orange-600">About</a>
                <!-- <div
                    class="relative ml-2 w-8 h-8 rounded-full border border-gray-200 bg-white flex items-center justify-center hover:border-orange-300">
                    <span class="text-gray-700 text-sm">🛒</span>
                </div> -->
            </div>
            <div class="flex md:hidden gap-3">
                <div class="w-8 h-8 rounded-full border border-gray-300 flex items-center justify-center">🍔</div>
            </div>
        </div>
    </header>
    <main class="bg-white">
        @yield('content')

        <!-- FOOTER -->
        <footer class="bg-white border-t border-gray-200 pt-12 pb-6">
            <div class="max-w-7xl mx-auto px-5 md:px-8">
                <div class="grid grid-cols-2 md:grid-cols-4 gap-8 pb-8">
                    <div>
                        <div class="flex items-center gap-2 mb-3">
                            <div class="w-8 h-8 rounded-lg bg-orange-500 text-white flex items-center justify-center">H
                            </div><span class="font-bold text-gray-900">HYPERION</span>
                        </div>
                        <p class="text-xs text-gray-400">Strength studio</p>
                    </div>
                    <div>
                        <h4 class="text-sm font-semibold">Trainings</h4>
                        <ul class="text-xs text-gray-500 mt-2 space-y-1">
                            <li>Schedule</li>
                            <li>Coaches</li>
                            <li>Pricing</li>
                        </ul>
                    </div>
                    <div>
                        <h4 class="text-sm font-semibold">Studio</h4>
                        <ul class="text-xs text-gray-500 mt-2 space-y-1">
                            <li>Locations</li>
                            <li>Membership</li>
                            <li>Gift cards</li>
                        </ul>
                    </div>
                    <div>
                        <h4 class="text-sm font-semibold">Follow</h4>
                        <ul class="text-xs text-gray-500 mt-2 space-y-1">
                            <li>Instagram</li>
                            <li>Strava club</li>
                            <li>Podcast</li>
                        </ul>
                    </div>
                </div>
                <div class="border-t border-gray-100 pt-6 text-center text-[11px] text-gray-400">© HYPERION Training Club
                    — built for movement, powered by community.</div>
            </div>
        </footer>
    </main>
</body>

</html>