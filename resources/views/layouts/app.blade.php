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

<body class="antialiased min-h-screen flex flex-col">
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
            </div>
            <!-- Mobile Menu Button -->
            <button 
                id="mobileMenuButton"
                class="md:hidden w-10 h-10 rounded-lg border border-gray-300 flex items-center justify-center hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-orange-500"
                aria-label="Toggle menu"
                onclick="this.classList.toggle('active')"
            >
                <!-- Hamburger SVG Icon -->
                <svg 
                    class="w-5 h-5 text-gray-700 transition-transform duration-200"
                    fill="none" 
                    stroke="currentColor" 
                    viewBox="0 0 24 24"
                >
                    <path 
                        stroke-linecap="round" 
                        stroke-linejoin="round" 
                        stroke-width="2" 
                        d="M4 6h16M4 12h16M4 18h16"
                    />
                </svg>
            </button>
        </div>
    </header>

    <main class="bg-white flex-1">
        @yield('content')
    </main>

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

    <!-- Simple mobile menu toggle script -->
    <script>
        document.getElementById('mobileMenuButton')?.addEventListener('click', function() {
            const menu = document.querySelector('.md\\:flex');
            if (menu) {
                menu.classList.toggle('hidden');
                menu.classList.toggle('flex');
                menu.classList.toggle('flex-col');
                menu.classList.toggle('absolute');
                menu.classList.toggle('top-full');
                menu.classList.toggle('left-0');
                menu.classList.toggle('right-0');
                menu.classList.toggle('bg-white');
                menu.classList.toggle('p-4');
                menu.classList.toggle('shadow-lg');
                menu.classList.toggle('border-b');
                menu.classList.toggle('border-gray-100');
                menu.classList.toggle('gap-3');
            }
        });
    </script>
</body>

</html>