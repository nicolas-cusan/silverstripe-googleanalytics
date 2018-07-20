<?php
namespace Arillo\GoogleAnalytics\Extensions;

use SilverStripe\ORM\DataExtension;
use SilverStripe\Core\Environment;
use Director;

class GoogleAnalytics extends DataExtension
{
    public function getGoogleAnalytics()
    {
        if (
            Environment::getEnv('SS_ENVIRONMENT_TYPE') === 'live' &&
            Environment::getEnv('AO_GA_TRACKING_CODE')
        ) {
            return $this->owner->customise([
                'GoogleAnalyticsTrackingCode' => Environment::getEnv('AO_GA_TRACKING_CODE')
            ])->renderWith('GoogleAnalytics');
        }
    }
}
