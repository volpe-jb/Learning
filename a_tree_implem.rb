# Copyright (c) 2010, Brett Alistair Kromkamp - brettkromkamp@gmail.com
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without modification,
# are permitted provided that the following conditions are met:
# 
# Redistributions of source code must retain the above copyright notice, this list
# of conditions and the following disclaimer.
# 
# Redistributions in binary form must reproduce the above copyright notice, this
# list of conditions and the following disclaimer in the documentation and/or
# other materials provided with the distribution.
# 
# Neither the name of the copyright holder nor the names of the contributors
# may be used to endorse or promote products derived from this software without
# specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
# ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

module Debug
    def whoAmI?
        "#{self.class.name} (##{self.object_id}): #{self.to_s}"
    end
end

# global constants
ROOT = 0
ADD = 0
DELETE = 1
INSERT = 2

class Node

    # mixin 'Debug module'
    include Debug

    attr_accessor :id
    attr_accessor :name
    attr_accessor :bpointer
    attr_accessor :expanded
    attr_reader :fpointer

    def initialize(id, name)
        @id = id
        @name = name
        @bpointer = nil
        @fpointer = Array.new
        @expanded = true
    end

    def to_s()
        "Id[#{self.id}]: #{self.name}"
    end

    def to_xml
        # stub
    end

    def updateFPointer(id, mode, fpointer = nil)
        if fpointer.nil?
            case mode
            when ::ADD then @fpointer.push(id)
            when ::DELETE then @fpointer.delete(id)
            when ::INSERT then @fpointer = [id]
            end
        else
            @fpointer = fpointer
        end
    end
end

class Tree

    # mixin 'Debug module'
    include Debug

    # class constants
    ROOT = 0
    DEPTH = 1
    WIDTH = 0

    attr_reader :nodes

    def initialize ()
        @nodes = Array.new
    end

    # ============================================================

    private

    def updateFPointer(pos, id, mode)
        if pos.nil?
            return
        else
            @nodes[pos].updateFPointer(id, mode)
        end
    end

    def updateBPointer(pos, id)
        @nodes[pos].bpointer = id
    end

    def generateId
        result = 0
        @nodes.each do | node |
            if node.id > result
                result = node.id
            end
        end
        result += 1
        return result
    end

    def getIndex(pos = nil)
        if pos.nil?
            return ROOT
        else
            index = 0
            @nodes.each do | node |
                break if node.id == pos
                index += 1
            end
        end
        return index
    end

    # ============================================================

    public

    def appendNode(pos, name)
        if pos.nil?
            id = ROOT
        else
            id = generateId
        end
        node = Node.new(id, name)
        @nodes.push(node)
        updateFPointer(pos, id, ::ADD)
        node.bpointer = pos
        return node
    end

    def insertNode(pos, name)
        # stub
    end

    def deleteNode(pos)
        # stub
    end

    def show(pos = ROOT, level = ROOT)
        queue = @nodes[pos].fpointer
        if !queue.empty? # branch
            if level == ROOT
                puts "#{@nodes[pos].id}: #{@nodes[pos].name}"
            else
                puts "t"*level + "#{@nodes[pos].id}: #{@nodes[pos].name}"
            end
            if @nodes[pos].expanded
                level += 1
                queue.each do | element |
                    show(element, level) # recursive call
                end
            end
        else # leaf
            if level == ROOT
                puts "#{@nodes[pos].id}: #{@nodes[pos].name}"
            else
                puts "t"*level + "#{@nodes[pos].id}: #{@nodes[pos].name}"
            end
        end
    end

    # iterator method
    # Loosly based on an algorithm from 'Essential LISP' by
    # John R. Anderson, Albert T. Corbett, and Brian J. Reiser, page 239-241
    def expandDown(pos = ROOT, mode = DEPTH)
        yield pos
        queue = @nodes[pos].fpointer
        while !queue.empty?
            yield queue[0]
            expand = @nodes[queue[0]].fpointer
            if mode == DEPTH
                queue = expand + queue.slice(1, queue.length) # depth-first
            else
                queue = queue.slice(1, queue.length) + expand # width-first
            end
        end
    end

    # debug statement
    def list
        @nodes.each { | node | puts node.whoAmI? }
    end

    # array-like accessors
    def [](key)
        @nodes[getIndex(key)]
    end

    def []=(key, item)
        @nodes[getIndex(key)] = item
    end

    # converter functions
    def to_s
        # stub
    end

    def to_xml
        # stub
    end
end
