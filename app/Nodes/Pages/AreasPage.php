<?php

namespace App\Nodes\Pages;

use LindenCMS\Cms\Attributes\Load;
use LindenCMS\Core\Attributes\Collection;
use App\Nodes\Area;
use LindenCMS\Cms\Nodes\AppNodeCollection;
use LindenCMS\Cms\Nodes\Page;

class AreasPage extends Page
{
    #[Load(static function (AppNodeCollection $node) {
        return $node->context('db.read')->read();
    })]
    #[Collection(type: Area::class)]
    public AppNodeCollection $areas;
}