<% if (theme.fancybox) { %>
  <script src="//cdnjs.loli.net/ajax/libs/fancybox/3.3.5/jquery.fancybox.min.js"></script>
  <script>
  //利用 FancyBox 实现点击图片放大
  $(document).ready(function() {
    $('article img').not('[hidden]').not('.panel-body img').each(function() {
      var $image = $(this);
      var imageCaption = $image.attr('alt');
      var $imageWrapLink = $image.parent('a');
      if ($imageWrapLink.length < 1) {
        var src = this.getAttribute('src');
        var idx = src.lastIndexOf('?');
        if (idx != -1) {
          src = src.substring(0, idx);
        }
        $imageWrapLink = $image.wrap('<a href="' + src + '"></a>').parent('a');
      }
      $imageWrapLink.attr('data-fancybox', 'images');
      if (imageCaption) {
        $imageWrapLink.attr('data-caption', imageCaption);
      }
    });
    $().fancybox({
      selector: '[data-fancybox="images"]',
      hash: false,
      loop: false,
    });
  });
  </script>
<% } %>
