#Requires AutoHotkey v2.0
spot1 := true
spot2 := true
spot3 := true
spot4 := true
spot5 := true
spot6 := true
spot7 := true
spot8 := true
loops := true
autopray := true


f::
{
    ExitApp
}
disabler(*) {
     global spot1
    if (spot1)
    {
        spot1 := false
        
    }
    else
    {
        spot1 := true
    }
}
disabler10(*) {
    global autopray
   if (autopray)
   {
       autopray := false
       
   }
   else
   {
       autopray := true
   }
}
disabler9(*) {
    global spot8
   if (spot8)
   {
       spot8 := false
       
   }
   else
   {
       spot8 := true
   }
}
disabler8(*) {
    global spot7
   if (spot7)
   {
       spot7 := false
       
   }
   else
   {
       spot7 := true
   }
}
disabler6(*) {
    global spot5
   if (spot5)
   {
       spot5 := false
       
   }
   else
   {
       spot5 := true
   }
}
disabler7(*) {
    global spot6
   if (spot6)
   {
       spot6 := false
       
   }
   else
   {
       spot6 := true
   }
}
disabler5(*) {
    global spot4
   if (spot4)
   {
       spot4 := false
       
   }
   else
   {
       spot4 := true
   }
}
disabler4(*) {
    global spot3
   if (spot3)
   {
       spot3 := false
       
   }
   else
   {
       spot3 := true
   }
}
disabler3(*) {
    global loops
   if (loops)
   {
       loops := false
       
   }
   else
   {
       loops := true
   }
}
disabler2(*) {
    global spot2
   if (spot2)
   {
       spot2 := false
       
   }
   else
   {
       spot2 := true
   }
}
MyGui := Gui()
MyGui.Add("Text",, "welcome to goober macroV1 (TURN OFF SHIFTLOCK AND SET DISPLAY TO 100% OR SOME THINGS WILL BREAK)")
MyGui.Add("Text",, "Press G to start macro")
MyGui.Add("Text",, "Press F to End macro")
MyGui.Add("Text",, "Everything is set to true at the start")
button := MyGui.Add("Button",, "Press me to enable/disable Loop forever")
praybutton := MyGui.Add("Button",, "Press me to Turn on Auto use Pray (uses pray before every cycle)")
buttont := MyGui.Add("Button",, "Press me to enable/disable spot 1")
buttont2 := MyGui.Add("Button",, "Press me to enable/disable spot 2")
buttont3 := MyGui.Add("Button",, "Press me to enable/disable spot 3")
buttont4 := MyGui.Add("Button",, "Press me to enable/disable spot 4")
buttont5 := MyGui.Add("Button",, "Press me to enable/disable spot 5")
buttont6 := MyGui.Add("Button",, "Press me to enable/disable spot 6")
buttont7 := MyGui.Add("Button",, "Press me to enable/disable spot 7")
buttont8 := MyGui.Add("Button",, "Press me to enable/disable spot 8")
buttont.OnEvent("Click",disabler )
buttont2.OnEvent("Click",disabler2 )
buttont3.OnEvent("Click",disabler4 )
buttont4.OnEvent("Click",disabler5 )
button.OnEvent("Click",disabler3 )
buttont5.OnEvent("Click",disabler6 )
buttont6.OnEvent("Click",disabler7 )
buttont7.OnEvent("Click",disabler8 )
buttont8.OnEvent("Click",disabler9 )
praybutton.OnEvent("Click",disabler10 )
MyGui.Show
#Requires AutoHotkey v2.0

; Function to check pixel color at specific coordinates
CheckPixelColor() {
    CoordMode("Pixel", "Screen") ; Set pixel coordinates to screen
    pixelColor := PixelGetColor(50, 426, "RGB") ; Get the color of the pixel at (50, 426)
    
    ; Extract the RGB components
    red := (pixelColor & 0xFF0000) >> 16
    green := (pixelColor & 0x00FF00) >> 8
    blue := (pixelColor & 0x0000FF)
    
    ; Check if the color is "yellow-ish" (red and green dominate, blue is low)
    if (red > 200 && green > 200 && blue < 100) {
        return true ; Yellow detected
    } else {
        return false ; Not yellow
    }
}


