local _, addonTable = ...

local paladin_spells = {

-- [id] = {
--     [ref] = ID (optional),
--     [1] = title (optional),
--     [2] = description (optional),
--     [3] = aura (optional),
-- }

-- Anticipation
[20096] = { "Передчуття", "Збільшує вашу захисну здібність на {1}.#by {1}" }, -- Anticipation (Rank 1)
[20097] = { ref=20096 }, -- Anticipation (Rank 2)
[20098] = { ref=20096 }, -- Anticipation (Rank 3)
[20099] = { ref=20096 }, -- Anticipation (Rank 4)
[20100] = { ref=20096 }, -- Anticipation (Rank 5)

-- Benediction
[20101] = { "Благодать", "Зменшує витрати мани на ваше закляття \"Присуд\" та закляття печаток на {1}%.#by {1}" }, -- Benediction (Rank 1)
[20102] = { ref=20101 }, -- Benediction (Rank 2)
[20103] = { ref=20101 }, -- Benediction (Rank 3)
[20104] = { ref=20101 }, -- Benediction (Rank 4)
[20105] = { ref=20101 }, -- Benediction (Rank 5)

-- Blessing of Freedom
[1044] = { "Благословення свободи", "Благословляє дружню ціль, надає невразливість до ефектів перешкоди руху на {1} с. Гравці можуть мати на собі лише одне благословення від кожного паладина одночасно.#for {1} sec", "Невразливий до ефектів перешкоди руху." }, -- Blessing of Freedom

-- Blessing of Kings
[20217] = { "Благословення королів", "Благословляє дружню ціль, збільшує всі характеристики на {1}% на {2} хв. Гравці можуть мати на собі лише одне благословення від кожного паладина одночасно.#by {1}% for {2} min", "Збільшує характеристики на {1}%.#by {1}" }, -- Blessing of Kings

-- Blessing of Light
[19977] = { "Благословення світла", "Благословляє дружню ціль, збільшує ефекти заклять \"Священне світло\" на ній на {1} та \"Зблиск світла\" на {2}. Триває {3} хв. Гравці можуть мати на собі лише одне благословення від кожного паладина одночасно.#{1} and the effect Flash of Light spells used on the target by up to {2}#Lasts {3} min", "Отримує {1} додаткового зцілення від заклять \"Священне світло\" та {2} від заклять \"Зблиск світла\".#Receives up to {1}#and up to {2}" }, -- Blessing of Light (Rank 1)
[19978] = { ref=19977 }, -- Blessing of Light (Rank 2)
[19979] = { ref=19977 }, -- Blessing of Light (Rank 3)

-- Blessing of Might
[19740] = { "Благословення могутності", "Благословляє дружню ціль, збільшує силу атаки ближнього бою на {1} на {2} хв. Гравці можуть мати на собі лише одне благословення від кожного паладина одночасно.#by {1} for {2} min", "Збільшує силу атаки ближнього бою на {1}.#by {1}" }, -- Blessing of Might (Rank 1)
[19834] = { ref=19740 }, -- Blessing of Might (Rank 2)
[19835] = { ref=19740 }, -- Blessing of Might (Rank 3)
[19836] = { ref=19740 }, -- Blessing of Might (Rank 4)
[19837] = { ref=19740 }, -- Blessing of Might (Rank 5)
[19838] = { ref=19740 }, -- Blessing of Might (Rank 6)
[25291] = { ref=19740 }, -- Blessing of Might (Rank 7)

-- Blessing of Protection
[1022] = { "Благословення захисту", "Захищає обраного учасника групи від усіх фізичних атак на {1} с, але протягом цього часу він не може атакувати чи використовувати фізичні здібності. Гравці можуть мати на собі лише одне благословення від кожного паладина одночасно. Захищена ціль не зможе отримати невразливість повторно від заклять \"Божественний щит\", \"Божественний захист\" та \"Благословення захисту\" впродовж {2} хв.#attacks for {1} sec#again for {2} min", "Невразливий до фізичних атак. Не може атакувати чи використовувати фізичні здібності." }, -- Blessing of Protection (Rank 1)
[5599] = { ref=1022 }, -- Blessing of Protection (Rank 2)
[10278] = { ref=1022 }, -- Blessing of Protection (Rank 3)
[25771] = { "Терпимість", nil, "Не може отримати невразливість від заклять \"Божественний щит\", \"Божественний захист\" та \"Благословення захисту\"." }, -- Forbearance (aura)

-- Blessing of Sacrifice
[6940] = { "Благословення жертовності", "Благословляє учасника групи, передає {1} отриманого ним пошкодження за удар до заклинача. Триває {2} с. Гравці можуть мати на собі лише одне благословення від кожного паладина одночасно.#{1} damage taken#Lasts {2} sec", "Передає {1} отриманого пошкодження за удар до паладина.#{1} damage taken" }, -- Blessing of Sacrifice (Rank 1)
[20729] = { ref=6940 }, -- Blessing of Sacrifice (Rank 2)

-- Blessing of Salvation
[1038] = { "Благословення спасіння", "Благословляє учасника групи, зменшує спричинену ним загрозу на {1}% на {2} хв. Гравці можуть мати на собі лише одне благословення від кожного паладина одночасно.#by {1}% for {2} min", "Зменшує спричинену загрозу на {1}%.#by {1}" }, -- Blessing of Salvation

-- Blessing of Sanctuary
[20911] = { "Благословення прихистку", "Благословляє дружню ціль, зменшує отримуване нею пошкодження з усіх джерел на {1} на {2} хв. Додатково, коли ціль блокує атаку ближнього бою, нападнику буде завдано {3} пошкодження священністю. Гравці можуть мати на собі лише одне благословення від кожного паладина одночасно.#to {1} for {2} min#will take {3}", "Отримуване пошкодження зменшено на {1}, а заблоковані атаки ближнього бою завдають {2} пошкодження священністю нападнику.#up to {1}#cause {2}" }, -- Blessing of Sanctuary (Rank 1)
[20912] = { ref=20911 }, -- Blessing of Sanctuary (Rank 2)
[20913] = { ref=20911 }, -- Blessing of Sanctuary (Rank 3)
[20914] = { ref=20911 }, -- Blessing of Sanctuary (Rank 4)

-- Blessing of Wisdom
[19742] = { "Благословення мудрості", "Благословляє дружню ціль, відновлює їй {1} мани кожні {2} с протягом {3} хв. Гравці можуть мати на собі лише одне благословення від кожного паладина одночасно.#{1} mana every {2} seconds for {3} min", "Відновлює {1} мани кожні {2} с.#{1} mana every {2} sec" }, -- Blessing of Wisdom (Rank 1)
[19850] = { ref=19742 }, -- Blessing of Wisdom (Rank 2)
[19852] = { ref=19742 }, -- Blessing of Wisdom (Rank 3)
[19853] = { ref=19742 }, -- Blessing of Wisdom (Rank 4)
[19854] = { ref=19742 }, -- Blessing of Wisdom (Rank 5)
[25290] = { ref=19742 }, -- Blessing of Wisdom (Rank 6)

-- Cleanse
[4987] = { "Вичищення", "Вичищає дружню ціль, усуває 1 ефект отруєння, 1 ефект хвороби та 1 магічний ефект." }, -- Cleanse

-- Concentration Aura
[19746] = { "Аура зосередженості", "Надає {1}% імовірності уникнути переривання від пошкодження під час вимови заклять учасникам групи в радіусі {2} м. Гравці можуть мати на собі лише одну ауру від кожного паладина одночасно.#{1}% chance#within {2}", "Надає {1}% імовірності уникнути переривання від пошкодження під час вимови заклять.#{1}% chance" }, -- Concentration Aura

-- Consecration
[26573] = { "Освячення", "Освячує землю під паладином, завдає {1} пошкодження священністю протягом {2} с усім ворогам, що на неї ступають.#doing {1}#over {2} sec", "{1} пошкодження щосекунди.#{1} damage" }, -- Consecration (Rank 1)
[20116] = { ref=26573 }, -- Consecration (Rank 2)
[20922] = { ref=26573 }, -- Consecration (Rank 3)
[20923] = { ref=26573 }, -- Consecration (Rank 4)
[20924] = { ref=26573 }, -- Consecration (Rank 5)

-- Conviction
[20117] = { "Осуд", "Збільшує вашу ймовірність завдати критичного удару зброєю ближнього бою на {1}%.#by {1}" }, -- Conviction (Rank 1)
[20118] = { ref=20117 }, -- Conviction (Rank 2)
[20119] = { ref=20117 }, -- Conviction (Rank 3)
[20120] = { ref=20117 }, -- Conviction (Rank 4)
[20121] = { ref=20117 }, -- Conviction (Rank 5)

-- Deflection
[20060] = { "Відбиття", "Збільшує вашу ймовірність парирувати на {1}%.#chance by {1}" }, -- Deflection (Rank 1)
[20061] = { ref=20060 }, -- Deflection (Rank 2)
[20062] = { ref=20060 }, -- Deflection (Rank 3)
[20063] = { ref=20060 }, -- Deflection (Rank 4)
[20064] = { ref=20060 }, -- Deflection (Rank 5)

-- Devotion Aura
[465] = { "Аура відданості", "Надає {1} додаткової броні учасникам групи в радіусі {2} м. Гравці можуть мати на собі лише одну ауру від кожного паладина одночасно.#{1} additional armor#within {2} y", "Збільшує броню на {1}.#by {1}" }, -- Devotion Aura (Rank 1)
[10290] = { ref=465 }, -- Devotion Aura (Rank 2)
[643] = { ref=465 }, -- Devotion Aura (Rank 3)
[10291] = { ref=465 }, -- Devotion Aura (Rank 4)
[1032] = { ref=465 }, -- Devotion Aura (Rank 5)
[10292] = { ref=465 }, -- Devotion Aura (Rank 6)
[10293] = { ref=465 }, -- Devotion Aura (Rank 7)

-- Divine Favor
[20216] = { "Божественна прихильність", "При активації, надає вашим наступним закляттям \"Зблиск світла\", \"Священне світло\" або \"Священний шок\" підвищену ймовірність критичного ефекту на {1}%.#spell a {1}", "Імовірність критичного ефекту наступного закляття \"Зблиск світла\", \"Священне світло\" або \"Священний шок\" підвищено на {1}%.#by {1}" }, -- Divine Favor

-- Divine Intellect
[20257] = { "Божественний інтелект", "Збільшує ваш загальний інтелект на {1}%.#by {1}" }, -- Divine Intellect (Rank 1)
[20258] = { ref=20257 }, -- Divine Intellect (Rank 2)
[20259] = { ref=20257 }, -- Divine Intellect (Rank 3)
[20260] = { ref=20257 }, -- Divine Intellect (Rank 4)
[20261] = { ref=20257 }, -- Divine Intellect (Rank 5)

-- Divine Intervention
[19752] = { "Божественне втручання", "Паладин приносить себе в жертву, щоб захистити обраного учасника групи від усіх бід. Вороги припинять атакувати захищеного гравця, який також буде невразливим до всіх шкідливих ефектів, але не зможе нічого робити протягом {1} хв.#for {1} min", "Цілковита невразливість, але не може рухатися." }, -- Divine Intervention
[19753] = { ref=19752 }, -- Divine Intervention (aura)

-- Divine Protection
[498] = { "Божественний захист", "Ви захищені від усіх фізичних атак і заклять на {1} с, але протягом цього часу не можете атакувати чи використовувати фізичні здібності. Захищена ціль не зможе отримати невразливість повторно від заклять \"Божественний щит\", \"Божественний захист\" та \"Благословення захисту\" впродовж {2} хв.#spells for {1} sec#again for {2} min", "Невразливий до всіх атак і заклять. Не може атакувати чи використовувати фізичні здібності." }, -- Divine Protection (Rank 1)
[5573] = { ref=498 }, -- Divine Protection (Rank 2)

-- Divine Shield
[642] = { "Божественний щит", "Захищає паладина від усього пошкодження та заклять на {1} с, але збільшує час між вашими атаками на {2}%. Захищена ціль не зможе отримати невразливість повторно від заклять \"Божественний щит\", \"Божественний захист\" та \"Благословення захисту\" впродовж {3} хв.#spells for {1} sec#attacks by {2}#again for {3} min", "Невразливий до всіх атак і заклять, але збільшує час між вашими атаками на 100%." }, -- Divine Shield (Rank 1)
[1020] = { ref=642 }, -- Divine Shield (Rank 2)

-- Divine Strength
[20262] = { "Божественна сила", "Збільшує вашу силу на {1}%.#by {1}" }, -- Divine Strength (Rank 1)
[20263] = { ref=20262 }, -- Divine Strength (Rank 2)
[20264] = { ref=20262 }, -- Divine Strength (Rank 3)
[20265] = { ref=20262 }, -- Divine Strength (Rank 4)
[20266] = { ref=20262 }, -- Divine Strength (Rank 5)

-- Exorcism
[879] = { "Екзорцизм", "Завдає від {1} до {2} пошкодження священністю невмерлому чи демону.#{1} to {2} Holy" }, -- Exorcism (Rank 1)
[5614] = { ref=879 }, -- Exorcism (Rank 2)
[5615] = { ref=879 }, -- Exorcism (Rank 3)
[10312] = { ref=879 }, -- Exorcism (Rank 4)
[10313] = { ref=879 }, -- Exorcism (Rank 5)
[10314] = { ref=879 }, -- Exorcism (Rank 6)

-- Eye for an Eye
[9799] = { "Око за око", "Усі критичні удари закляттями проти вас завдають {1}% від отриманого вами пошкодження заклиначу. Пошкодження від цього закляття не перевищуватиме {2}% від загального здоров'я паладина.#cause {1}#exceed {2}" }, -- Eye for an Eye (Rank 1)
[25988] = { ref=9799 }, -- Eye for an Eye (Rank 2)

-- Fire Resistance Aura
[19891] = { "Аура супротиву вогню", "Надає {1} додаткового супротиву вогню всім учасникам групи в радіусі {2} м. Гравці можуть мати на собі лише одну ауру від кожного паладина одночасно.#{1} additional#within {2} y", "Збільшує супротив вогню на {1}.#by {1}" }, -- Fire Resistance Aura (Rank 1)
[19899] = { ref=19891 }, -- Fire Resistance Aura (Rank 2)
[19900] = { ref=19891 }, -- Fire Resistance Aura (Rank 3)

-- Flash of Light
[19750] = { "Зблиск світла", "Лікує дружню ціль на значення від {1} до {2} здоров'я.#for {1} to {2}" }, -- Flash of Light (Rank 1)
[19939] = { ref=19750 }, -- Flash of Light (Rank 2)
[19940] = { ref=19750 }, -- Flash of Light (Rank 3)
[19941] = { ref=19750 }, -- Flash of Light (Rank 4)
[19942] = { ref=19750 }, -- Flash of Light (Rank 5)
[19943] = { ref=19750 }, -- Flash of Light (Rank 6)

-- Frost Resistance Aura
[19888] = { "Аура супротиву кризі", "Надає {1} додаткового супротиву кризі всім членам групи в радіусі {2} м. Гравці можуть мати на собі лише одну ауру від кожного паладина одночасно.#{1} additional#within {2} y", "Збільшує супротив кризі на {1}.#by {1}" }, -- Frost Resistance Aura (Rank 1)
[19897] = { ref=19888 }, -- Frost Resistance Aura (Rank 2)
[19898] = { ref=19888 }, -- Frost Resistance Aura (Rank 3)

-- Greater Blessing of Kings
[25898] = { "Вище благословення королів", "Надає всім членам рейду або групи одного класу з ціллю \"Вище благословення королів\", що збільшує їхні всі характеристики на {1}% на {2} хв. Гравці можуть мати на собі лише одне благословення від кожного паладина одночасно.#by {1}% for {2} min", "Збільшує характеристики на {1}%.#by {1}" }, -- Greater Blessing of Kings

-- Greater Blessing of Light
[25890] = { "Вище благословення світла", "Надає всім членам рейду або групи одного класу з ціллю \"Вище благословення світла\", що збільшує ефекти заклять \"Священне світло\" на них на {1} та \"Зблиск світла\" на {2}. Триває {3} хв. Гравці можуть мати на собі лише одне благословення від кожного паладина одночасно.#{1} and the effect Flash of Light spells used on the target by up to {2}#Lasts {3} min", "Отримує {1} додаткового зцілення від заклять \"Священне світло\" та {2} від заклять \"Зблиск світла\".#Receives up to {1}#and up to {2}" }, -- Greater Blessing of Light

-- Greater Blessing of Might
[25782] = { "Вище благословення могутності", "Надає всім членам рейду або групи одного класу з ціллю \"Вище благословення могутності\", що збільшує їхню силу атаки ближнього бою на {1} на {2} хв. Гравці можуть мати на собі лише одне благословення від кожного паладина одночасно.#by {1} for {2} min", "Збільшує силу атаки ближнього бою на {1}.#by {1}" }, -- Greater Blessing of Might (Rank 1)
[25916] = { ref=25782 }, -- Greater Blessing of Might (Rank 2)

-- Greater Blessing of Salvation
[25895] = { "Вище благословення спасіння", "Надає всім членам рейду або групи одного класу з ціллю \"Вище благословення спасіння\", що зменшує спричинену ними загрозу на {1}% на {2} хв. Гравці можуть мати на собі лише одне благословення від кожного паладина одночасно.#by {1}% for {2} min", "Зменшує спричинену загрозу на {1}%.#by {1}" }, -- Greater Blessing of Salvation

-- Greater Blessing of Sanctuary
[25899] = { "Вище благословення прихистку", "Надає всім членам рейду або групи одного класу з ціллю \"Вище благословення прихистку\", що зменшує отримуване ними пошкодження з усіх джерел на {1} на {2} хв. Додатково, коли ціль блокує атаку ближнього бою, нападнику буде завдано {3} пошкодження священністю. Гравці можуть мати на собі лише одне благословення від кожного паладина одночасно.#to {1} for {2} min#will take {3}", "Отримуване пошкодження зменшено на {1}, а заблоковані атаки ближнього бою завдають {2} пошкодження священністю нападнику.#up to {1}#cause {2}" }, -- Greater Blessing of Sanctuary

-- Greater Blessing of Wisdom
[25894] = { "Вище благословення мудрості", "Надає всім членам рейду або групи одного класу з ціллю \"Вище благословення мудрості\", що відновлює їм {1} мани кожні {2} с протягом {3} хв. Гравці можуть мати на собі лише одне благословення від кожного паладина одночасно.#{1} mana every {2} seconds for {3} min", "Відновлює {1} мани кожні {2} с.#{1} mana every {2} sec" }, -- Greater Blessing of Wisdom (Rank 1)
[25918] = { ref=25894 }, -- Greater Blessing of Wisdom (Rank 2)

-- Guardian's Favor
[20174] = { "Прихильність хранителя", "Зменшує час поновлення вашого \"Благословення захисту\" на {1} с і збільшує тривалість вашого \"Благословення свободи\" на {2} с.#Protection by {1}#Freedom by {2}" }, -- Guardian's Favor (Rank 1)
[20175] = { ref=20174 }, -- Guardian's Favor (Rank 2)

-- Hammer of Justice
[853] = { "Молот правосуддя", "Приголомшує ціль на {1} с.#for {1} sec", "Приголомшений." }, -- Hammer of Justice (Rank 1)
[5588] = { ref=853 }, -- Hammer of Justice (Rank 2)
[5589] = { ref=853 }, -- Hammer of Justice (Rank 3)
[10308] = { ref=853 }, -- Hammer of Justice (Rank 4)

-- Hammer of Wrath
[24275] = { "Молот гніву", "Метає молот, що вдаряє ворога на значення від {1} до {2} пошкодження священністю. Можна застосовувати лише проти ворогів, у яких не більше {3}% здоров'я.#for {1} to {2}#have {3}" }, -- Hammer of Wrath (Rank 1)
[24274] = { ref=24275 }, -- Hammer of Wrath (Rank 2)
[24239] = { ref=24275 }, -- Hammer of Wrath (Rank 3)

-- Healing Light
[20237] = { "Цілюще світло", "Збільшує обсяг зцілення вашими закляттями \"Священне світло\" та \"Зблиск світла\" на {1}%.#by {1}" }, -- Healing Light (Rank 1)
[20238] = { ref=20237 }, -- Healing Light (Rank 2)
[20239] = { ref=20237 }, -- Healing Light (Rank 3)

-- Holy Light
[635] = { "Священне світло", "Лікує дружню ціль на значення від {1} до {2} здоров'я.#for {1} to {2}" }, -- Holy Light (Rank 1)
[639] = { ref=635 }, -- Holy Light (Rank 2)
[647] = { ref=635 }, -- Holy Light (Rank 3)
[1026] = { ref=635 }, -- Holy Light (Rank 4)
[1042] = { ref=635 }, -- Holy Light (Rank 5)
[3472] = { ref=635 }, -- Holy Light (Rank 6)
[10328] = { ref=635 }, -- Holy Light (Rank 7)
[10329] = { ref=635 }, -- Holy Light (Rank 8)
[25292] = { ref=635 }, -- Holy Light (Rank 9)

-- Holy Power
[5923] = { "Священна міць", "Збільшує критичний ефект ваших заклять священності на {1}%.#by {1}" }, -- Holy Power (Rank 1)
[5924] = { ref=5923 }, -- Holy Power (Rank 2)
[5925] = { ref=5923 }, -- Holy Power (Rank 3)
[5926] = { ref=5923 }, -- Holy Power (Rank 4)
[25829] = { ref=5923 }, -- Holy Power (Rank 5)

-- Holy Shield
[20925] = { "Священний щит", "Підвищує ймовірність блокування на {1}% на {2} с та завдає {3} пошкодження священністю з кожною заблокованою атакою протягом дії закляття. Пошкодження від \"Священного щита\" спричиняє {4}% додаткової загрози. Кожне блокування витрачає один заряд. {5} заряди.#by {1}% for {2} sec#deals {3}#{4}% additional threat#{5} charges", "Імовірність блокування підвищено на {1}%. {2} пошкодження священністю нападникові при блоці. Пошкодження від \"Священного щита\" спричиняє {3}% додаткової загрози. {4} заряди.#increased by {1}#{2} Holy damage#{3}% additional threat#{4} charges" }, -- Holy Shield (Rank 1)
[20927] = { ref=20925 }, -- Holy Shield (Rank 2)
[20928] = { ref=20925 }, -- Holy Shield (Rank 3)

-- Holy Shock
[20473] = { "Священний шок", "Підриває ціль священною енергією, спричиняє від {1} до {2} пошкодження священністю ворогові або від {3} до {4} лікування союзникові.#{1} to {2} Holy damage#{3} to {4} healing" }, -- Holy Shock (Rank 1)
[20929] = { ref=20473 }, -- Holy Shock (Rank 2)
[20930] = { ref=20473 }, -- Holy Shock (Rank 3)

-- Holy Wrath
[2812] = { "Священний гнів", "Посилає стріли священної сили в усіх напрямках, завдає від {1} до {2} пошкодження священністю усім цілям-невмерлим та демонам у радіусі {3} м.#causing {1} to {2}#within {3} y" }, -- Holy Wrath (Rank 1)
[10318] = { ref=2812 }, -- Holy Wrath (Rank 2)

-- Illumination
[20210] = { "Сяйво", "Надає {1}% імовірності поповнити ману в розмірі базової вартості після цілющого критичного ефекту закляття \"Зблиск світла\", \"Священне світло\" або \"Священний шок\".#{1}% chance" }, -- Illumination (Rank 1)
[20212] = { ref=20210 }, -- Illumination (Rank 2)
[20213] = { ref=20210 }, -- Illumination (Rank 3)
[20214] = { ref=20210 }, -- Illumination (Rank 4)
[20215] = { ref=20210 }, -- Illumination (Rank 5)

-- Improved Blessing of Might
[20042] = { "Покращене благословення могутности", "Збільшує додаткову силу атаки ближнього бою від вашого \"Благословення могутності\" на {1}%.#by {1}" }, -- Improved Blessing of Might (Rank 1)
[20045] = { ref=20042 }, -- Improved Blessing of Might (Rank 2)
[20046] = { ref=20042 }, -- Improved Blessing of Might (Rank 3)
[20047] = { ref=20042 }, -- Improved Blessing of Might (Rank 4)
[20048] = { ref=20042 }, -- Improved Blessing of Might (Rank 5)

-- Improved Blessing of Wisdom
[20244] = { "Покращене благословення мудрості", "Збільшує ефект вашого \"Благословення мудрості\" на {1}%.#by {1}" }, -- Improved Blessing of Wisdom (Rank 1)
[20245] = { ref=20244 }, -- Improved Blessing of Wisdom (Rank 2)

-- Improved Concentration Aura
[20254] = { "Покращена аура зосередженості", "Збільшує ефект вашої \"Аури зосередженості\" на додаткові {1}% та надає всім учасникам групи під впливом аури додаткові {2}% імовірності протистояти ефектам безмовності та переривання.#Concentration Aura by an additional {1}#the aura an additional {2}" }, -- Improved Concentration Aura (Rank 1)
[20255] = { ref=20254 }, -- Improved Concentration Aura (Rank 2)
[20256] = { ref=20254 }, -- Improved Concentration Aura (Rank 3)

-- Improved Devotion Aura
[20138] = { "Покращена аура відданості", "Збільшує додаткову броню від вашої \"Аури відданості\" на {1}%.#by {1}" }, -- Improved Devotion Aura (Rank 1)
[20139] = { ref=20138 }, -- Improved Devotion Aura (Rank 2)
[20140] = { ref=20138 }, -- Improved Devotion Aura (Rank 3)
[20141] = { ref=20138 }, -- Improved Devotion Aura (Rank 4)
[20142] = { ref=20138 }, -- Improved Devotion Aura (Rank 5)

-- Improved Hammer of Justice
[20487] = { "Покращений молот правосуддя", "Зменшує час поновлення вашого закляття \"Молот правосуддя\" на {1} с.#by {1}" }, -- Improved Hammer of Justice (Rank 1)
[20488] = { ref=20487 }, -- Improved Hammer of Justice (Rank 2)
[20489] = { ref=20487 }, -- Improved Hammer of Justice (Rank 3)

-- Improved Judgement
[25956] = { "Покращений присуд", "Зменшує час поновлення вашого закляття \"Присуд\" на {1} с.#by {1}" }, -- Improved Judgement (Rank 1)
[25957] = { ref=25956 }, -- Improved Judgement (Rank 2)

-- Improved Lay on Hands
[20234] = { "Покращене покладання рук", "Надає цілі вашого закляття \"Покладання рук\" додаткові {1}% броні від предметів на {2} хв. Також час поновлення вашого закляття \"Покладання рук\" зменшено на {3} хв.#{1}% bonus#for {2} min#by {3} min" }, -- Improved Lay on Hands (Rank 1)
[20235] = { ref=20234 }, -- Improved Lay on Hands (Rank 2)
[20233] = { "Покладання рук", nil, "Броню збільшено на {1}%.#by {1}" }, -- Lay on Hands (aura)
[20236] = { ref=20233 }, -- Lay on Hands (aura)

-- Improved Retribution Aura
[20091] = { "Покращена аура розплати", "Збільшує пошкодження вашої \"Аури розплати\" на {1}%.#by {1}" }, -- Improved Retribution Aura (Rank 1)
[20092] = { ref=20091 }, -- Improved Retribution Aura (Rank 2)

-- Improved Righteous Fury
[20468] = { "Покращена праведна лють", "Збільшує рівень загрози від вашого закляття \"Праведна лють\" на {1}%.#by {1}" }, -- Improved Righteous Fury (Rank 1)
[20469] = { ref=20468 }, -- Improved Righteous Fury (Rank 2)
[20470] = { ref=20468 }, -- Improved Righteous Fury (Rank 3)

-- Improved Seal of Righteousness
[20224] = { "Покращена печатка праведності", "Збільшує пошкодження від вашої \"Печатки праведності\" та \"Присуду праведності\" на {1}%.#by {1}" }, -- Improved Seal of Righteousness (Rank 1)
[20225] = { ref=20224 }, -- Improved Seal of Righteousness (Rank 2)
[20330] = { ref=20224 }, -- Improved Seal of Righteousness (Rank 3)
[20331] = { ref=20224 }, -- Improved Seal of Righteousness (Rank 4)
[20332] = { ref=20224 }, -- Improved Seal of Righteousness (Rank 5)

-- Improved Seal of the Crusader
[20335] = { "Покращена печатка хрестоносця", "Збільшує силу атаки ближнього бою від вашої \"Печатки хрестоносця\" та пошкодження священністю від вашого \"Присуду хрестоносця\" на {1}%.#by {1}" }, -- Improved Seal of the Crusader (Rank 1)
[20336] = { ref=20335 }, -- Improved Seal of the Crusader (Rank 2)
[20337] = { ref=20335 }, -- Improved Seal of the Crusader (Rank 3)

-- Judgement
[20271] = { "Присуд", "Вивільнює енергію закляття печатки на ворога. Ефекти \"Присуду\" залежать від використаного закляття печатки." }, -- Judgement

-- Lasting Judgement
[20359] = { "Затяжний присуд", "Збільшує тривалість ваших \"Присуду світла\" та \"Присуду мудрості\" на {1} с.#by {1}" }, -- Lasting Judgement (Rank 1)
[20360] = { ref=20359 }, -- Lasting Judgement (Rank 2)
[20361] = { ref=20359 }, -- Lasting Judgement (Rank 3)

-- Lay on Hands
[633] = { "Покладання рук", "Лікує дружню ціль на значення, яке не перевищує максимального здоров'я паладина. Витрачає весь залишок мани паладина при використанні." }, -- Lay on Hands (Rank 1)
[2800] = { "Покладання рук", "Лікує дружню ціль на значення, яке не перевищує максимального здоров'я паладина, та відновлює їй {1} мани. Витрачає весь залишок мани паладина при використанні.#restores {1}" }, -- Lay on Hands (Rank 2)
[10310] = { ref=2800 }, -- Lay on Hands (Rank 3)

-- One-Handed Weapon Specialization
[20196] = { "Спеціалізація на одноручній зброї", "Збільшує пошкодження, заподіяне одноручною зброєю ближнього бою, на {1}%.#weapons by {1}" }, -- One-Handed Weapon Specialization (Rank 1)
[20197] = { ref=20196 }, -- One-Handed Weapon Specialization (Rank 2)
[20198] = { ref=20196 }, -- One-Handed Weapon Specialization (Rank 3)
[20199] = { ref=20196 }, -- One-Handed Weapon Specialization (Rank 4)
[20200] = { ref=20196 }, -- One-Handed Weapon Specialization (Rank 5)

-- Precision
[20189] = { "Точність", "Збільшує вашу ймовірність поцілити зброєю ближнього бою на {1}%.#by {1}" }, -- Precision (Rank 1)
[20192] = { ref=20189 }, -- Precision (Rank 2)
[20193] = { ref=20189 }, -- Precision (Rank 2)

-- Purify
[1152] = { "Очищення", "Очищує дружню ціль, знімає 1 ефект хвороби й 1 ефект отруєння." }, -- Purify

-- Pursuit of Justice
[26022] = { "Гонитва за правосуддям", "Підвищує швидкість руху та швидкість верхової їзди на {1}%. Не складається з іншими ефектами підвищення швидкості руху.#by {1}" }, -- Pursuit of Justice (Rank 1)
[26023] = { ref=26022 }, -- Pursuit of Justice (Rank 2)

-- Reckoning
[20177] = { "Воздаяння", "Надає вам {1}% імовірності провести додаткову атаку після того, як ви стали жертвою критичного удару.#{1}% chance" }, -- Reckoning (Rank 1)
[20179] = { ref=20177 }, -- Reckoning (Rank 2)
[20181] = { ref=20177 }, -- Reckoning (Rank 3)
[20180] = { ref=20177 }, -- Reckoning (Rank 4)
[20182] = { ref=20177 }, -- Reckoning (Rank 5)

-- Redemption
[7328] = { "Спокута", "Повертає мертвого гравця до життя з {1} здоров'я та {2} мани. Не можна застосувати в бою.#{1} health and {2} mana" }, -- Redemption (Rank 1)
[10322] = { ref=7328 }, -- Redemption (Rank 2)
[10324] = { ref=7328 }, -- Redemption (Rank 3)
[20772] = { ref=7328 }, -- Redemption (Rank 4)
[20773] = { ref=7328 }, -- Redemption (Rank 5)

-- Redoubt
[20127] = { "Твердиня", "Підвищує ймовірність блокувати атаки щитом на {1}% після того, як ви стали жертвою критичного удару. Триває {2} с або {3} блоків.#shield by {1}#Lasts {2} sec or {3} block" }, -- Redoubt (Rank 1)
[20130] = { ref=20127 }, -- Redoubt (Rank 2)
[20135] = { ref=20127 }, -- Redoubt (Rank 3)
[20136] = { ref=20127 }, -- Redoubt (Rank 4)
[20137] = { ref=20127 }, -- Redoubt (Rank 5)
[20128] = { "Твердиня", nil, "Імовірність блокувати збільшено на {1}%. Блокує {2} разів.#by {1}#of {2}" }, -- Redoubt (aura)
[20131] = { ref=20128 }, -- Redoubt (aura)
[20132] = { ref=20128 }, -- Redoubt (aura)
[20133] = { ref=20128 }, -- Redoubt (aura)
[20134] = { ref=20128 }, -- Redoubt (aura)

-- Repentance
[20066] = { "Спокута", "Вводить ворожу ціль у стан медитації, роблячи її недієздатною на {1} с. Будь-яке пошкодження пробудить ціль. Діє лише на гуманоїдів.#for up to {1} sec", "Недієздатний." }, -- Repentance

-- Retribution Aura
[7294] = { "Аура розплати", "Завдає {1} пошкодження священністю будь-якій істоті, яка вдаряє учасника групи у радіусі {2} м. Гравці можуть мати на собі лише одну ауру від кожного паладина одночасно.#{1} Holy damage#within {2} y", "Завдає {1} пошкодження священністю будь-кому, хто вас ударяє.#{1} Holy damage" }, -- Retribution Aura (Rank 1)
[10298] = { ref=7294 }, -- Retribution Aura (Rank 2)
[10299] = { ref=7294 }, -- Retribution Aura (Rank 3)
[10300] = { ref=7294 }, -- Retribution Aura (Rank 4)
[10301] = { ref=7294 }, -- Retribution Aura (Rank 5)

-- Righteous Fury
[25780] = { "Праведна лють", "Збільшує загрозу ваших атак священності на {1}%. Триває {2} хв.#by {1}#Lasts {2} min", "Збільшує загрозу ваших атак священності на {1}%.#by {1}" }, -- Righteous Fury

-- Sanctity Aura
[20218] = { "Аура святості", "Збільшує пошкодження священністю учасників групи в радіусі {1} м на {2}%. Гравці можуть мати на собі лише одну ауру від кожного паладина одночасно.#within {1} yards by {2}", "Збільшує пошкодження священністю на {2}%.#by {1}" }, -- Sanctity Aura

-- Seal of Command
[20375] = { "Печатка наказу", "Надає паладинові ймовірності завдати додаткового пошкодження священністю обсягом {1}% від звичайного пошкодження зброєю. Лише одна печатка може бути задіяна на паладинові одночасно. Триває {2} с.\n\nВивільнення енергії цієї печатки засудить ворога, миттєво завдаючи від {3} до {4} пошкодження священністю або від {5} до {6}, якщо ціль приголомшена або недієздатна.#equal to {1}#Lasts {2} sec#causing {3} to {4} Holy damage, {5} to {6}", "Атаки ближнього бою мають імовірність завдати додаткового пошкодження священністю." }, -- Seal of Command (Rank 1)
[20915] = { ref=20375 }, -- Seal of Command (Rank 2)
[20918] = { ref=20375 }, -- Seal of Command (Rank 3)
[20919] = { ref=20375 }, -- Seal of Command (Rank 4)
[20920] = { ref=20375 }, -- Seal of Command (Rank 5)

-- Seal of Justice
[20164] = { "Печатка правосуддя", "Наповнює паладина духом справедливості на {1} с, надаючи кожній атаці ближнього бою ймовірність приголомшити ціль на {2} с. Лише одна печатка може бути задіяна на паладинові одночасно.\n\nВивільнення енергії цієї печатки засудить ворога на {3} с, перешкоджаючи йому втекти. Ваші атаки ближнього бою оновлюватимуть тривалість закляття. Одночасно може бути активним лише один присуд від кожного паладина.#justice for {1} sec#stun for {2} sec#enemy for {3} sec", "Атаки ближнього бою мають імовірність приголомшити ціль на {1} с.#for {1} sec" }, -- Seal of Justice
[20170] = { "Приголомшення", nil, "Приголомшений." }, -- Seal of Justice (aura)

-- Seal of Light
[20165] = { "Печатка світла", "Наповнює паладина божественним світлом на {1} с, надаючи кожній атаці ближнього бою ймовірність зцілити паладина на {2}. Лише одна печатка може бути задіяна на паладинові одночасно.\n\nВивільнення енергії цієї печатки засудить ворога на {3} с, надаючи атакам ближнього бою проти засудженої цілі ймовірність зцілити нападника на {4}. Ваші атаки ближнього бою оновлюватимуть тривалість закляття. Одночасно може бути активним лише один присуд від кожного паладина.#light for {1} sec#heal the Paladin for {2}#enemy for {3} sec#attacker for {4}", "Атаки ближнього бою мають імовірність зцілити вас на {1}.#for {1}" }, -- Seal of Light (Rank 1)
[20347] = { ref=20165 }, -- Seal of Light (Rank 2)
[20348] = { ref=20165 }, -- Seal of Light (Rank 3)
[20349] = { ref=20165 }, -- Seal of Light (Rank 4)
[20185] = { "Присуд світла", nil, "Атаки ближнього бою проти вас мають імовірність зцілити нападника на {1}.#for {1}" }, -- Judgement of Light (aura)
[20344] = { ref=20185 }, -- Judgement of Light (aura)
[20345] = { ref=20185 }, -- Judgement of Light (aura)
[20346] = { ref=20185 }, -- Judgement of Light (aura)

-- Seal of Righteousness
[21084] = { "Печатка праведності", "Наповнює паладина святим духом на {1} с, надаючи кожній атаці ближнього бою від {2} до {3} додаткового пошкодження священністю. Повільніша зброя завдає більше пошкодження священністю за удар. Лише одна печатка може бути задіяна на паладинові одночасно.\n\nВивільнення енергії цієї печатки завдасть ворогові {4} пошкодження священністю.#for {1} sec#additional {2} to {3}#cause {4}", "Атаки ближнього бою завдають від {1} до {2} додаткового пошкодження священністю.#additional {1} to {2}" }, -- Seal of Righteousness (Rank 1)
[20287] = { "Печатка праведності", "Наповнює паладина святим духом на {1} с, надаючи кожній атаці ближнього бою від {2} до {3} додаткового пошкодження священністю. Повільніша зброя завдає більше пошкодження священністю за удар. Лише одна печатка може бути задіяна на паладинові одночасно.\n\nВивільнення енергії цієї печатки завдасть ворогові від {4} до {5} пошкодження священністю.#for {1} sec#additional {2} to {3}#cause {4} to {5}", "Атаки ближнього бою завдають від {1} до {2} додаткового пошкодження священністю.#additional {1} to {2}" }, -- Seal of Righteousness (Rank 2)
[20288] = { ref=20287 }, -- Seal of Righteousness (Rank 3)
[20289] = { ref=20287 }, -- Seal of Righteousness (Rank 4)
[20290] = { ref=20287 }, -- Seal of Righteousness (Rank 5)
[20291] = { ref=20287 }, -- Seal of Righteousness (Rank 6)
[20292] = { ref=20287 }, -- Seal of Righteousness (Rank 7)
[20293] = { ref=20287 }, -- Seal of Righteousness (Rank 8)

-- Seal of the Crusader
[21082] = { "Печатка хрестоносця", "Наповнює паладина духом хрестоносця на {1} с, надаючи {2} сили атаки ближнього бою. Паладин також атакує на {3}% швидше, але завдає менше пошкодження з кожною атакою. Лише одна печатка може бути задіяна на паладинові одночасно.\n\nВивільнення енергії цієї печатки засудить ворога на {4} с, збільшуючи отримуване ним пошкодження священністю на {5}. Ваші атаки ближнього бою оновлюватимуть тривалість закляття. Одночасно може бути активним лише один присуд від кожного паладина.#crusader for {1} sec#granting {2} melee attack power#{3}% faster#enemy for {4} sec#damage taken by up to {5}", "Силу атаки ближнього бою збільшено на {1}. Атаки ближнього бою швидші на {2}%, але завдають менше пошкодження.#increased by {1}#{2}% faster" }, -- Seal of the Crusader (Rank 1)
[20162] = { ref=21082 }, -- Seal of the Crusader (Rank 2)
[20305] = { ref=21082 }, -- Seal of the Crusader (Rank 3)
[20306] = { ref=21082 }, -- Seal of the Crusader (Rank 4)
[20307] = { ref=21082 }, -- Seal of the Crusader (Rank 5)
[20308] = { ref=21082 }, -- Seal of the Crusader (Rank 6)
[21183] = { "Присуд хрестоносця", nil, "Збільшує отримуване пошкодження священністю на {1}.#by up to {1}" }, -- Judgement of the Crusader (aura)
[20188] = { ref=21183 }, -- Judgement of the Crusader (aura)
[20300] = { ref=21183 }, -- Judgement of the Crusader (aura)
[20301] = { ref=21183 }, -- Judgement of the Crusader (aura)
[20302] = { ref=21183 }, -- Judgement of the Crusader (aura)
[20303] = { ref=21183 }, -- Judgement of the Crusader (aura)

-- Seal of Wisdom
[20166] = { "Печатка мудрості", "Наповнює паладина божественною мудрістю на {1} с, надаючи кожній атаці ближнього бою ймовірність відновити {2} мани паладинові. Лише одна печатка може бути задіяна на паладинові одночасно.\n\nВивільнення енергії цієї печатки засудить ворога на {3} с, надаючи атакам та закляттям проти засудженого ймовірність відновити {4} мани нападникові. Ваші атаки ближнього бою оновлюватимуть тривалість закляття. Одночасно може бути активним лише один присуд від кожного паладина.#wisdom for {1} sec#restore {2} of the Paladin#enemy for {3} sec#restore {4} mana to the attacker", "Атаки ближнього бою мають імовірність відновити {1} мани.#restore {1} mana" }, -- Seal of Wisdom (Rank 1)
[20356] = { ref=20166 }, -- Seal of Wisdom (Rank 2)
[20357] = { ref=20166 }, -- Seal of Wisdom (Rank 3)
[20186] = { "Присуд мудрості", nil, "Атаки та закляття проти вас мають імовірність відновити {1} мани нападникові.#restoring {1}" }, -- Judgement of Wisdom (aura)
[20354] = { ref=20186 }, -- Judgement of Wisdom (aura)
[20355] = { ref=20186 }, -- Judgement of Wisdom (aura)

-- Sense Undead
[5502] = { "Чуття невмерлих", "Показує на мінікарті місце перебування невмерлих поблизу до скасування здібності. Одночасно можна відстежувати лише щось одне.", "Відстеження невмерлих." }, -- Sense Undead

-- Shadow Resistance Aura
[19876] = { "Аура супротиву тіні", "Надає {1} додаткового супротиву тіні всім членам групи в радіусі {2} м. Гравці можуть мати на собі лише одну ауру від кожного паладина одночасно.#{1} additional#within {2} y", "Збільшує супротив тіні на {1}.#by {1}" }, -- Shadow Resistance Aura (Rank 1)
[19895] = { ref=19876 }, -- Shadow Resistance Aura (Rank 2)
[19896] = { ref=19876 }, -- Shadow Resistance Aura (Rank 3)

-- Shield Specialization
[20148] = { "Спеціалізація на щитах", "Збільшує обсяг пошкодження, що поглинає ваш щит, на {1}%.#by {1}" }, -- Shield Specialization (Rank 1)
[20149] = { ref=20148 }, -- Shield Specialization (Rank 2)
[20150] = { ref=20148 }, -- Shield Specialization (Rank 3)

-- Spiritual Focus
[20205] = { "Духовна зосередженість", "Надає вашим закляттям \"Зблиск світла\" та \"Священне світло\" {1}% імовірності не втрачати час вимови через отримання вами пошкодження.#{1}% chance" }, -- Spiritual Focus (Rank 1)
[20206] = { ref=20205 }, -- Spiritual Focus (Rank 2)
[20207] = { ref=20205 }, -- Spiritual Focus (Rank 3)
[20209] = { ref=20205 }, -- Spiritual Focus (Rank 4)
[20208] = { ref=20205 }, -- Spiritual Focus (Rank 5)

-- Summon Charger
[23214] = { "Виклик громака", "Викликає громака для верхової їзди. Швидкість збільшено на {1}%.#by {1}", "Збільшує швидкість на {1}%.#by {1}" }, -- Summon Charger

-- Summon Warhorse
[13819] = { "Виклик бойового коня", "Викликає бойового коня для верхової їзди. Швидкість збільшено на {1}%.#by {1}", "Збільшує швидкість на {1}%.#by {1}" }, -- Summon Warhorse

-- Toughness
[20143] = { "Міцність", "Збільшує вашу броню з предметів на {1}%.#items by {1}" }, -- Toughness (Rank 1)
[20144] = { ref=20143 }, -- Toughness (Rank 2)
[20145] = { ref=20143 }, -- Toughness (Rank 3)
[20146] = { ref=20143 }, -- Toughness (Rank 4)
[20147] = { ref=20143 }, -- Toughness (Rank 5)

-- Turn Undead
[2878] = { "Вигнати невмерлого", "Обраний невмерлий ворог буде примушений утікати впродовж {1} с. Подальше завдане пошкодження може перервати ефект. Одночасно лише одна ціль може бути вигнаною.#for up to {1} sec", "Примушений утікати." }, -- Turn Undead (Rank 1)
[5627] = { ref=2878 }, -- Turn Undead (Rank 2)
[10326] = { ref=2878 }, -- Turn Undead (Rank 3)

-- Two-Handed Weapon Specialization
[20111] = { "Спеціалізація на дворучній зброї", "Збільшує пошкодження, заподіяне дворучною зброєю ближнього бою, на {1}%.#weapons by {1}" }, -- Two-Handed Weapon Specialization (Rank 1)
[20112] = { ref=20111 }, -- Two-Handed Weapon Specialization (Rank 2)
[20113] = { ref=20111 }, -- Two-Handed Weapon Specialization (Rank 3)

-- Unyielding Faith
[9453] = { "Незламна віра", "Підвищує вашу ймовірність протистояти ефектам страху та дезорієнтації на додаткові {1}%.#additional {1}" }, -- Unyielding Faith (Rank 1)
[25836] = { ref=9453 }, -- Unyielding Faith (Rank 2)

-- Vengeance
[20049] = { "Помста", "Надає вам додаткові {1}% до завданого вами фізичного пошкодження та пошкодження священністю на {2} с після того, як ви завдали критичного удару зброєю, закляттям або здібністю.#{1}% bonus#for {2} sec" }, -- Vengeance (Rank 1)
[20056] = { ref=20049 }, -- Vengeance (Rank 2)
[20057] = { ref=20049 }, -- Vengeance (Rank 3)
[20058] = { ref=20049 }, -- Vengeance (Rank 4)
[20059] = { ref=20049 }, -- Vengeance (Rank 5)
[20050] = { "Помста", nil, "Фізичне пошкодження та пошкодження священністю збільшено на {1}%.#by {1}" }, -- Vengeance (aura)
[20052] = { ref=20050 }, -- Vengeance (aura)
[20053] = { ref=20050 }, -- Vengeance (aura)
[20054] = { ref=20050 }, -- Vengeance (aura)
[20055] = { ref=20050 }, -- Vengeance (aura)

-- Vindication
[9452] = { "Відплата", "Надає атакам ближнього бою паладина ймовірність зменшити силу та спритність цілі на {1}% на {2} с.#by {1}% for {2} sec" }, -- Vindication (Rank 1)
[26016] = { ref=9452 }, -- Vindication (Rank 2)
[26021] = { ref=9452 }, -- Vindication (Rank 3)
[67] = { "Відплата", nil, "Силу та спритність зменшено на {1}%.#by {1}" }, -- Vindication (aura)
[26017] = { ref=67 }, -- Vindication (aura)
[26018] = { ref=67 }, -- Vindication (aura)

}

for k, v in pairs(paladin_spells) do addonTable.spell[k] = v end
