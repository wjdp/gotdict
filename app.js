(function() {
  $(document).ready(function() {
    return $(".definition-definition a").each(function(index, link) {
      var href, id;
      id = link.getAttribute("href").slice(1);
      href = "/defs/" + id + ".html";
      return link.setAttribute("href", href);
    });
  });

}).call(this);
