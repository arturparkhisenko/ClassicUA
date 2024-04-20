local _, addonTable = ...

local shaman_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Ancestral Awakening
[425858] = { "Пробудження пращурів", "Критичні ефекти \"Хвилі зцілення\" та \"Малої хвиля зцілення\" викликають вам на допомогу духа пращурів, який миттєво зцілює члена групи з найнижчим запасом здоров'я в радіусі {1} м на {2}% від ефекту зцілення.#within {1} yards for {2}% of the", nil }, -- Ancestral Awakening
[425861] = { "Пробудження пращурів", nil, nil }, -- Ancestral Awakening
[425864] = { "Пробудження пращурів", "Критичні ефекти \"Хвилі зцілення\" та \"Малої хвиля зцілення\" викликають вам на допомогу духа пращурів, який миттєво зцілює члена групи чи рейду з найнижчим запасом здоров'я в радіусі {1} м.#within {1} yards", nil }, -- Ancestral Awakening
[425879] = { "Пробудження пращурів", "Отримати здібність \"Пробудження пращурів\":", nil, rune=425858 }, -- Ancestral Awakening

-- Ancestral Guidance
[409324] = { "Настанови пращурів", "Протягом наступних {1} с {2}% вашої шкоди перетворюється на зцілення {3} найближчих членів групи, а {4}% вашого зцілення перетворюється на шкоду останньої цілі вашого \"Вогняного шоку\".#next {1} sec, {2}% of#up to {3} nearby#and {4}% of", "Шкода перетворюється на зцілення найближчих членів групи, а зцілення - на шкоду останньої цілі \"Вогняного шоку\"." }, -- Ancestral Guidance
[409333] = { ref=409324 }, -- Ancestral Guidance
[409337] = { ref=409324 }, -- Ancestral Guidance
[409944] = { "Настанови пращурів", "Отримати здібність \"Настанови пращурів\":", nil, rune=409324 }, -- Ancestral Guidance

-- Bulwark Icon
[413338] = { "Символ оплоту", nil, "Сповнений натхнення." }, -- Bulwark Icon

-- Burn
[415231] = { "Горіння", "Ваш \"Вогняний шок\" тепер вражає до 3 цілей.", nil }, -- Burn
[415768] = { "Горіння", "Отримати здібність \"Горіння\":", nil, rune=415231 }, -- Burn

-- Chain Heal
[416244] = { "Ланцюгове зцілення", "Зцілює вибраного союзника на {1}-{2} здоров'я, перестрибуючи на інші цілі поряд. Якщо закляття було націлене на члена групи, подальші стрибки переходитимуть лише на інших її учасників. Кожен наступний стрибок має {3}% ефективності зцілення від попереднього. Зцілює до {4} цілей.#for {1} to {2}#{3}% as effective#{4} total targets.", nil }, -- Chain Heal
[416245] = { ref=416244 }, -- Chain Heal
[416246] = { ref=416244 }, -- Chain Heal

-- Chain Lightning
[408479] = { "Ланцюгова блискавка", "Кидає в ціль блискавку, що завдає від {1} до {2} шкоди від природи та перестрибує на інших ворогів поруч. Кожен стрибок завдає на {3}% менше шкоди. Вражає до {4} цілей.#dealing {1} to {2}#damage by {3}%#{4} total targets.", nil }, -- Chain Lightning
[408481] = { ref=408479 }, -- Chain Lightning
[408482] = { ref=408479 }, -- Chain Lightning
[408484] = { ref=408479 }, -- Chain Lightning

-- Decoy Totem
[425874] = { "Тотем-приманка", "Виклик тотема-приманки з 5 очками здоров'я біля ніг цілі на 10 с, який перенаправляє наступну атаку ближнього або дальнього бою на тотем замість цілі. Тотем також надає цілі невразливість до ефектів, що обмежують рух, на 10 сек.", nil }, -- Decoy Totem
[425876] = { "Тотем-приманка", nil, "Перенаправляє одну атаку ближнього або дальнього бою на тотем-приманку." }, -- Decoy Totem
[436391] = { "Тотем-приманка", nil, "Невразливість до ефектів обмеження руху." }, -- Decoy Totem
[425881] = { "Тотем-приманка", "Отримати здібність \"Тотем-приманка\":", nil, rune=425874 }, -- Decoy Totem
[436390] = { "Тотем-приманка", nil, nil }, -- Decoy Totem

