--[[

▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY ahmad       (@hmode_rap)        ▀▄ ▄▀ 
▀▄ ▄▀     BY ahmad      (@barko_b)          ▀▄ ▄▀ 
▀▄ ▄▀ Making the file by hmode              ▀▄ ▄▀   
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀     
                                                      
--]]
local function tagall(cb_extra, success, result)
    local receiver = cb_extra.receiver
    local text = ''
local msgss = 0
    for k,v in pairs(result.members) do
        if v.username then
       msgss = msgss + 1
   text = text..msgss.."-  @"..v.username.."\n"
  end
    end
 text = text.."\n"..cb_extra.msg_text
 send_large_msg(receiver, text)
end
local function tagall2(cb_extra, success, result)
    local receiver = cb_extra.receiver
    local text = ''
local msgss = 0
    for k,v in pairs(result) do
        if v.username then
       msgss = msgss + 1
   text = text.."@"..v.username.." "
  end
    end
 text = text.."\n"..cb_extra.msg_text
 send_large_msg(receiver, text)
end
local function devpoint(msg, matches)
    local receiver = get_receiver(msg)
 if not is_momod(msg) then 
  return "لـلـمـ{🏆}ـدراء فـقـ(‼️)ـط"
 end
 if matches[1] then
 if msg.to.type == 'chat' then
 chat_info(receiver, tagall, {receiver = receiver,msg_text = matches[1]})
 elseif msg.to.type == 'channel' then
 channel_get_users(receiver, tagall2, {receiver = receiver,msg_text = matches[1]})
 end
 end
 return
end
return {
  description = "",
  usage = {
    "/tagall [msg]."
  },
  patterns = {
    "^[!/]tall +(.+)$",
    "^تاك الكل +(.+)$",
  },
  run = devpoint
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
