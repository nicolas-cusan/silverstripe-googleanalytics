# arillo/silverstripe-googleanalytics

Adds google analytics tracking script to your site, if it is in production mode.

## Requirements

SilverStripe ^3.0

## Setup

To make it work, you have to define `AO_GA_TRACKING_CODE` constant.

```php
// define in _config.php or _ss_environment.php
define('AO_GA_TRACKING_CODE', <YOUR_GA_TRACKING_CODE>);
```

Add the following into the `<head>` section of your template:

```
$GoogleAnalytics
```

## Customize

You can overwrite `GoogleAnalytics.ss` on project basis, if you need some different behaviour.

### Google tag manager

To make it work, you have to define `AO_GTM_CODE` environment variable.

```
# define in .env
define('AO_GTM_CODE', <YOUR_AO_GTM_CODE>);
```

Add the following into the `<head>` section of your template:

```
$GoogleTagManager(head)
```

After the opening `<body>` tag:

```
$GoogleTagManager(body)
```

#### Customize

You can overwrite `GoogleTagManager.ss` on project basis, if you need some different behaviour.
