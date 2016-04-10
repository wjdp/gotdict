---
---

$(document).ready ->
  # Link correction on /defs/ pages, see #33
  $(".definition-definition a").each (index, link) ->
    id = link.getAttribute("href").slice(1)
    href = "/defs/#{id}.html"
    link.setAttribute("href", href)


