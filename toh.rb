class ToH
    def initialize height
        @height, @source, @target, @aux = height, [], [], []
        height.downto(1) { |i| @source << i }
    end

    def play
        move @height, @source, @target, @aux
        show
    end

private
    def show
        p @source, @target, @aux, "------------"
    end

    def move n, src, tgt, aux
        if n.positive?
            move n-1, src, aux, tgt
            tgt << src.pop
            show
            move n-1, aux, tgt, src
            sleep 0.1
        end
    end
end


if __FILE__ == $PROGRAM_NAME
    toh = ToH.new 8
    toh.play
end
