<section class="max-w-7xl mx-auto px-5 md:px-8 py-20">
    <div class="text-center mb-12"><span class="text-orange-500 text-sm font-semibold uppercase">training zones</span>
        <h2 class="text-3xl font-bold text-gray-900 mt-2">Find your discipline</h2>
        <p class="text-gray-500 max-w-xl mx-auto">Specialized areas with world-class coaching and gear.</p>
    </div>
    <div class="grid md:grid-cols-3 gap-7">
        @foreach ($areas as $area)
            <div class="rounded-2xl overflow-hidden shadow-sm border border-gray-100 bg-white">
                <img src="{{ $area->preview->image()->url() }}" class="h-56 w-full object-cover">
                <div class="p-5">
                    <h3 class="text-xl font-bold">{{ $area->title }}</h3>
                    <p class="text-gray-500 text-sm mt-1">{{ $area->description }}</p>
                    <div class="mt-4 text-orange-600 text-sm font-medium">{{ $area->tag }} →</div>
                </div>
            </div>
        @endforeach
    </div>
    <!-- <div class="text-center mt-10">
        <a href="{{ route('site.areas') }}" class="btn-outline-black px-6 py-2.5 rounded-full text-sm font-semibold">explore all training zones →</a>
    </div> -->
</section>