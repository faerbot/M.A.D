--[[
 _____ ____     ____   ___ _____ 
|_   _|  _ \   | __ ) / _ \_   _|
  | | | |_) |  |  _ \| | | || |  
  | | |  __/   | |_) | |_| || |  
  |_| |_|      |____/ \___/ |_|  
                                 
KASPER  TP (BY @kasper_dev)
 _  __    _    ____  ____  _____ ____     _____ ____  
| |/ /   / \  / ___||  _ \| ____|  _ \   |_   _|  _ \ 
| ' /   / _ \ \___ \| |_) |  _| | |_) |    | | | |_) |
| . \  / ___ \ ___) |  __/| |___|  _ <     | | |  __/ 
|_|\_\/_/   \_\____/|_|   |_____|_| \_\    |_| |_|    
                                                      
--]]
do
local function run(msg, matches)
if is_sudo(msg) then 
        local text = 'مـرحـ(👋)ـبـا يـا '..msg.from.first_name..'\n'..'انـتـ» مـطـ(🕵)ـور فـي الـبـ(🤖)ـوتــ»'..'\n'..'ايـ{🆔}ـدك↜'..msg.from.id..'\n'..'مـعـ(Ⓜ️)ـرفـك↜ @'..(msg.from.username or "غير متوفر")..'\n'..'تـابـ؏↜ @hhmode_dev_tv'
        return reply_msg(msg.id, text, ok_cb, false)
     end
if is_momod(msg) then 
        local text = 'مـرحـ(👋)ـبـا يـا '..msg.from.first_name..'\n'..'انـتـ» ادمـ(🏅)ـن فـي الـبـ(🤖)ـوتــ»'..'\n'..'ايـ{🆔}ـدك↜'..msg.from.id..'\n'..'مـعـ(Ⓜ️)ـرفـك↜ @'..(msg.from.username or "غير متوفر")..'\n'..'تـابـ؏↜ @hhmode_dev_tv' 
        return reply_msg(msg.id, text, ok_cb, false)
     end
if not is_momod(msg) then 
        local text = 'مـرحـ(👋)ـبـا يـا '..msg.from.first_name..'\n'..'انـتـ» عـ(🎖)ـضـو فـي الـبـ(🤖)ـوتــ»'..'\n'..'ايـ{🆔}ـدك↜'..msg.from.id..'\n'..'مـعـ(Ⓜ️)ـرفـك↜ @'..(msg.from.username or "غير متوفر")..'\n'..'تـابـ؏↜ @hhmode_dev_tv'
        return reply_msg(msg.id, text, ok_cb, false)
     end
if is_owner(msg) then 
        local text = 'مـرحـ(👋)ـبـا يـا '..msg.from.first_name..'\n'..'انـتـ» الـمـ(🏆)ـديـر فـي الـبـ(🤖)ـوتــ»'..'\n'..'ايـ{🆔}ـدك↜'..msg.from.id..'\n'..'مـعـ(Ⓜ️)ـرفـك↜ @'..(msg.from.username or "غير متوفر")..'\n'..'تـابـ؏↜ @hhmode_dev_tvr'
        return reply_msg(msg.id, text, ok_cb, false)
     end
     end
return {  
  patterns = {
       "^[!/](me)$",
       "^(موقعي)$",
  },
  run = run,
}

end
--[[
 _____ ____     ____   ___ _____ 
|_   _|  _ \   | __ ) / _ \_   _|
  | | | |_) |  |  _ \| | | || |  
  | | |  __/   | |_) | |_| || |  
  |_| |_|      |____/ \___/ |_|  
                                 
KASPER  TP (BY @kasper_dev)
 _  __    _    ____  ____  _____ ____     _____ ____  
| |/ /   / \  / ___||  _ \| ____|  _ \   |_   _|  _ \ 
| ' /   / _ \ \___ \| |_) |  _| | |_) |    | | | |_) |
| . \  / ___ \ ___) |  __/| |___|  _ <     | | |  __/ 
|_|\_\/_/   \_\____/|_|   |_____|_| \_\    |_| |_|    
                                                      
--]]
