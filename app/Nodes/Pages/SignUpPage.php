<?php

namespace App\Nodes\Pages;

use App\Nodes\Membership;
use LindenCMS\Cms\Attributes\Load;
use LindenCMS\Core\Attributes\Collection;
use LindenCMS\Cms\Nodes\AppNodeCollection;
use LindenCMS\Cms\Nodes\Page;

class SignUpPage extends Page
{
    #[Load(static function (AppNodeCollection $node) {
        return $node->context('db.read')->read();
    })]
    #[Collection(type: Membership::class)]
    public AppNodeCollection $memberships;
}