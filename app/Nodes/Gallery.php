<?php

namespace App\Nodes;

use LindenCMS\Cms\Attributes\Validation;
use LindenCMS\Cms\Attributes\View;
use LindenCMS\Cms\Nodes\_String;
use LindenCMS\Cms\Nodes\_Text;
use LindenCMS\Cms\Nodes\AppNode;
use LindenCMS\Cms\Nodes\FileUploads;

#[View(
    label: 'Gallery Page',
    labelMany: 'Gallery Page',
    icon: 'nrk:gallery',
    index: ['title', 'created_at', 'updated_at'],
    filterable: ['id', 'title', 'created_at'],
    sortable: ['id', 'title', 'created_at'],
    singlePage: true,
)]
class Gallery extends AppNode
{
    #[Validation('required')]
    public _String $title;

    #[Validation('required')]
    public _String $subtitle;

    #[Validation('required')]
    public _Text $description;
    
    public FileUploads $images;
}