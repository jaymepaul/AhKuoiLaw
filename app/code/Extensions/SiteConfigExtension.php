<?php

namespace AhKuoiLaw\Extensions;

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataExtension;

class SiteConfigExtension extends DataExtension
{
    /**
     * @var array
     */
    private static $db = [
        'PhoneNumber' => 'Varchar(255)'
    ];

    /**
     * @return void
     */
    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldToTab(
            'Root.Main',
            TextField::create(
                'PhoneNumber',
                'Contact Number'
            )->setDescription('Enter a contact number for users to contact your organisation.')
        );
    }
}
