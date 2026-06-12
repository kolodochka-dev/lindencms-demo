<?php

namespace App\Nodes\Pages;

use Illuminate\Http\Request;
use LindenCMS\Cms\Attributes\Load;
use App\Exceptions\LoadException;
use LindenCMS\Core\Attributes\Collection;
use App\Nodes\About;
use App\Nodes\Area;
use App\Nodes\Gallery;
use App\Nodes\Membership;
use LindenCMS\Cms\Nodes\AppNode;
use LindenCMS\Cms\Nodes\AppNodeCollection;
use LindenCMS\Cms\Nodes\Page;

class HomePage extends Page
{
    #[Load(static function (AppNode $node) {
        $node->context('db.read-first');
    })]
    public About $about;

    #[Load(static function (AppNode $node) {
        $node->context('db.read-first');
    })]
    public Gallery $gallery;

    #[Load(static function (AppNodeCollection $node) {
        $node->context('db.read')->read();
    })]
    #[Collection(type: Membership::class)]
    public AppNodeCollection $memberships;

    #[Load(static function (AppNodeCollection $node) {
        $node->context('db.read')->read();
    })]
    #[Collection(type: Area::class)]
    public AppNodeCollection $areas;
}