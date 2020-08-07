<% if $GoogleTagManagerCode %>
  <% if $GoogleTagManagerType == head %>
    <script async src="https://www.googletagmanager.com/gtag/js?id={$GoogleTagManagerCode}"></script>
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','{$GoogleTagManagerCode}');</script>
  <% end_if %>

  <% if $GoogleTagManagerType == body %>
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id={$GoogleTagManagerCode}"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
  <% end_if %>
<% end_if %>