autoprayuse()
{
    mousecheck := 0
    MouseMove(41,418)
    Sleep(100)
    MouseMove(44,418)
    Sleep(100)
    MouseClick "left", 41, 418
    Sleep(100)
    MouseMove(1104,345)
    Sleep(300)
    MouseClick "left", 1104, 346
    Sleep(300)
    MouseMove(920,414)
    Sleep(200)
    MouseClick "left", 925, 414
    Sleep(500)
    MouseMove(591,595)
    Sleep(200)
    MouseClick "left", 801, 602
    Sleep(100) ; end
    MouseMove(918,345)
    Sleep(300)
    MouseClick "left", 1104, 346
    Sleep(300)
    MouseMove(920,414)
    Sleep(200)
    MouseClick "left", 925, 414
    Sleep(500)
    MouseMove(591,595)
    Sleep(200)
    MouseClick "left", 801, 602
    Sleep(100) ; end
        MouseClick "left", 925, 414
        Sleep(300)
        MouseMove(41,418)
        Sleep(100)
        MouseMove(44,418)
        Sleep(100)
        MouseClick "left", 41, 418
}
 g::
 {
    if (loops)
    {
loop 
{
    if autopray == true 
        {
            autoprayuse()
            Sleep(6000)
        }
    if spot1 == true 
    {
        sim()
        Sleep(4000)
    }
    if spot8 == true 
        {
            sim8()
            Sleep(12000)
        }
    if spot7 == true 
        {
            sim7()
            Sleep(12000)
        }
    if spot4 == true 
        {
            sim4()
            Sleep(4000)
        }
    if spot3 == true 
        {
            sim3()
            
            Sleep(4000)
        }
        if spot5 == true 
            {
                sim5()
                Sleep(10000)
            }
            if spot6 == true 
                {
                    sim6()
                    Sleep(10000)
                }
    if spot2 == true 
        {
            sim2()
            Sleep(20000)
        }
    }
}
else
    if spot1 == true 
        {
            sim()
            Sleep(3500)
        }
        if spot8 == true 
            {
                sim8()
                Sleep(14000)
            }
        if spot7 == true 
            {
                sim7()
                Sleep(12000)
            }
        if spot4 == true 
            {
                sim4()
                Sleep(4000)
            }
        if spot3 == true 
            {
                sim3()
                Sleep(4000)
            }
            if spot5 == true 
                {
                    sim5()
                    Sleep(10000)
                }
            if spot6 == true 
                {
                    sim6()
                    Sleep(10000)
                }
        if spot2 == true 
            {
                sim2()
                Sleep(12000)
            }
   
        }

