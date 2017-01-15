--[[

▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY ahmad       (@hmode_rap)        ▀▄ ▄▀ 
▀▄ ▄▀     BY ahmad      (@barko_b)          ▀▄ ▄▀ 
▀▄ ▄▀ Making the file by hmode              ▀▄ ▄▀   
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀     
                                                      
--]]
local function run(msg, success, result) 
  local receiver = get_receiver(msg) 
  if success then 
    local file = 'huss.mp3' 
    print('File downloaded to:', result) 
    os.rename(result, file) 
    print('File moved to:', file) 
    send_audio(get_receiver(msg), file, ok_cb, false) 
     send_large_msg(receiver, '', ok_cb, false) 
    redis:del("video:mp3") 
  else 
    print('Error downloading: '..msg.id) 
    send_large_msg(receiver, 'فشل في التحويل حاول في وقت لاحق', ok_cb, false) 
  end 
end
local function run(msg,matches) 
  local receiver = get_receiver(msg) 
    local group = msg.to.id 
    if msg.reply_id then 
       if msg.to.type == 'video' and redis:get("video:mp3") then 
        if redis:set("video:mp3", "waiting") then 
        end 
       end 
      if matches[1]:lower() == "send" or matches[1]:lower() == "سحب الصوت" then 
     redis:get("video:mp3") 
    send_large_msg(receiver, 'انـتـ(👌)ـضـر قـلـ(😽)ـيـل عـزيـ(😸)ـزي', ok_cb, false) 
        load_audio(msg.reply_id, tovideo, msg) 
    end 
end 
end 
return { 
patterns = { 
   "^[/#!](send)$", 
   "^(سحب الصوت)$",
   "%[(audio)%]", 
 }, 
run = run,  
}
--[[

▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY ahmad       (@hmode_rap)        ▀▄ ▄▀ 
▀▄ ▄▀     BY ahmad      (@barko_b)          ▀▄ ▄▀ 
▀▄ ▄▀ Making the file by hmode              ▀▄ ▄▀   
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀      
                                                      
--]]
