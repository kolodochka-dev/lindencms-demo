<?php

namespace App\Nodes;

use LindenCMS\Cms\Attributes\Validation;
use LindenCMS\Cms\Nodes\_String;
use LindenCMS\Cms\Nodes\AppNode;

class Feature extends AppNode
{
    #[Validation('required')]
    public _String $counter;
    
    #[Validation('required')]
    public _String $feature;
}