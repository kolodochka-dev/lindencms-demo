<?php

namespace App\Nodes;

use LindenCMS\Cms\Attributes\File;
use LindenCMS\Cms\Attributes\Validation;
use LindenCMS\Cms\Attributes\View;
use LindenCMS\Cms\Nodes\_String;
use LindenCMS\Cms\Nodes\_Text;
use LindenCMS\Cms\Nodes\AppNode;
use LindenCMS\Cms\Nodes\FileUploads;

#[View(
    label: 'Area',
    labelMany: 'Areas',
    icon: 'mingcute:open-door-line',
    index: ['title', 'created_at'],
    filterable: ['id', 'title', 'created_at'],
    sortable: ['id', 'title', 'created_at'],
)]
class Area extends AppNode
{
    #[Validation('required')]
    public _String $title;

    #[Validation('required')]
    public _Text $description;

    public _String $tag;

    #[File(multiple: false)]
    public FileUploads $preview;
}