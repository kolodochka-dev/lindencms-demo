<?php

namespace App\Nodes;

use LindenCMS\Cms\Attributes\Validation;
use LindenCMS\Cms\Attributes\View;
use LindenCMS\Core\Attributes\Collection;
use LindenCMS\Cms\Nodes\_Bool;
use LindenCMS\Cms\Nodes\_Float;
use LindenCMS\Cms\Nodes\_String;
use LindenCMS\Cms\Nodes\_Text;
use LindenCMS\Cms\Nodes\AppNode;
use LindenCMS\Cms\Nodes\AppNodeCollection;

#[View(
    label: 'Membership',
    labelMany: 'Memberships',
    icon: 'mdi:wallet-membership',
    index: ['title', 'price', 'created_at', 'updated_at'],
    filterable: ['id', 'title', 'price', 'created_at'],
    sortable: ['id', 'title', 'price', 'created_at'],
)]
class Membership extends AppNode
{
    #[View(label: 'title', asOption: true)]
    #[Validation('required')]
    public _String $title;

    #[View(hidden: true)]
    public _Text $description;

    public _Float $price;

    public _Bool $is_popular;

    #[Collection(Access::class)]
    public AppNodeCollection $access;

    public function getOptionLabel(): string
    {
        return "$this->title - \${$this->price->get()}/month ({$this->access->first()->title})";
    }
}