-- Dual Wield Specialization
[408496] = { "Спеціалізація на бою з двох рук", "Коли ви тримаєте зброю в кожній руці, ваша ймовірність влучити заклинаннями і атаками ближнього бою збільшується на {1}%, ваша здібність \"Штормовий удар\" тепер завдає шкоду з обох рук, а шкода вашої зброї в лівій руці збільшується на {2}%#by {1}% while#offhand weapon by {2}%", nil }, -- Dual Wield Specialization
[409940] = { "Спеціалізація на бою з двох рук", "Отримати здібність \"Спеціалізація на бою з двох рук\":", nil, rune=408496 }, -- Dual Wield Specialization

-- Earth Shield
[974] = { "Щит землі", "Захищає ціль земляним щитом, зменшуючи час затримку вимови заклять при отриманні шкоди на {1}%, а також зцілюючи ціль при отриманні ударів в бою на {2}. Цей ефект може спрацьовувати лише раз на кілька секунд. Ефект має {3} зарядів та триває {4} хв. Одночасно щит землі може захищати лише одну ціль, і лише один щит стихій може бути активним на цілі.#damaged by {1}%#target for {2}#{3} charges#Lasts {4} min", "Зменшує затримку вимови заклять при отриманні шкоди на {1}%, а атаки по захищеній цілі зцілюють її на {2}.#by {1}%#target for {2}." }, -- Earth Shield
[408514] = { "Щит землі", "Захищає ціль земляним щитом, зменшуючи час затримку вимови заклять при отриманні шкоди на {1}%, а також зцілюючи ціль при отриманні ударів в бою на {2}. Цей ефект може спрацьовувати лише раз на кілька секунд. Ефект має {3} заряди та триває {4} хв. Одночасно щит землі може захищати лише одну ціль, і лише один щит стихій може бути активним на цілі.#damaged by {1}%#target for {2}#{3} charges#Lasts {4} min", "Зменшує затримку вимови заклять при отриманні шкоди на {1}%, а атаки по захищеній цілі зцілюють її на {2}.#by {1}%#target for {2}." }, -- Earth Shield
[408519] = { "Щит землі", "Зцілення від \"Щита землі\".", nil }, -- Earth Shield
[409947] = { "Щит землі", "Отримати здібність \"Щит землі\":", nil, rune=408514 }, -- Earth Shield

-- Earth Shock
[408681] = { "Земний шок", "Миттєво шокує ціль ударною хвилею, завдає від {1} до {2} шкоди від природи. Також перериває вимову закляття та внеможливлює вимову будь-яких інших заклять тієї ж школи магії на {3} с. Спричиняє високий рівень загрози та провокує ціль.#causing {1} to {2}#for {3} sec", "Підбурено." }, -- Earth Shock
[408683] = { ref=408681 }, -- Earth Shock
[408685] = { ref=408681 }, -- Earth Shock
[408687] = { ref=408681 }, -- Earth Shock
[408688] = { ref=408681 }, -- Earth Shock
[408689] = { ref=408681 }, -- Earth Shock
[408690] = { ref=408681 }, -- Earth Shock
[408693] = { ref=408681 }, -- Earth Shock

-- Earthgrab
[440574] = { ref=8377 }, -- Earthgrab

-- Earthliving
[415292] = { "Земне живоття", "Зцілює {1} здоров'я протягом {2} с.#{1} over {2} sec", "Зцілює {1} здоров'я кожні {2} с.#{1} every {2} sec" }, -- Earthliving

-- Feral Spirit
[440580] = { "Духи диких звірів", "Викликає двох духів вовків під командування шамана на {1} сек.#lasting {1} sec", nil }, -- Feral Spirit

-- Fire Nova
[408339] = { "Вогненний спалах", "Ваше заклинання \"Тотем вогненного спалаху\" замінюється на заклинання \"Вогненний спалах\", яке змушує ваш активний тотем вогню завдавати шкоду в місці його розташування.", nil }, -- Fire Nova
[408341] = { "Вогненний спалах", "Миттємо завдає від {1} до {2} шкоди від вогню ворогам в радіусі {3} м від вашого активного тотема вогню.#inflicts {1} to {2} fire#within {3} yd", nil }, -- Fire Nova
[408342] = { ref=408341 }, -- Fire Nova
[408343] = { ref=408341 }, -- Fire Nova
[408345] = { ref=408341 }, -- Fire Nova
[408424] = { "Вогненний спалах", nil, nil }, -- Fire Nova
[408426] = { "Вогненний спалах", nil, nil }, -- Fire Nova
[408427] = { "Вогненний спалах", nil, nil }, -- Fire Nova
[408428] = { "Вогненний спалах", nil, nil }, -- Fire Nova
[409938] = { "Вогненний спалах", "Отримати здібність \"Вогненний спалах\", що замінює \"Тотем вогненного спалаху\":", nil, rune=408339 }, -- Fire Nova

