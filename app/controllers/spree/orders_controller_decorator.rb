Spree::OrdersController.class_eval do
  def reorder
    reorder = Spree::OrderContents.new current_order(create_order_if_necessary: true)
    order = Spree::Order.find_by number: params[:id]

    if order.line_items.select { |item| reorder.add(item.variant, item.quantity) }.any?
      respond_with(@order) do |format|
        format.html { redirect_to cart_path }
      end
    else
      flash[:error] = reorder.errors.full_messages.join ' '
      redirect_to :back
    end
  end
end
