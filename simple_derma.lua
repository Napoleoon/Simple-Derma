-- Adds a Console Command --
concommand.Add("simplederma", function( frame, cmd, args)

    local frame = vgui.Create("DFrame")
    frame:SetSize( 500, 400)
    frame:Center()
    frame:SetTitle("Simple Derma!")
    frame:SetDraggable(false)
    frame:ShowCloseButton(true)
    frame:MakePopup()
-- Changes the Background Color --
    frame.Paint = function( self, w, h )
        draw.RoundedBox(4, 0, 0, w, h, Color(37, 37, 41))
    end

    
    local button = vgui.Create("DButton", frame)
    button:SetSize( 200, 100 )
    button:Center()
    button:SetText("Simple Button")
    button:SetFont("Default")
-- Changes the Background Color of the Button --
    button.Paint = function( self, w, h )
        draw.RoundedBox(5, 0, 0, w, h, Color(173, 173, 173))
    end
end)