sim()
{
    Send("{Escape}")
    Sleep(10)
    Send("r")
    Sleep(10)
    Send("{Enter}")
    Sleep(1000)
Send("{w Down}")
Sleep(2500)
Send("{w Up}")
Sleep(10)
Send("{Space Down}")
Send("{w Down}")
Sleep(200)
Send("{w Up}")
Send("{Space Up}")
Sleep(700)
Send("{w Down}")
Sleep(250)
Send("{s Up}")
Send("{w Up}")
Send("{e Down}")
Sleep(50)
Send("{e Up}")
}
sim2()
{
    Send("{Escape}")
    Sleep(10)
    Send("r")
    Sleep(10)
    Send("{Enter}")
    Sleep(1000)
Send("{d Down}")
Sleep(2500)
Send("{d Up}")
Send("{s Down}")
Sleep(1000)
Send("{s Up}")
Send("{d Down}")
Sleep(1000)
Send("{d Up}")
Send("{w Down}")
Sleep(8000)
Send("{w Up}")
Send("{a Down}")
Sleep(825)
Send("{a Up}")
Send("{w Down}")
Sleep(3000)
Send("{w Up}")
Send("{a Down}")
Sleep(1000)
Send("{a Up}")
Send("{s Down}")
Sleep(200)
Send("{s Up}")
Send("{e Down}")
Sleep(100)
Send("{e Up}")
}
sim3()
{
    Send("{Escape}")
    Sleep(10)
    Send("r")
    Sleep(10)
    Send("{Enter}")
    Sleep(1000)
Send("{s Down}")
Sleep(2500)
Send("{s Up}")
Send("{a Down}")
Sleep(700)
Send("{a Up}")
Send("{Space Down}")
Send("{s Down}")
Sleep(600)
Send("{s Up}")
Send("{Space Up}")
Send("{e Down}")
Sleep(100)
Send("{e Up")
}
sim4()
{
    Send("{Escape}")
    Sleep(10)
    Send("r")
    Sleep(10)
    Send("{Enter}")
    Sleep(1000)
Send("{d Down}")
Sleep(2500)
Send("{d Up}")
Send("{s Down}")
Sleep(1000)
Send("{s Up}")
Send("{d Down}")
Sleep(1000)
Send("{d Up}")
Send("{w Down}")
Sleep(5800)
Send("{w Up}")
Send("{d Down}")
Sleep(5000)
Send("{d Up}")
Send("{e Down}")
Sleep(100)
Send("{e Up}")
}
sim5()
{
    Send("{Escape}")
    Sleep(10)
    Send("r")
    Sleep(10)
    Send("{Enter}")
    Sleep(1000)
Send("{d Down}")
Sleep(2500)
Send("{d Up}")
Send("{s Down}")
Sleep(1000)
Send("{s Up}")
Send("{d Down}")
Sleep(1000)
Send("{d Up}")
Send("{w Down}")
Sleep(8000)
Send("{w Up}")
Send("{a Down}")
Sleep(825)
Send("{a Up}")
Send("{w Down}")
Sleep(1500)
Send("{w Up}")
Send("{a Down}")
Sleep(1500)
Send("{a Up}")
Send("{e Down}")
Sleep(100)
Send("{e Up}")
}
sim6()
{
    Send("{Escape}")
    Sleep(10)
    Send("r")
    Sleep(10)
    Send("{Enter}")
    Sleep(1000)
    Send("{a Down}")
    Sleep(250)
    Send("{a Up}")
    Send("{s Down}")
    Sleep(5000)
    Send("{s Up}")
    Send("{a Down}")
    Sleep(1000)
    Send("{a Up}")
    Send("{d Down}")
    Sleep(1300)
    Send("{d Up}")
    Send("{e Down}")
    Sleep(100)
    Send("{e Up}")
    }
    sim7()
{
    Send("{Escape}")
    Sleep(10)
    Send("r")
    Sleep(10)
    Send("{Enter}")
    Sleep(1000)
    Send("{a Down}")
    Sleep(250)
    Send("{a Up}")
    Send("{s Down}")
    Sleep(5000)
    Send("{s Up}")
    Send("{a Down}")
    Sleep(1000)
    Send("{a Up}")
    Send("{d Down}")
    Sleep(3000)
    Send("{d Up}")
    Send("{w Down}")
    Sleep(500)
    Send("{w Up}")
    Send("{e Down}")
    Sleep(100)
    Send("{e Up}")
    }
    sim8()
{
    Send("{Escape}")
    Sleep(10)
    Send("r")
    Sleep(10)
    Send("{Enter}")
    Sleep(1000)
Send("{d Down}")
Sleep(2500)
Send("{d Up}")
Send("{s Down}")
Sleep(1000)
Send("{s Up}")
Send("{d Down}")
Sleep(1000)
Send("{d Up}")
Send("{w Down}")
Sleep(10500)
Send("{w Up}")
Send("{d Down}")
Sleep(5000)
Send("{d Up}")
Send("{e Down}")
Sleep(100)
Send("{e Up}")
}