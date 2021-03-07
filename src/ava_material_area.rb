#-------------------------------------------------------------------------------
#
#    Author: Julia Christina Eneroth (eneroth3@gmail.com)
# Copyright: Copyright (c) 2017
#   License: MIT
#
#-------------------------------------------------------------------------------

require "sketchup.rb"
require "extensions.rb"

module Eneroth
  module MaterialAreaCounter

    PLUGIN_ID = File.basename(__FILE__, ".rb")
    PLUGIN_DIR = File.join(File.dirname(__FILE__), PLUGIN_ID)

    EXTENSION = SketchupExtension.new(
      "Avajadi Material Area Counter",
      File.join(PLUGIN_DIR, "main")
    )
    EXTENSION.creator     = "Julia Christina Eneroth, Eddie Olsson"
    EXTENSION.description =
      "Show total areas for materials within the current selection."
    EXTENSION.version     = "1.1.12"
    EXTENSION.copyright   = "#{EXTENSION.creator} 2021"
    Sketchup.register_extension(EXTENSION, true)

  end
end
