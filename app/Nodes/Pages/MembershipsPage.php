<?php

namespace App\Nodes\Pages;

use App\Nodes\Membership;
use Illuminate\Http\Request;
use LindenCMS\Cms\Attributes\Load;
use LindenCMS\Cms\Exceptions\LoadException;
use LindenCMS\Core\Attributes\Collection;
use LindenCMS\Cms\Nodes\AppNodeCollection;
use LindenCMS\Cms\Nodes\Page;

class MembershipsPage extends Page
{
    #[Load(static function (AppNodeCollection $node/* , Request $request */) {
        if (!$node->context('db.read')->read()) {
            throw new LoadException(abort(404));
        }
    })]
    #[Collection(type: Membership::class)]
    public AppNodeCollection $memberships;
}