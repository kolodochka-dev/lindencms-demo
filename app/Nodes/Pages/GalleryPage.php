<?php

namespace App\Nodes\Pages;

use App\Nodes\Gallery;
use LindenCMS\Cms\Attributes\Load;
use LindenCMS\Cms\Nodes\Page;

class GalleryPage extends Page
{
    #[Load(static function (Gallery $node) {
        return $node->context('db.read-first');
    })]
    public Gallery $gallery;
}