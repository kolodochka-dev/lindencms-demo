<section class="max-w-7xl mx-auto px-5 md:px-8 py-20">
    <div class="text-center max-w-2xl mx-auto mb-12"><span
            class="text-orange-500 text-sm font-semibold">membership</span>
        <h2 class="text-3xl font-bold text-gray-900 mt-1">Plans that fit your rhythm</h2>
        <p class="text-gray-500 mt-3">Cancel anytime · access to all group classes + open gym</p>
    </div>
    <div class="grid md:grid-cols-3 gap-8">
        @foreach ($memberships as $item)
            <div @if ($item->is_popular->get())
            class="bg-white border-2 border-orange-300 rounded-3xl p-6 shadow-lg relative" @else
                    class="bg-white border border-gray-200 rounded-3xl p-6 shadow-sm hover:shadow-md transition relative"
                @endif>
                @if ($item->is_popular->get())
                    <div class="absolute -top-3 left-6 bg-orange-500 text-white text-xs px-3 py-1 rounded-full">popular</div>
                @endif
                <div class="text-center">
                    <div class="text-2xl font-bold text-gray-900">{{ $item->title }}</div>
                    <div class="mt-3">
                        <span class="text-4xl font-black">${{ $item->price }}</span>
                        <span class="text-gray-400">/mo</span>
                    </div>
                    <ul class="mt-6 space-y-3 text-sm text-left">
                        @foreach ($item->access as $accessItem)
                            <li>✓ {{ $accessItem->title }}</li>
                        @endforeach
                    </ul>
                    @if ($item->is_popular->get())
                        <a href="{{ route('site.signup', ['membership' => $item->id->get()]) }}"
                            class="block cursor-pointer w-full mt-8 bg-orange-500 text-white py-2 rounded-full hover:bg-orange-600 font-medium">Get
                            unlimited
                        </a>
                    @else
                        <a href="{{ route('site.signup', ['membership' => $item->id->get()]) }}"
                            class="block cursor-pointer w-full mt-8 border border-orange-500 text-orange-600 py-2 rounded-full hover:bg-orange-50">Join
                            elite
                        </a>
                    @endif
                </div>
            </div>
        @endforeach
    </div>
</section>