<section class="max-w-7xl mx-auto px-5 md:px-8 py-20">
    <div class="grid md:grid-cols-2 gap-14 items-start">
        <div>
            <span class="text-orange-500 text-sm font-semibold uppercase tracking-wide">become a member</span>
            <h2 class="text-4xl md:text-5xl font-extrabold text-gray-900 mt-2 leading-tight">
                Join Hyperion<br>
                <span class="text-orange-500">Commit to strength</span>
            </h2>
            <p class="text-gray-500 text-lg mt-5">We don’t offer free trials — because real progress starts with
                dedication. Choose your plan, fill the form, and start training today. Access to all strength zones,
                group classes and recovery area.</p>
            <div class="mt-8 bg-gray-50 rounded-2xl p-5 border border-gray-100">
                <div class="flex gap-3 items-center">
                    <div class="w-10 h-10 rounded-full bg-orange-100 flex items-center justify-center">💪</div>
                    <div>
                        <h3 class="font-bold">Immediate access</h3>
                        <p class="text-sm text-gray-500">After sign up you'll receive a QR code for gym entry.</p>
                    </div>
                </div>
                <div class="flex gap-3 items-center mt-4">
                    <div class="w-10 h-10 rounded-full bg-orange-100 flex items-center justify-center">📋</div>
                    <div>
                        <h3 class="font-bold">No hidden fees</h3>
                        <p class="text-sm text-gray-500">Monthly or annual — you choose, cancel anytime.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="bg-white border border-gray-200 rounded-2xl shadow-lg p-6 md:p-8">
            <h2 class="text-2xl font-bold text-gray-900">Start your membership</h2>
            <p class="text-gray-500 text-sm mt-1">Select a plan and complete registration (paid).</p>
            <form method="post" action="{{ route('site.leads.create') }}" id="signupForm" class="mt-6 space-y-4">
                @csrf
                <div class="grid grid-cols-2 gap-4">
                    <div>
                        <label class="block text-xs font-semibold text-gray-700">First name</label>
                        <input type="text" name="first_name" required
                            class="w-full border border-gray-200 rounded-xl px-4 py-2.5 text-sm focus:outline-none focus:border-orange-400">
                    </div>
                    <div>
                        <label class="block text-xs font-semibold text-gray-700">Last name</label>
                        <input type="text" name="last_name" required
                            class="w-full border border-gray-200 rounded-xl px-4 py-2.5 text-sm focus:outline-none focus:border-orange-400">
                    </div>
                </div>
                <div>
                    <label class="block text-xs font-semibold text-gray-700">Email address</label>
                    <input type="email" name="email" required
                        class="w-full border border-gray-200 rounded-xl px-4 py-2.5 text-sm focus:outline-none focus:border-orange-400">
                </div>
                <div>
                    <label class="block text-xs font-semibold text-gray-700">Phone</label>
                    <input type="tel" name="phone" required
                        class="w-full border border-gray-200 rounded-xl px-4 py-2.5 text-sm focus:outline-none focus:border-orange-400">
                </div>
                <div>
                    <label class="block text-xs font-semibold text-gray-700">Choose membership</label>
                    <select name="membership"
                        class="w-full border border-gray-200 rounded-xl px-4 py-2.5 text-sm focus:outline-none focus:border-orange-400">
                        @foreach ($memberships as $membership)
                            <option value="{{ $membership->id->get() }}" @if(request('membership', null) == $membership->id->get()) selected @endif>
                                {{ $membership->getOptionLabel() }}
                            </option>
                        @endforeach
                    </select>
                </div>
                <button type="submit"
                    class="w-full btn-orange text-white py-3 rounded-xl font-bold text-base mt-3 cursor-pointer">
                    Pay & join →
                </button>
                <p class="text-center text-[11px] text-gray-400">Secure payment</p>
            </form>
            <div id="signupMessage" class="text-center text-sm mt-4 hidden text-green-600"></div>
        </div>
    </div>
</section>