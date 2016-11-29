#!/usr/bin/env ruby -wKU

# Fix load path
$: << '.'
require "ex1_node"

Node.new(nil, :root) do|root|
  Node.new(root, :living_room) do|lr|
    Node.new(lr, :cat) do|cat|
      Node.new(cat, :dead_mouse)
    end

    Node.new(lr, :remote_control) do|rem|
      Node.new(rem, :dead_batteries)
    end

    Node.new(lr, :player) do|pl|
      Node.new(pl, :ham_sandwich)
    end
  end

  Node.new(root, :kitchen) do|kit|
    Node.new(kit, :drawer) do|dr|
      Node.new(dr, :new_batteries)
    end
  end

  Node.new(root, :hall)
end
