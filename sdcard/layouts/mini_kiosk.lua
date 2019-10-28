require "keybow"
require "snippets/linux_snippets"

-- This is a Linux GNOME 3 keys configuration with 

function setup()
    keybow.use_mini()
    keybow.auto_lights(false)
    keybow.clear_lights()
    keybow.set_pixel(0, 255, 0, 0)   -- red
    keybow.set_pixel(1, 0, 0, 255)   -- blue
    keybow.set_pixel(2, 255, 255, 0) -- yellow
end

-- Key mappings --

function handle_minikey_00(pressed) -- Start Firefox
    if pressed then
        keybow.set_pixel(0, 0, 128, 0) -- green
        modifier(keybow.F2, keybow.LEFT_ALT)
    	keybow.sleep(400)
    	keybow.text("firefox")
    	keybow.sleep(100)
    	keybow.tap_enter()
    else
        keybow.set_pixel(0, 255, 0, 0) -- red
    end
end

function handle_minikey_01(pressed) -- Write @ domain.com on any keyboard layout
    if pressed then
        keybow.set_pixel(1, 0, 128, 0) -- green
        modifier("u", keybow.LEFT_SHIFT, keybow.LEFT_CTRL)
        keybow.text("40 ", pressed)
        keybow.text("domain.com", pressed)
    else
        keybow.set_pixel(1, 0, 0, 255) -- blue
    end
end

function handle_minikey_02(pressed) -- Lock GNOME screen
    if pressed then
        keybow.set_pixel(2, 0, 128, 0) -- green
        modifier("l", keybow.LEFT_CTRL, keybow.LEFT_ALT)
    else
        keybow.set_pixel(2, 255, 255, 0) -- yellow
    end
end
