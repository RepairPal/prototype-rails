require 'action_view/helpers/rendering_helper'

module RenderUpdate
  def render_with_update(options = {}, locals = {}, &block)
    if options == :update
      update_page(&block)
    else
      super(options, locals, &block)
    end
  end
end

ActionView::Helpers::RenderingHelper.prepend(RenderUpdate)