-- Flametongue Weapon
[436519] = { "Зброя язика полум'я", nil, nil }, -- Flametongue Weapon

-- Ghost Wolf
[415233] = { "Вовк-привид", "Перетворює шамана на вовка-привида, збільшує швидкість руху на {1}% та зменшує отриману шкоду на {2}%.#speed by {1}%#taken by {2}%", "Швидкість руху збільшено на {1}%.\nОтримує на {2}% менше шкоди.#speed by {1}%#taken by {2}%" }, -- Ghost Wolf

-- Healing Rain
[415236] = { "Цілющий дощ", "Зцілює членам групи в радіусі {1} м навколо цілі {2} здоров'я щосекунди.#area {1} yards#for {2} every", "Зцілює членам групи в межах дії \"Цілющого дощу\" {1} здоров'я щосекунди.#for {1} every" }, -- Healing Rain
[415242] = { "Цілющий дощ", "Зцілює 5 членам групи чи рейду в радіусі {1} м навколо цілі {2} здоров'я.#within {1} yards#target for {2}", nil }, -- Healing Rain
[415714] = { "Цілющий дощ", "Отримати здібність \"Цілющий дощ\":", nil, rune=415236 }, -- Healing Rain

-- Healing Wave
[416247] = { "Хвиля зцілення", "Зцілює союзній цілі від {1} до {2} здоров'я.#for {1} to {2}", nil }, -- Healing Wave
[416316] = { ref=416247 }, -- Healing Wave
[416317] = { ref=416247 }, -- Healing Wave
[416318] = { ref=416247 }, -- Healing Wave
[416319] = { ref=416247 }, -- Healing Wave
[416320] = { ref=416247 }, -- Healing Wave
[416322] = { ref=416247 }, -- Healing Wave
[416323] = { ref=416247 }, -- Healing Wave
[416324] = { ref=416247 }, -- Healing Wave
[416325] = { ref=416247 }, -- Healing Wave

-- Lava Burst
[408490] = { "Виверження лави", "Ви жбурляєте розплавлену лаву в ціль, завдаючи від {1} до {2} шкоди від вогню. Якщо на ціль діє ваш \"Вогняний шок\", то \"Виверження лави\" завдасть критичного удару.#dealing {1} to {2} Fire", nil }, -- Lava Burst
[408491] = { ref=408490 }, -- Lava Burst
[409952] = { "Виверження лави", "Отримати здібність \"Виверження лави\":", nil, rune=408490 }, -- Lava Burst

-- Lava Lash
[408507] = { "Удар лавою", "Ви заряджаєте свою зброю в лівій руці лавою, і миттєво завдаєте {1}% шкоди від зброї. Шкода збільшується на {2}%, якщо ваша зброя зачарована язиком полум'я.#dealing {1}% off-hand#by {2}% if", nil }, -- Lava Lash
[409953] = { "Удар лавою", "Отримати здібність \"Удар лавою\":", nil, rune=408507 }, -- Lava Lash

-- Lightning Bolt
[408439] = { "Блискавка", "Кидає в ціль блискавку, завдаючи від {1} до {2} шкоди від природи.#for {1} to {2}", nil }, -- Lightning Bolt
[408440] = { ref=408439 }, -- Lightning Bolt
[408441] = { ref=408439 }, -- Lightning Bolt
[408442] = { ref=408439 }, -- Lightning Bolt
[408443] = { ref=408439 }, -- Lightning Bolt
[408472] = { ref=408439 }, -- Lightning Bolt
[408473] = { ref=408439 }, -- Lightning Bolt
[408474] = { ref=408439 }, -- Lightning Bolt
[408475] = { ref=408439 }, -- Lightning Bolt
[408477] = { ref=408439 }, -- Lightning Bolt

-- Lightning Shield
[432143] = { "Щит блискавки", "Кидає в ціль блискавку, що завдає {1} шкоди від природи.#for {1} Nature", nil }, -- Lightning Shield
[432144] = { ref=432143 }, -- Lightning Shield
[432145] = { ref=432143 }, -- Lightning Shield
[432146] = { ref=432143 }, -- Lightning Shield
[432147] = { ref=432143 }, -- Lightning Shield
[432148] = { ref=432143 }, -- Lightning Shield
[432149] = { ref=432143 }, -- Lightning Shield

