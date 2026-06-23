<?php

namespace App\Nodes;

use LindenCMS\Cms\Attributes\Relationship;
use LindenCMS\Cms\Attributes\Validation;
use LindenCMS\Cms\Attributes\View;
use LindenCMS\Cms\Nodes\_Email;
use LindenCMS\Cms\Nodes\_String;
use LindenCMS\Cms\Nodes\AppNode;
use LindenCMS\Cms\Nodes\Relation;

#[View(
    label: 'Lead',
    labelMany: 'Leads',
    icon: 'lets-icons:form',
    index: ['first_name', 'last_name', 'created_at',],
    filterable: ['id', 'first_name', 'last_name', 'created_at'],
    sortable: ['id', 'first_name', 'last_name', 'created_at'],
)]
class Lead extends AppNode
{
    #[View(label: 'first name')]
    #[Validation('required')]
    public _String $first_name;

    #[View(label: 'last name')]
    #[Validation('required')]
    public _String $last_name;

    #[View(label: 'email', readonly: true)]
    public _Email $email;

    #[View(label: 'phone', readonly: true)]
    public _String $phone;

    #[Relationship(Membership::class)]
    public Relation $membership;
}