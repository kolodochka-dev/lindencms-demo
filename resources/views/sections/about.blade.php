<section class="bg-white py-12">
    <div class="max-w-7xl mx-auto px-5 md:px-8">
        <div class="grid md:grid-cols-2 gap-14 items-center">
            <div>
                <span class="text-orange-500 text-sm font-semibold uppercase">{{ $about->subtitle }}</span>
                <h2 class="text-4xl font-extrabold text-gray-900 mt-2">{{ $about->title }}</h2>
                <p class="text-gray-600 mt-5 leading-relaxed">{{ $about->description }}</p>
                <div class="mt-8 flex gap-5">
                    @foreach ($about->features as $item)
                        <div>
                            <div class="text-2xl font-bold text-orange-600">{{ $item->counter }}</div>
                            <div class="text-xs text-gray-500">{{ $item->feature }}</div>
                        </div>
                    @endforeach
                </div>
            </div>
            <img src="{{ $about->image->image()->url() }}" class="rounded-2xl shadow-xl w-full">
        </div>
    </div>
</section>