-- Loyal Beta
[443320] = { "Вірний бета", nil, "Фізичну шкоду збільшено на {1}%, а загрозу зменшено на {2}%#increased by {1}%#reduced by {2}%" }, -- Loyal Beta

-- Maelstrom Ready!
[408501] = { "Заряд Водоверті", nil, nil }, -- Maelstrom Ready!

-- Maelstrom Weapon
[408498] = { "Зброя Водоверті", "Коли ви завдаєте шкоди атакою ближнього бою, у вас є шанс зменшити час вимовляння і втрати мани вашого наступного заклинання \"Блискавка\", \"Ланцюгова блискавка\", \"Мала хвиля зцілення\", \"Хвиля зцілення\", \"Ланцюгове зцілення\" або \"Виверження лави\" на 20%. Шанс збільшується на 50%, якщо ваша зброя в правій руці зачарована \"Зброєю буревію\". Ефект накопичується до 5 разів. Триває 30 секунд.", nil }, -- Maelstrom Weapon
[408505] = { "Зброя Водоверті", "Зменшує час вимовляння і витрати мани вашого наступного заклинання  \"Блискавка\", \"Ланцюгова блискавка\", \"Мала хвиля зцілення\", \"Хвиля зцілення\", \"Ланцюгове зцілення\" або \"Виверження лави\" на {1}%.#spell by {1}%", "Зменшує час вимовляння і витрати мани вашого наступного заклинання  \"Блискавка\", \"Ланцюгова блискавка\", \"Мала хвиля зцілення\", \"Хвиля зцілення\", \"Ланцюгове зцілення\" або \"Виверження лави\" на {1}%.#spell by {1}%" }, -- Maelstrom Weapon
[409946] = { "Зброя Водоверті", "Отримати здібність \"Зброя Водоверті\":", nil, rune=408498 }, -- Maelstrom Weapon

-- Mental Dexterity
[415140] = { "Гнучкість розуму", "Завдаючи шкоди зброєю ближнього бою ви збільшуєте силу атаки на {1}% від вашого інтелекту, а шкода від заклинань і зцілення - на {2}% від вашої сили атаки протягом {3} c.#Power by {1}% of#healing by {2}%#for {3} sec", nil }, -- Mental Dexterity
[415144] = { "Гнучкість розуму", nil, "Силу атаки збільшено на {1}.\nШкоду та зцілення заклять збільшено на {2}.#Power increased by {1}.#healing increased by {2}" }, -- Mental Dexterity
[415713] = { "Гнучкість розуму", "Отримати здібність \"Гнучкість розуму\":", nil, rune=415140 }, -- Mental Dexterity

-- Molten Blast
[425339] = { "Вибух лави", "Завдати {1} ворогам перед собою від {2} до {3} шкоди від вогню. Ця здібність спричиняє велику кількість загрози. Періодична шкода від \"Вогняного шоку\" має {4}% шанс скинути час відновлення \"Вибуху лави\".#up to {1} enemies#for {2} to {3}#a {4}% chance", nil }, -- Molten Blast
[425340] = { "Вибух лави", "Отримати здібність \"Вибух лави\":", nil, rune=425339 }, -- Molten Blast

-- Overcharged
[432140] = { "Надпровідність", "Ваш \"Щит блискавки\" не втрачає заряди, відновлюється {1} с і завдає шкоди всім ворогам в радіусі {2} м.#a {1} sec#within {2} y", nil }, -- Overcharged
[432240] = { "Надпровідність", "Отримати здібність \"Надпровідність\":", nil, rune=432140 }, -- Overcharged

-- Overload
[408438] = { "Перевантаження", "Ваші заклинання \"Блискавка\", \"Ланцюгова блискавка\", \"Ланцюгове зцілення\", \"Хвиля зцілення\" і \"Виверження лави\" мають {1}% шанс викликати на ту ж ціль друге аналогічне заклинання без додаткових витрат мани, яке завдає половину шкоди або зцілення і не спричиняє загрози.#a {1}% chance", nil }, -- Overload
[409945] = { "Перевантаження", "Отримати здібність \"Перевантаження\":", nil, rune=408438 }, -- Overload

