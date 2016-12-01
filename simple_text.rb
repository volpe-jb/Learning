# Ultra simple Ruby Text Adventure!
# By Peter Cooper
class Location
        attr_accessor :name, :description, :west, :east, :south, :north
        def initialize(params)
                @name = params[:name]
                @description = params[:description]
        end
        # We have to create our own setter methods to do the mirrored east/west north/south relationships
        def west=(loc)
                @west = loc
                @west.east = self unless @west.east
        end
        def east=(loc)
                @east = loc
                @east.west = self unless @east.west
        end
        def south=(loc)
                @south = loc
                @south.north = self unless @south.north
        end
        def north=(loc)
                @north = loc
                @north.south = self unless @north.south
        end
end
