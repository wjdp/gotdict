Jekyll::Hooks.register :site, :pre_render do |site|
  Jekyll.logger.info "render:", "Rendering documents"
end