-- Power Surge
[415100] = { "Сплеск сили", "Щоразу, коли \"Вогняний шок\" завдає шкоди, він має 5% шанс завершити відновлення \"Виверження лави\" і \"Ланцюгової блискавки\" та дозволити вимовити наступне \"Виверження лави\", \"Ланцюгове зцілення\" або \"Ланцюгову блискавку\" впродовж 10 секунд миттєво. Крім того, кожні 5 секунд ви відновлюєте ману в обсязі 15% від вашого інтелекту.", nil }, -- Power Surge
[415105] = { "Сплеск сили", nil, "Ваше наступне закляття \"Виверження лави\", \"Ланцюгове зцілення\" або \"Ланцюгова блискавка\" буде вимовлено миттєво." }, -- Power Surge
[415712] = { "Сплеск сили", "Отримати здібність \"Сплеск сили\":", nil, rune=415100 }, -- Power Surge
[440285] = { "Сплеск сили", nil, "Ваше наступне закляття \"Виверження лави\", \"Ланцюгове зцілення\" або \"Ланцюгова блискавка\" буде вимовлено миттєво." }, -- Power Surge

-- Riptide
[408521] = { "Бистрина", "Зцілює дружній цілі від {1} до {2} здоров'я миттєво і ще {3} здоров'я протягом {4} секунд.  Наступне \"Ланцюгове зцілення\", яке ви застосуєте до цієї цілі протягом {5} секунд, поглине ефект періодичного зцілення і посилить ефект \"Ланцюгового зцілення\" на {6}%. Це заклинання також викликає спрацювання ефекту \"Пробудження пращурів\".#for {1} to {2} and another {3} over {4} sec#within {5} sec#by {6}%", "Зцілює {1} здоров'я кожні {2} с. Підсилює ефект \"Ланцюгового зцілення\" на {3}%.#{1} every {2}#by {3}%" }, -- Riptide
[409954] = { "Бистрина", "Отримати здібність \"Бистрина\":", nil, rune=408521 }, -- Riptide

-- Rolling Thunder
[432056] = { "Розкотистий грім", "Заклинання \"Блискавка\" і \"Ланцюгова блискавка\" мають {1}% шанс додати додатковий заряд до вашого активного \"Щита блискавки\", максимум до {2} зарядів.\n\nТепер \"Земний шок\" випускає всі заряди \"Щита блискавки\" понад {3}, завдаючи шкоди цілі та відновлюючи вам {4}% від максимального запасу мани за кожен випущений заряд.#a {1}% chance#of {2} Charges#above {3}#for {4}% of", nil }, -- Rolling Thunder
[432129] = { "Розкотистий грім", nil, nil }, -- Rolling Thunder
[432235] = { "Розкотистий грім", "Отримати здібність \"Розкотистий грім\":", nil, rune=432056 }, -- Rolling Thunder

-- Shamanistic Rage
[425336] = { "Шаманська лють", "Зменшує всю отриману вами шкоду на {1}%, і ви відновлюєте {2}% мани щосекунди протягом {3} секунд. Члени вашої групи та рейду в радіусі {4} м також відновлять {5}% від отриманої таким чином мани.#take by {1}%#equal to {2}% of#for {3} sec#within {4} yards#receive {5}% of the mana", "Отримана шкода зменшена на {1}%.\nВідновлення {2} мани щосекунди.#by {1}%#{2} mana" }, -- Shamanistic Rage
[425341] = { "Шаманська лють", "Отримати здібність \"Шаманська лють\":", nil, rune=425336 }, -- Shamanistic Rage
[433255] = { "Шаманська лють", nil, "Відновлення {1} мани щосекунди.#{1} mana" }, -- Shamanistic Rage

-- Shield Mastery
[408524] = { "Майстерність володіння щитом", "Кожного разу, коли ви блокуєте атаку, ви відновлюєте ману в об'ємі {1}% від вашого максимального запасу мани, і отримуєте додаткову броню в об'ємі {2}% від значення броні вашого щита. Ефект накопичується до {3} разів. Ви також завжди отримуєте на {4}% більше ймовірності блокування і на {5}% більше показнику блокування.#to {1}% of your maximum mana#to {2}% of your shield#up to {3} times#gain {4}% increased chance to Block and {5}% increased Block", nil }, -- Shield Mastery
[409943] = { "Майстерність володіння щитом", "Отримати здібність \"Майстерність володіння щитом\":", nil, rune=408524 }, -- Shield Mastery

-- Spirit Hunt
[440593] = { "Духовне полювання", "Атаки духів вовків зцілюють їх та їхнього повелителя на {1}% від завданої шкоди.#for {1}% of", "Зцілення на {1}% від завданої шкоди.#Converts {1}% damage" }, -- Spirit Hunt
[440609] = { ref=440593 }, -- Spirit Hunt

