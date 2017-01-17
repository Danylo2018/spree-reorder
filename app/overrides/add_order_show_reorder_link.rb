Deface::Override.new(
  original:      "50cf273def294c450165810b59c759af5540083f".freeze,
  virtual_path:  "spree/orders/show".freeze,
  name:          "add_order_show_reorder_link".freeze,
  insert_bottom: "[data-hook='links']".freeze,
  text:          "<%= link_to 'Reorder', reorder_order_path(@order), class: 'button' %>"
)
