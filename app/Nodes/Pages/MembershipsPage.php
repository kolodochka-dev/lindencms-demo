<?php

namespace App\Nodes\Pages;

use App\Nodes\Membership;
use Illuminate\Http\Request;
use LindenCMS\Cms\Attributes\Load;
use App\Exceptions\LoadException;
use LindenCMS\Core\Attributes\Collection;
use LindenCMS\Cms\Nodes\AppNodeCollection;
use LindenCMS\Cms\Nodes\Page;

class MembershipsPage extends Page
{
    #[Load(static function (AppNodeCollection $node/* , Request $request */) {
        // throw new LoadException(abort(404));
        return $node->context('db.read')->read();
    })]
    #[Collection(type: Membership::class)]
    public AppNodeCollection $memberships;
}