-- Spirit of the Alpha
[408696] = { "Дух альфа-вовка", "Наділяє ціль духом альфа-вовка, збільшуючи всю її загрозу на {1}% протягом {2} хв. Одночасно може бути активним лише на одній цілі. При застосуванні не на себе, шаман також отримує ефект \"Вірний бета\", що збільшує фізичну шкоду на {3}% та зменшує загрозу на {4}% протягом {5} хв. Ви не можете мати обидва ефекти одночасно.#target by {1}% for {2} min#done by {3}%#generated by {4}% for {5} min", "Загрозу збільшено на {1}%,#generated by {1}%" }, -- Spirit of the Alpha
[409951] = { "Дух альфа-вовка", "Отримати здібність \"Дух альфа-вовка\":", nil, rune=408696 }, -- Spirit of the Alpha

-- Static Shock
[432134] = { "Електростатика", "Ваш \"Щит блискавки\" тепер має {1} зарядів, а ваші атаки ближнього бою мають {2}% ймовірність активувати один з цих зарядів, миттєво завдаючи шкоди вашій цілі.#has {1} charges#a {2}% chance", nil }, -- Static Shock
[432237] = { "Електростатика", "Отримати здібність \"Електростатика\":", nil, rune=432134 }, -- Static Shock

-- Tidal Waves
[432041] = { "Приливні хвилі", nil, "Час вимови \"Хвилі зцілення\" зменшено на {1}%, а ймовірність критичного ефекту \"Малої хвилі зцілення\" збільшено на {2}%.#by {1}% and#by {2}%." }, -- Tidal Waves
[432042] = { "Приливні хвилі", "Коли ви вимовляєте заклинання \"Ланцюгове зцілення\" або \"Бистрина\", ви отримуєте 2 заряди \"Приливних хвиль\", що зменшують час на вимову \"Хвилі зцілення\" на {1}% та збільшують ймовірність критичного ефекту \"Малої хвилі зцілення\" на {2}%.#by {1}% and#by {2}%.", nil }, -- Tidal Waves
[432233] = { "Приливні хвилі", "Отримати здібність \"Приливні хвилі\":", nil, rune=432042 }, -- Tidal Waves

-- Totemic Projection
[437009] = { "Тотемна проекція", "Переміщує ваші активні тотеми у вказане місце.", nil }, -- Totemic Projection

-- Twin Howl
[440589] = { "Групове виття", "Ваші духи вовків виють, змушуючи всіх ворогів атакувати їх протягом {1} секунд.#for {1} sec", nil }, -- Twin Howl

-- Two-Handed Mastery
[436364] = { "Майстерність володіння дворучною зброєю", "Щоразу, коли ви вдаряєте ворога дворучною зброєю, ви збільшуєте швидкість атаки дворучною зброєю на {1}%, силу атаки на {2}% та ймовірність влучити закляттями на {3}% протягом {4} секунд. Цей ефект втрачається, якщо ви вдаряєте ворога одноручною зброєю.#gain {1}% attack speed#{2}% increased Attack Power#and {3}% increased chance#for {4} sec", nil }, -- Two-Handed Mastery
[436367] = { "Майстерність володіння дворучною зброєю", "Отримати здібність \"Майстерність володіння дворучною зброєю\":", nil, rune=436364 }, -- Two-Handed Mastery

-- Water Shield
[408510] = { "Щит води", "Заклинача оточують 3 кулі води, які відновлюють 1% від максимального запасу мани кожні 5 с. Коли заклинання, атака ближнього або дальнього бою потрапляє в заклинача, одна куля води знищується відновлює 4% від максимального запасу мани. Куля води може бути знищена лише раз на кілька секунд. Триває 10 хв. Одночасно на шамані може бути активний лише один щит стихій.", "Відновлює 1% від максимального запасу мани кожні 5 с. Атаки та заклинання, використані проти вас, відновлюють 4% вашого максимального запасу мани. Зарядів: {1}.#{1} charge" }, -- Water Shield
[409941] = { "Щит води", "Отримати здібність \"Щит води\":", nil, rune=408510 }, -- Water Shield

