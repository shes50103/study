# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
Mime::Type.register "application/pdf", :pdf


ActionController::Renderers.add :pdf do |filename, options|
  pdf = Prawn::Document.new
  pdf.text render_to_string(options)
  pdf.render
end
