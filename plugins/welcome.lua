--[[

▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY ahmad       (@hmode_rap)        ▀▄ ▄▀ 
▀▄ ▄▀     BY ahmad      (@barko_b)          ▀▄ ▄▀ 
▀▄ ▄▀ Making the file by hmode              ▀▄ ▄▀   
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀     
                                                      
--]]
local function run(msg, matches, callback, extra)
local data = load_data(_config.moderation.data)
local group_welcome = data[tostring(msg.to.id)]['group_welcome']
if matches[1] == 'dwlc' or matches[1] == 'مسح الترحيب' and not matches[2] and is_owner(msg) then 
   data[tostring(msg.to.id)]['group_welcome'] = nil --delete welcome
        save_data(_config.moderation.data, data)
        local text = 'تـ{✅}ـم حـ(❌)ـذفـ الـتـ{💠}ـرحـيـبـ»\nيـا '..(msg.from.first_name or "erorr")..'\n'
return reply_msg(msg.id, text, ok_cb, false)
end
if not is_owner(msg) then 
    return 'لـلـمـ{🏆}ـدراء فـقـ(‼️)ـط'
end
local rules = data[tostring(msg.to.id)]['rules']
if matches[1] == 'rules' and matches[2] and is_owner(msg) then
    if data[tostring(msg.to.id)]['rules'] == nil then --when no rules found....
        return ''
end
data[tostring(msg.to.id)]['group_welcome'] = matches[2]..'\n\nGroup Rules :\n'..rules
        save_data(_config.moderation.data, data)
        return 'Group welcome Seted To :\n'..matches[2]
end
if not is_owner(msg) then 
    return 'لـلـمـ{🏆}ـدراء فـقـ(‼️)ـط'
end
if matches[1] and is_owner(msg) then
data[tostring(msg.to.id)]['group_welcome'] = matches[1]
        save_data(_config.moderation.data, data)
        local text = 'تـ{✅}ـم حـفـ(💡)ـظ الـتـ{💠}ـرحـيـبـ»\nيـا '..(msg.from.first_name or "erorr")..'\n'
return reply_msg(msg.id, text, ok_cb, false)
end
if not is_owner(msg) then 
    return 'لـلـمـ{🏆}ـدراء فـقـ(‼️)ـط'
end
end
return {
  patterns = {
  "^[!#/]swlc (rules) +(.*)$",
  "^[!#/]swlc +(.*)$",
  "^[!#/](dwlc)$",
  "^ضع الترحيب +(.*)$",
  "^(مسح الترحيب)$",
  },
  run = run
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