-- Way of Earth
[408531] = { "Шлях Землі", "Поки зброя у вашій основній руці зачарована каменоломом і ви тримаєте щит, ви спричиняєте на {1}% більше загрози, маєте на {2}% більше здоров'я, отримуєте на {3}% менше шкоди та на {4}% меншу ймовірність отримати критичний удар в ближньому бою, а \"Земний шок\" підбурює цілі атакувати вас і має окремий час відновлення від інших шоків, але його дальність дії зменшується до ближнього бою.#deal {1}% increased#gain {2}% increased#take {3}% reduced#gain {4}% reduced", nil }, -- Way of Earth
[408680] = { "Шлях Землі", "Поки зброя у вашій основній руці зачарована каменоломом, ви спричиняєте на {1}% більше загрози, маєте на {2}% більше здоров'я, отримуєте на {3}% менше шкоди та на {4}% меншу ймовірність отримати критичний удар в ближньому бою, а \"Земний шок\" підбурює цілі атакувати вас і має окремий час відновлення від інших шоків.#deal {1}% increased#gain {2}% increased#take {3}% reduced#gain {4}% reduced", "Спричиняє на {1}% більше загрози. Запас здоров'я збільшено на {2}%. \"Земний шок\" підбурює цілі атакувати. На {3}% менше отриманої шкоди. На {4}% менша ймовірність отримати критичний удар в ближньому бою.#{1}% increased#increased by {2}%#{3}% reduced damage#{4}% reduced chance" }, -- Way of Earth
[409955] = { "Шлях Землі", "Отримати здібність \"Шлях Землі\":", nil, rune=408531 }, -- Way of Earth

-- Windfury Weapon
[439431] = { "Зброя буревію", "Підсилює зброю шамана вітром. Кожен удар з імовірністю {1}% проводить {2} додаткові атаки зі збільшеною на {3} силою атаки ближнього бою. Триває {4} хв.#{1}% chance#{2} extra attacks with {3}#Lasts for {4} min", nil }, -- Windfury Weapon
[439440] = { "Зброя буревію", nil, nil }, -- Windfury Weapon
[439441] = { "Зброя буревію", nil, nil }, -- Windfury Weapon

-- Rune progression effects
[413338] = { "Символ оплоту", nil, "Сповнений натхнення." }, -- Bulwark Icon
[447259] = { "Електризоване повітря", nil, "Ви відчуваєте дивну енергію, ніби вас вдарило струмом." }, -- Charged Air
[415012] = { "Символ уламків", nil, "Сповнений натхнення." }, -- Clastic Icon
[413429] = { "Символ здвоєння", nil, "Сповнений натхнення." }, -- Dyadic Icon
[415015] = { "Гальванічний символ", nil, "Сповнений натхнення." }, -- Galvanic Icon
[434357] = { "Приборкання блискавки", nil, nil }, -- Harness Lightning
[413839] = { "Каджарський символ", nil, "Сповнений натхнення." }, -- Kajaric Icon
[413432] = { "Монолітний символ", nil, "Сповнений натхнення." }, -- Lithic Icon
[433427] = { "зілля шквалоломів", "Захищає вас від стихій.", "Ви відчуваєте приємне тепло." }, -- Squall-breakers Potion
[426257] = { "Сірчаний символ", nil, "Сповнений натхнення." }, -- Sulfurous Icon
[420799] = { "Символ бурі", nil, "Сповнений натхнення." }, -- Tempest Icon
[446888] = { "Випробування тотема", "Шкоду, отриману під час виконання випробування тотема, збільшено на {1}%.#by {1}%", "Шкоду, отриману під час виконання випробування тотема, збільшено на {1}%.#by {1}%" }, -- Totem Challenge

