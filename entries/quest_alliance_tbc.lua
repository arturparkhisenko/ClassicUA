-- -------------------------------- --
-- AUTOGENERATED FILE. DO NOT EDIT. --
-- -------------------------------- --

local _, addonTable = ...

local quest_alliance = { -- [id] = { title, description, objective, progress, completion }
[8371] = { -- Concerted Efforts
[===[Спільні зусилля]===],
[===[Ми більше не воюємо проти Орди лише з одного фронту, {стать:хлопче:дівчино}.

Перемога на одному фронті означає позбавлення війська Орди ресурсів, які вони могли б використати проти нас в іншій битві. Так само й програш будь-якої битви може дати нашому супротивнику перевагу в іншому місці.

Альянсу не вистачає бійців, які б добряче розуміли це... справжніх досвідчених ветеранів! {ім'я}, повертайся до мене після того, як побуваєш на всіх полях битви проти Орди.]===],
[===[Принесіть відзнаку честі Альтерацької долини, відзнаку честі низини Араті, відзнаку честі тіснини Боєпісні та відзнаку честі Ока Бурі бригадному генералові Альянсу в будь-якій столиці Альянсу або в Шаттраті.]===],
[===[Як йдуть справи на фронтах, {стать:друже:подруго}?]===],
[===[Я знав, що ти не підведеш, {ім'я}! Те, чого ти {стать:досяг:досягла}, не виміряти нікчемними медалями й нагородами. Здобути подібний досвід можна лише пройшли крізь битви на полях бою.

Ти молодець, {клас:к}. {стать:Справжній герой:Справжня героїня} Альянсу!]===],
},
[9279] = { -- You Survived!
[===[Тобі вдалося вижити!]===],
[===[Не звертай увагу на мої рани, {стать:брате:сестро}. Диво, що ми взагалі живі!

Я і не сподівався, що ти уцілієш; ще б пак — декілька тижнів без свідомості!

Щось сталося й Екзодар розбився. Багато хто загинув.

Добре, що ти {стать:живий:жива}, {ім'я}. Якщо ти з нами, то скоро ми всі будемо в безпеці! Проенітус хотів поговорити з тобою коли ти прокинешся. Він чекає на тебе біля підніжжя пагорба. Просто йди стежкою на південний захід.]===],
[===[Поговоріть з Проенітусом на місці падіння в долині Аммен.]===],
nil,
[===[Клянуся безсмертною душею, я радий бачити тебе, {ім'я}! Я не знаю, чому Екзодар розбився. Здається, уціліли лише ті, хто був в цій частині корабля.

Якщо ми хочемо врятувати всіх, хто вижив, часу у нас обмаль!]===],
},
}

if addonTable.quest_alliance then
    for k, v in pairs(quest_alliance) do addonTable.quest_alliance[k] = v end
else
    addonTable.quest_alliance = quest_alliance
