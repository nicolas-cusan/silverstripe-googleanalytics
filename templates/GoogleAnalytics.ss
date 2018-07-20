<% if $GoogleAnalyticsTrackingCode %>
<script async src='https://www.googletagmanager.com/gtag/js?id={$GoogleAnalyticsTrackingCode}'></script>
<script>
  var gaProperty = '{$GoogleAnalyticsTrackingCode}';
  var disableStr = 'ga-disable-' + gaProperty;
  if (document.cookie.indexOf(disableStr + '=true') > -1) {
    window[disableStr] = true;
  }
  // google ananlytics
  function gaOptout() {
    console.log('ga optout');
    document.cookie = disableStr + '=true; expires=Thu, 31 Dec 2099 23:59:59 UTC; path=/';
    window[disableStr] = true;
  }
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', gaProperty, { 'anonymize_ip': true });
</script>
<% end_if %>
