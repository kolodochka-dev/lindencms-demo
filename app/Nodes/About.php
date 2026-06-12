<?php

namespace App\Nodes;

use LindenCMS\Cms\Attributes\File;
use LindenCMS\Cms\Attributes\Validation;
use LindenCMS\Cms\Attributes\View;
use LindenCMS\Core\Attributes\Collection;
use LindenCMS\Cms\Nodes\_String;
use LindenCMS\Cms\Nodes\_Text;
use LindenCMS\Cms\Nodes\AppNode;
use LindenCMS\Cms\Nodes\AppNodeCollection;
use LindenCMS\Cms\Nodes\FileUploads;

#[View(
    label: 'About Page',
    labelMany: 'About Page',
    icon: 'ix:about',
    index: ['title', 'created_at', 'updated_at'],
    filterable: ['id', 'title', 'created_at'],
    sortable: ['id', 'title', 'created_at'],
    singlePage: true,
)]
class About extends AppNode
{
    #[Validation('required')]
    public _String $title;

    #[Validation('required')]
    public _String $subtitle;

    #[Validation('required')]
    public _Text $description;

    #[Collection(Feature::class)]
    public AppNodeCollection $features;

    #[File(multiple: false)]
    public FileUploads $image;
}