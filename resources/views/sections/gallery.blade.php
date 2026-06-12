<section class="bg-white py-12">
    <div class="max-w-7xl mx-auto px-5 md:px-8">
        <div class="text-center mb-10">
            <span class="text-orange-500 text-sm font-semibold">{{ $gallery->subtitle }}</span>
            <h2 class="text-3xl font-bold text-gray-900 mt-1">{{ $gallery->title }}</h2>
        </div>
        <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
            @foreach ($gallery->images as $image)
                <div class="gallery-card overflow-hidden rounded-2xl cursor-pointer">
                    <div class="gallery-img-placeholder h-56 w-full"
                        style="background-image: url('{{ $image->url() }}'); background-size: cover;">
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>