-- Engraving
[410093] = { "Гравіювання пояса - Вогненний спалах", "Вигравіювати на поясі руну \"Вогненний спалах\":", nil, rune=408339 }, -- Engrave Belt - Fire Nova
[410100] = { "Гравіювання пояса - Зброя Водоверті", "Вигравіювати на поясі руну \"Зброя Водоверті\":", nil, rune=408498 }, -- Engrave Belt - Maelstrom Weapon
[416054] = { "Гравіювання пояса - Сплеск сили", "Вигравіювати на поясі руну \"Сплеск сили\":", nil, rune=415100 }, -- Engrave Belt - Power Surge
[425883] = { "Гравіювання чоботів - Пробудження пращурів", "Вигравіювати на чоботях руну \"Пробудження пращурів\":", nil, rune=425858 }, -- Engrave Boots - Ancestral Awakening
[425882] = { "Гравіювання чоботів - Тотем-приманка", "Вигравіювати на чоботях руну \"Тотем-приманка\":", nil, rune=425874 }, -- Engrave Boots - Decoy Totem
[410103] = { "Гравіювання чоботів - Дух альфа-вовка", "Вигравіювати на чоботях руну \"Дух альфа-вовка\":", nil, rune=408696 }, -- Engrave Boots - Spirit of the Alpha
[432241] = { "Гравіювання браслетів - Надпровідність", "Вигравіювати на браслетах руну \"Надпровідність\":", nil, rune=432140 }, -- Engrave Bracers - Overcharged
[410105] = { "Гравіювання браслетів - Бистрина", "Вигравіювати на браслетах руну \"Бистрина\":", nil, rune=432042 }, -- Engrave Bracers - Riptide
[432236] = { "Гравіювання браслетів - Розкотистий грім", "Вигравіювати на браслетах руну \"Розкотистий грім\":", nil, rune=432056 }, -- Engrave Bracers - Rolling Thunder
[432238] = { "Гравіювання браслетів - Електростатика", "Вигравіювати на браслетах руну \"Електростатика\":", nil, rune=432134 }, -- Engrave Bracers - Static Shock
[410096] = { "Гравіювання нагрудника - Спеціалізація на бою з двох рук", "Вигравіювати на нагруднику руну \"Спеціалізація на бою з двох рук\":", nil, rune=408496 }, -- Engrave Chest - Dual Wield Specialization
[416057] = { "Гравіювання нагрудника - Цілющий дощ", "Вигравіювати на нагруднику руну \"Цілющий дощ\":", nil, rune=415236 }, -- Engrave Chest - Healing Rain
[410094] = { "Гравіювання нагрудника - Перевантаження", "Вигравіювати на нагруднику руну \"Перевантаження\":", nil, rune=408438 }, -- Engrave Chest - Overload
[410098] = { "Гравіювання нагрудника - Майстерність володіння щитом", "Вигравіювати на нагруднику руну \"Майстерність володіння щитом\":", nil, rune=408524 }, -- Engrave Chest - Shield Mastery
[436368] = { "Гравіювання нагрудника - Майстерність володіння дворучною зброєю", "Вигравіювати на нагруднику руну \"Майстерність володіння дворучною зброєю\":", nil, rune=436364 }, -- Engrave Chest - Two-Handed Mastery
[410095] = { "Гравіювання рукавиць - Виверження лави", "Вигравіювати на рукавицях руну \"Виверження лави\":", nil, rune=408490 }, -- Engrave Gloves - Lava Burst
[410104] = { "Гравіювання рукавиць - Удар лавою", "Вигравіювати на рукавицях руну \"Удар лавою\":", nil, rune=408507 }, -- Engrave Gloves - Lava Lash
[425344] = { "Гравіювання рукавиць - Вибух лави", "Вигравіювати на рукавицях руну \"Вибух лави\":", nil, rune=425339 }, -- Engrave Gloves - Molten Blast
[410097] = { "Гравіювання рукавиць - Щит води", "Вигравіювати на рукавицях руну \"Щит води\":", nil, rune=408510 }, -- Engrave Gloves - Water Shield
[416066] = { "Гравіювання шолома - Горіння", "Вигравіювати на шоломі руну \"Горіння\":", nil, rune=415231 }, -- Engrave Helm - Burn
[416055] = { "Гравіювання шолома - Гнучкість розуму", "Вигравіювати на шоломі руну \"Гнучкість розуму\":", nil, rune=415140 }, -- Engrave Helm - Mental Dexterity
[432234] = { "Гравіювання шолома - Приливні хвилі", "Вигравіювати на шоломі руну \"Приливні хвилі\":", nil, rune=432042 }, -- Engrave Helm - Tidal Waves
[410099] = { "Гравіювання штанів - Настанови пращурів", "Вигравіювати на штанях руну \"Настанови пращурів\":", nil, rune=409324 }, -- Engrave Pants - Ancestral Guidance
[410101] = { "Гравіювання штанів - Щит землі", "Вигравіювати на штанях руну \"Щит землі\":", nil, rune=408514 }, -- Engrave Pants - Earth Shield
[425343] = { "Гравіювання штанів - Шаманська лють", "Вигравіювати на штанях руну \"Шаманська лють\":", nil, rune=425336 }, -- Engrave Pants - Shamanistic Rage
[410107] = { "Гравіювання штанів - Шлях Землі", "Вигравіювати на штанях руну \"Шлях Землі\":", nil, rune=408531 }, -- Engrave Pants - Way of Earth

}

for k, v in pairs(shaman_spells) do addonTable.spell[k] = v end
