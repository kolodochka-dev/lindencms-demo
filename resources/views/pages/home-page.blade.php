@extends('layouts.app')
@section('title', 'Hyperion')
@section('content')
    <section class="max-w-7xl mx-auto px-5 md:px-8 pt-16 md:pt-24 pb-14">
        <div class="grid md:grid-cols-2 gap-12 items-center">
            <div>
                <!-- <div
                    class="inline-flex items-center gap-2 bg-orange-50 border border-orange-200 rounded-full py-1.5 px-4 mb-5">
                    <span class="w-2 h-2 rounded-full bg-orange-500"></span>
                    <span class="text-xs font-semibold text-orange-700 uppercase tracking-wide">limited spots — spring
                        2025</span>
                </div> -->
                <h1 class="text-4xl md:text-5xl lg:text-6xl font-extrabold tracking-tight text-gray-900 leading-tight">
                    Train with <br><span class="text-orange-500">purpose.</span> Move like an athlete.
                </h1>
                <p class="text-gray-500 text-lg mt-6 max-w-lg leading-relaxed">
                    Small-group strength training, mobility drills, and high-intensity sessions led by elite coaches. No egos, just results.
                </p>
                <div class="flex flex-wrap gap-4 mt-8">
                    <a href="{{ route('site.signup') }}"
                        class="cursor-pointer btn-orange px-7 py-3.5 rounded-full text-white font-semibold text-sm shadow-md flex items-center gap-2">
                        Start training →
                    </a>
                </div>
            </div>
            <div class="relative rounded-3xl overflow-hidden shadow-xl h-80 md:h-[400px]">
                <img src="https://images.unsplash.com/photo-1534438327276-14e5300c3a48?w=800&auto=format"
                    alt="gym training session" class="w-full h-full object-cover">
                <div class="absolute inset-0 bg-gradient-to-t from-black/20 to-transparent"></div>
                <div
                    class="absolute bottom-5 left-5 bg-white/90 backdrop-blur-sm px-4 py-2 rounded-full text-xs font-semibold text-gray-800">
                    🔥 High intensity / small classes</div>
            </div>
        </div>
    </section>

    <!-- 3️⃣ ADVANTAGES / About Block -->
    @include('sections.about', ['about' => $page->about])

    <!-- 4️⃣ GALLERY (dynamic grid with authentic gym images) -->
    @include('sections.gallery', ['gallery' => $page->gallery])

    <!-- 5️⃣ SUBSCRIPTION PLANS (membership tiers) -->
    @include('sections.memberships', ['memberships' => $page->memberships])

    <!-- 6️⃣ FORM: BUY SUBSCRIPTION OR SIGN UP FOR TRAINING (lead form) -->
    @include('sections.signup', ['memberships' => $page->memberships])

    <!-- 7️⃣ TRAINING ZONES (services) -->
    @include('sections.areas', ['areas' => $page->areas])
@endsection