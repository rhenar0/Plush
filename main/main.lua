local discordia = require('discordia')
local client = discordia.Client()


client:on('ready', function()

    print('Connecté sous: '.. client.user.username)

    file = io.open('data_ia.txt', 'wb')

    TT = 0
end)

client:on('messageCreate', function(message)

    author = message.author.id

    if (message.content == 'Bonjour plush') or (message.content == 'Bonjour Plush') or (message.content == 'bonjour Plush') or (message.content == 'Salut plush') or (message.content == 'salut plush') or (message.content == 'Salut plush') or (message.content == 'salut Plush') or (message.content == 'bjr plush') or (message.content == 'hey plush') or (message.content == 'Hey plush') or (message.content == 'Hey Plush') or (message.content == 'Bonsoir Plush') or (message.content == 'bonsoir Plush') or (message.content == 'bonsoir plush') or (message.content == 'Bonsoir Plush') then
        local time = os.date("*t")
        if time.hour <= 5 then
            message.channel:send('Bonsoir '..message.author.name..' !')
            return
        elseif time.hour <= 12  then
            message.channel:send('Bonjour '..message.author.name..' !')
            return
        elseif time.hour <= 18 then
            message.channel:send('Bonne après-midi '..message.author.name..' !')
            return
        elseif time.hour <= 24  then
            message.channel:send('Bonsoir '..message.author.name..' !')
            return
        end
    end
    
    if (message.content == "bonne nuit plush") or (message.content == "Bonne sieste Plush") or (message.content == "bonne nuit plush") or (message.content == "bonne sieste plush") or (message.content == "Bonne nuit plush") or (message.content == "bonne nuit Plush")then
        local time = os.date("*t")
        if time.hour <= 5 then
            message.channel:send('Il est temps de se coucher '..message.author.name..', bonne nuit ! *hug*')
            return
        elseif time.hour <= 12  then
            message.channel:send('Déjà ? Et bien bonne nuit '..message.author.name..' ! *hug*')
            return
        elseif time.hour >= 13 then
            message.channel:send('Une petite sieste ? Bonne sieste '..message.author.name..' ! *hug*')
            return
        elseif time.hour >= 18  then
            message.channel:send('Bonne nuit '..message.author.name..' ! *hug*')
            return
        end
    end

    if (message.content == "!msg") then
        if TT == 0 then
            TT = 1
            perso = message.author.id
        end
    end

    if (message.content == "!leavemsg") then
        if TT == 1 then
            TT = 0
        end
    end

    if TT == 1 then
        local text = message.content
        local plush = "387293113472909324"
        if (message.author.id == (perso)) then
            message.channel:send(text)
        elseif (message.author.id == (plush)) then
            return
        end
    end

    if (message.content == 'ballais couilles') or (message.content == 'Ballais couilles') then
        message.channel:send('http://forevershowtroll.f.o.pic.centerblog.net/3fd08591.jpg')
    end

    if (message.content == 'ça va plush ?') or (message.content == 'Comment ça va Plush ?') or (message.content == 'ça va Plush ?') then
        message.channel:send('Je pète la forme !')
    end

    if message.content == 'Qui est plush ?' then
        message.channel:send('Hey ! Je suis Plush, une mini-IA qui se développe au fil du temps :3 J ai reçu une petite modification qui me permet d apprendre via un enregistrement constant des conversations !')
    end

    if (message.content == 'Love you Plush') or (message.content == "Je t'aime Plush") or (message.content == "je t'aime plush") or (message.content == "je t'aime Plush") or (message.content == "Je t'aime Plush") then
        local rhenar = "173731309120651264"
        local haku = "205033396303298571"
        local patate = "349657602902458368"
        if message.author.id == (rhenar) then
            message.channel:send("Je peux pas t'aimer... tu es mon père !")
        elseif message.author.id == (haku) then
            message.channel:send("Je peux pas t'aimer... tu as déjà Patate Licorne Unijambiste !")
        elseif message.author.id == (patate) then
            message.channel:send("Je peux pas t'aimer... tu as déjà Haku !")
        else
            message.channel:send("Moi aussi je t'aime "..message.author.name.." !")
        end
    end

    if (message.content == 'Plush ?') or (message.content == 'plush ?') then
        message.channel:send('Oui '..message.author.name.." ?")
    end

    if (message.content == 'A plush') or (message.content == 'a plush') or (message.content == 'à plush') then
        message.channel:send('Très drôle '..message.author.name..' ...')
    end

    if (message.content == 'Non rien Plush') or (message.content == 'ta geule plush ?') or (message.content == 'tg plush ?') or (message.content == 'TG Plush ?') then
        message.channel:send('*part violament tout en pleurant*')
    end

    if message.content == 'yiff' then
        message.channel:send('https://e621.net/')
    end

    if message.content == '!boop' then
        message.channel:send('Owwwww * ^ * Tu m as boupé '..message.author.name)
    end

    --if message.content == 'Les commandes de Plush' then
        --message.channel:send('Je peux répondre à : Plush ? | A plush | Non rien plush | !boop | Bonne nuit Plush | Bonjour/Bonsoir Plush | yiff | Qui est plush ? |')
    --end

    if message.content == 'Kechua' then
        message.channel:send('Baisse toi et souffre claquement de gant en plastique')
    end

     file = io.open('data_ia.txt', 'r+')
     file:seek("end", 0)
     file:write(message.author.name..": "..message.content.."  ("..message.author.id.." / "..os.clock().." | "..os.date("%m/%d/%Y")..")", "\n")
     file:close()

end)

client:run('Bot Mzg3MjkzMTEzNDcyOTA5MzI0.DQdNRw.yV86tNPU7excUBNW6NGQnkG8vfI')