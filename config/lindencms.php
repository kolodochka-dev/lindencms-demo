<?php

use App\Nodes\About;
use App\Nodes\Area;
use App\Nodes\Gallery;
use App\Nodes\Lead;
use App\Nodes\Membership;
use LindenCMS\Cms\Nodes\File;
use LindenCMS\Cms\Nodes\User;

return [
    // Nodes
    'nodes' => [
        'users' => User::class,
        'files' => File::class,
        'memberships' => Membership::class,
        'areas' => Area::class,
        'about' => About::class,
        'gallery' => Gallery::class,
        'leads' => Lead::class,
    ],
    'navigation' => [
        'content' => [
            Membership::class,
            Area::class,
            Lead::class,
        ],
        'pages' => [
            About::class,
            Gallery::class,
        ],
    ],
    'dashboard' => [
        Area::class,
        Membership::class,
        Lead::class,
        About::class,
        Gallery::class,
    ],

    // Routes
    'route_prefix' => 'lindencms',

    // Storage
    'storage_path' => 'lindencms',
    'storage_placeholders_path' => 'lindencms/placeholders',
    'default_accept' => [
        'image/*'
    ],

    // Site
    'public_views' => 'pages',

    // Database
    'table_prefix' => 'cms',
];
