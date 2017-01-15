--[[

▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY ahmad                           ▀▄ ▄▀ 
▀▄ ▄▀     BY ahmad       (@hmode_rap)        ▀▄ ▄▀ 
▀▄ ▄▀ Making the file by Memo              ▀▄ ▄▀   
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀   
                                                      
--]]
local function toaudio(msg, success, result) 
  local receiver = get_receiver(msg) 
  if success then 
    local file = msg.from.id..'.ogg' 
    print('File downloaded to:', result) 
    os.rename(result, file) 
    print('File moved to:', file) 
    send_audio(get_receiver(msg), file, ok_cb, false) 
    send_large_msg(receiver, '', ok_cb, false) 
    redis:del("document:audio") 
  else 
    print('Error downloading: '..msg.id) 
    send_large_msg(receiver, 'فشل .. اعد المحاوله', ok_cb, false) 
  end 
end  
local function run(msg,matches) 
  local receiver = get_receiver(msg) 
    local group = msg.to.id 
    if msg.reply_id then 
       if msg.to.type == 'document' and redis:get("document:audio") then 
        if redis:set("document:audio", "waiting") then 
        end 
       end 
      if matches[1]:lower() == "audio" or matches[1]:lower() == "تحويل بصمه" then 
     redis:get("document:audio")  
    send_large_msg(receiver, '', ok_cb, false) 
        load_audio(msg.reply_id, toaudio, msg)  
end 
end 
end
return { 
patterns = { 
   "^[/#!](audio)$", 
   "^(تحويل بصمه)$", 
   "%[(audio)%]",  
 }, 
run = run, 
}
--[[

▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY ahmad                           ▀▄ ▄▀ 
▀▄ ▄▀     BY ahmad       (@hmode_rap)        ▀▄ ▄▀ 
▀▄ ▄▀ Making the file by Memo              ▀▄ ▄▀   
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀    
                                                      
--]]
