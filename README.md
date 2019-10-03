# arillo/silverstripe-googleanalytics

Adds google analytics tracking script to your site, if it is in production (live) mode.

## Requirements

SilverStripe ^4.0

For a SilverStripe 3.x compatible version of this module, please see the [1.x branch, or 0.x release line](https://github.com/arillo/silverstripe-googleanalytics/tree/1.x).

## Setup

### Google analytics

To make it work, you have to define `AO_GA_TRACKING_CODE` environment variable.

```
# define in .env
AO_GA_TRACKING_CODE="<YOUR_GA_TRACKING_CODE>"
```

Add the following into the `<head>` section of your template:

```
$GoogleAnalytics
```

#### Customize

You can overwrite `GoogleAnalytics.ss` on project basis, if you need some different behaviour.

### Google tag manager

To make it work, you have to define `AO_GTM_CODE` environment variable.

```
# define in .env
AO_GTM_CODE="<YOUR_GTM_CODE>"
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
