require 'treetop'
Treetop.load(File.expand_path('../grammar.treetop', __FILE__))
Treetop.load(File.expand_path('../alternate.treetop', __FILE__))
Treetop.load(File.expand_path('../lisp.treetop', __FILE__))
