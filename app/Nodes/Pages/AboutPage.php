<?php

namespace App\Nodes\Pages;

use App\Nodes\About;
use LindenCMS\Cms\Attributes\Load;
use LindenCMS\Cms\Nodes\Page;

class AboutPage extends Page
{
    #[Load(static function (About $node) {
        $node->context('db.read-first');
    })]
    public About $about;
}