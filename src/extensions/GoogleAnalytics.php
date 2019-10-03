<?php
namespace Arillo\GoogleAnalytics\Extensions;

use SilverStripe\ORM\DataExtension;
use SilverStripe\Core\Environment;

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

    public function GoogleTagManager($type = 'head')
    {
        if (
            Environment::getEnv('SS_ENVIRONMENT_TYPE') === 'live'&&
            Environment::getEnv('AO_GTM_CODE')
        ) {
            return $this->owner->customise([
                'GoogleTagManagerCode' => Environment::getEnv('AO_GTM_CODE'),
                'GoogleTagManagerType' => $type,
            ])->renderWith('GoogleTagManager');
        }
    }
}
