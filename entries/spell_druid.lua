local _, addonTable = ...

local druid_spells = {

-- [id] = {
--     [ref] = ID (optional),
--     [1] = title (optional),
--     [2] = description (optional),
--     [3] = aura (optional),
-- }

-- Abolish Poison
[2893] = { "Усунути отруєння", "Намагається вилікувати {1} ефект отруєння на цілі та ще {2} ефект отруєння кожні {3} с протягом {4} с.#cure {1}#and {2} more#every {3} seconds for {4} sec", "Намагається вилікувати {1} отруєння кожні {2} с.#cure {1}#every {2} sec" }, -- Abolish Poison

-- Barkskin
[22812] = { "Луб'яна шкіра", "Шкіра друїда стає міцною, як кора. Фізичні ушкодження зменшено на {1}%. Поки триває захист, ворожі атаки не спричинять втрат часу вимови заклять, але немиттєві закляття вимовляються на {2} с довше та швидкість атаки ближнього бою сповільнена на {3}%. Триває {4} с.#reduced by {1}#take {2} sec#slowed by {3}#Lasts {4} sec", "Фізичні ушкодження зменшено на {1}%. Поки триває захист, ворожі атаки не спричинять втрат часу вимови заклять, але немиттєві закляття вимовляються на {2} с довше та швидкість атаки ближнього бою сповільнена на {3}%.#reduced by {1}#take {2} sec#slowed by {3}" }, -- Barkskin

-- Bash
[5211] = { "Стусан", "Приголомшує ціль на {1} с.#for {1} sec", "Приголомшено." }, -- Bash (Rank 1)
[6798] = { ref=5211 }, -- Bash (Rank 2)
[8983] = { ref=5211 }, -- Bash (Rank 3)

-- Blood Frenzy
[16952] = { "Криваве оскаженіння", "Ваші критичні удари здібностями котячої подоби, що збільшують довжину комбінації, з імовірністю {1}% збільшать довжину комбінації на додатковий прийом.#{1}% chance" }, -- Blood Frenzy (Rank 1)
[16954] = { ref=16952 }, -- Blood Frenzy (Rank 2)

-- Brutal Impact
[16940] = { "Жорстокий струс", "Збільшує тривалість приголомшення ваших здібностей \"Стусан\" та \"Стрибок\" на {1} с.#by {1} sec" }, -- Brutal Impact (Rank 1)
[16941] = { ref=16940 }, -- Brutal Impact (Rank 2)

-- Challenging Roar
[5209] = { "Войовничий рев", "Примушує всіх ворогів поблизу зосередити свої атаки на вас протягом {1} с.#for {1} sec", "Підбурений." }, -- Challenging Roar

-- Claw
[1082] = { "Дряпання", "Дряпає ворога, завдаючи {1} додаткового пошкодження. Збільшує довжину комбінації на {2} прийом.#causing {1}#{2} combo" }, -- Claw (Rank 1)
[3029] = { ref=1082 }, -- Claw (Rank 2)
[5201] = { ref=1082 }, -- Claw (Rank 3)
[9849] = { ref=1082 }, -- Claw (Rank 4)
[9850] = { ref=1082 }, -- Claw (Rank 5)

-- Cower
[8998] = { "Зіщулювання", "Зіщулитися, не завдаючи пошкодження, та трохи зменшити вашу загрозу. Це знизить вірогідність того, що ворог атакуватиме саме вас." }, -- Cower (Rank 1)
[9000] = { "Зіщулення", "Зіщулитися, не завдаючи пошкодження, та середньо зменшити вашу загрозу. Це знизить вірогідність того, що ворог атакуватиме саме вас." }, -- Cower (Rank 2)
[9892] = { "Зіщулення", "Зіщулитися, не завдаючи пошкодження, та значно зменшити вашу загрозу. Це знизить вірогідність того, що ворог атакуватиме саме вас." }, -- Cower (Rank 3)

-- Cure Poison
[8946] = { "Вилікувати отруєння", "Виліковує {1} ефект отруєння на цілі.#{1} poison" }, -- Cure Poison

-- Dash
[1850] = { "Порив", "Збільшує швидкість руху на {1}% на {2} с. Не перериває дію здібності \"Зачаїтися\".#speed by {1}% for {2} sec", "Збільшує швидкість руху на {1}%.#by {1}" }, -- Dash (Rank 1)
[9821] = { ref=1850 }, -- Dash (Rank 2)

-- Demoralizing Roar
[99] = { "Деморалізуючий рев", "Друїд реве, зменшуючи силу атаки ближнього бою ворогів поблизу на {1}. Триває {2} с.#power by {1}#Lasts {2} sec", "Зменшує силу атаки ближнього бою на {1}.#power by {1}" }, -- Demoralizing Roar (Rank 1)
[1735] = { ref=99 }, -- Demoralizing Roar (Rank 2)
[9490] = { ref=99 }, -- Demoralizing Roar (Rank 3)
[9747] = { ref=99 }, -- Demoralizing Roar (Rank 4)
[9898] = { ref=99 }, -- Demoralizing Roar (Rank 5)

-- Enrage
[5229] = { "Несамовитість", "Надає {1} люті протягом {2} с, але знижує базову броню на {3}% у ведмежій подобі та на {4}% у подобі жахливого ведмедя. Друїд вважається в бою, поки діє закляття.#{1} rage over {2} sec#{3}% in Bear Form and {4}% in Dire Bear Form", "Отримує {1} люті щосекунди. Базову броню зменшено.#{1} rage" }, -- Enrage

-- Entangling Roots
[339] = { "Опутуюче коріння", "Приковує ціль на місці та завдає {1} пошкодження природою протягом {2} с. Подальше завдане пошкодження може перервати ефект. Можна використовувати лише просто неба.#causes {1}#over {2} sec", "Приковано. Завдає {1} пошкодження природою кожні {2} с.#Causes {1}#every {2} sec" }, -- Entangling Roots (Rank 1)
[1062] = { ref=339 }, -- Entangling Roots (Rank 2)
[5195] = { ref=339 }, -- Entangling Roots (Rank 3)
[5196] = { ref=339 }, -- Entangling Roots (Rank 4)
[9852] = { ref=339 }, -- Entangling Roots (Rank 5)
[9853] = { ref=339 }, -- Entangling Roots (Rank 6)

-- Faerie Fire
[770] = { "Чарівний вогонь", "Зменшує броню цілі на {1} на {2} с. Під час дії закляття ціль не може стати непомітною або невидимою.#by {1} for {2} sec", "Зменшує броню цілі на {1}. Неможливо стати непомітним або невидимим.#armor by {1}" }, -- Faerie Fire (Rank 1)
[778] = { ref=770 }, -- Faerie Fire (Rank 2)
[9749] = { ref=770 }, -- Faerie Fire (Rank 3)
[9907] = { ref=770 }, -- Faerie Fire (Rank 4)
[16857] = { "Чарівний вогонь (Звір)", ref=770 }, -- Faerie Fire (Feral) (Rank 1)
[17390] = { "Чарівний вогонь (Звір)", ref=770 }, -- Faerie Fire (Feral) (Rank 2)
[17391] = { "Чарівний вогонь (Звір)", ref=770 }, -- Faerie Fire (Feral) (Rank 3)
[17392] = { "Чарівний вогонь (Звір)", ref=770 }, -- Faerie Fire (Feral) (Rank 4)

-- Feline Grace
[20719] = { "Котяча грація", "Зменшує пошкодження від падіння." }, -- Feline Grace

-- Feline Swiftness
[17002] = { "Котяча стрімкість", "Збільшує швидкість руху на {1}%, перебуваючи просто неба у котячій подобі, і збільшує ймовірність ухилитися у котячій подобі на {2}%.#speed by {1}#Form by {2}" }, -- Feline Swiftness (Rank 1)
[24866] = { ref=17002 }, -- Feline Swiftness (Rank 2)

-- Feral Aggression
[16858] = { "Дика агресія", "Ваш \"Деморалізуючий рев\" знижує силу атаки ворога додатково на {1}%. Ваш \"Безжалісний укус\" завдає на {2}% більше пошкодження.#Roar by {1}#Bite by {2}" }, -- Feral Aggression (Rank 1)
[16859] = { ref=16858 }, -- Feral Aggression (Rank 2)
[16860] = { ref=16858 }, -- Feral Aggression (Rank 3)
[16861] = { ref=16858 }, -- Feral Aggression (Rank 4)
[16862] = { ref=16858 }, -- Feral Aggression (Rank 5)

-- Feral Charge
[16979] = { "Дикий штурм", "Штурм ворога, знерухомлюючи його та перериваючи вимову будь-якого закляття на {1} с.#for {1} sec", "Знерухомлено." }, -- Feral Charge
[19675] = { "Ефект дикого штурму", nil, "Знерухомлено." }, -- Feral Charge Effect (aura)

-- Feral Instinct
[16947] = { "Дикий інстинкт", "Збільшує загрозу, заподіяну у ведмежій подобі та подобі жахливого ведмедя, на {1}% та зменшує ймовірність ворогів помітити вас під час використання здібності \"Зачаїтися\".#by {1}" }, -- Feral Instinct (Rank 1)
[16948] = { ref=16947 }, -- Feral Instinct (Rank 2)
[16949] = { ref=16947 }, -- Feral Instinct (Rank 3)
[16950] = { ref=16947 }, -- Feral Instinct (Rank 4)
[16951] = { ref=16947 }, -- Feral Instinct (Rank 5)

-- Ferocious Bite
[22568] = { "Безжалісний укус", "Завершальний прийом, що завдає пошкодження за кожен прийом комбінації та перетворює кожну одиницю енергії на додаткові {1} пошкодження. Пошкодження збільшується залежно від сили атаки.\n  1 прийом: {2}-{3} пошкодження\n  2 прийоми: {4}-{5} пошкодження\n  3 прийоми: {6}-{7} пошкодження\n  4 прийоми: {8}-{9} пошкодження\n  5 прийомів: {10}-{11} пошкодження#{1} additional#1 point  : {2}-{3}#2 points: {4}-{5}#3 points: {6}-{7}#4 points: {8}-{9}#5 points: {10}-{11}" }, -- Ferocious Bite (Rank 1)
[22827] = { ref=22568 }, -- Ferocious Bite (Rank 2)
[22828] = { ref=22568 }, -- Ferocious Bite (Rank 3)
[22829] = { ref=22568 }, -- Ferocious Bite (Rank 4)
[31018] = { ref=22568 }, -- Ferocious Bite (Rank 5)

-- Ferocity
[16934] = { "Лютість", "Зменшує витрати ваших здібностей \"Терзання\", \"Розмах\", \"Дряпання\" та \"Полосування\" на {1} люті або енергії.#by {1}" }, -- Ferocity (Rank 1)
[16935] = { ref=16934 }, -- Ferocity (Rank 2)
[16936] = { ref=16934 }, -- Ferocity (Rank 3)
[16937] = { ref=16934 }, -- Ferocity (Rank 4)
[16938] = { ref=16934 }, -- Ferocity (Rank 5)

-- Forms
[1066] = { "Водна подоба", "Надає друїдові водної подоби, збільшує швидкість плавання на {1}% та дозволяє дихати під водою. Також захищає заклинача від ефектів поліморфу.\n\nПри активації, звільняє заклинача від ефектів поліморфу та ефектів перешкоди руху.#speed by {1}", "Невразливість до ефектів поліморфу. Збільшує швидкість плавання на {1}% та дозволяє дихати під водою.#speed by {1}" }, -- Aquatic Form
[5487] = { "Ведмежа подоба", "Перекинутися на ведмедя, збільшуючи силу атаки ближнього бою на {1}, броню від предметів на {2}% та здоров'я на {3}. Також захищає заклинача від ефектів поліморфу та дозволяє використання різних ведмежих здібностей.\n\nПри активації, звільняє заклинача від ефектів поліморфу та ефектів перешкоди руху.#power by {1}#items by {2}#health by {3}", "Невразливість до ефектів поліморфу. Збільшує силу атаки ближнього бою на {1}, броню від предметів на {2}% та здоров'я на {3}.#power by {1}#items by {2}#health by {3}" }, -- Bear Form
[768] = { "Котяча подоба", "Перекинутися на кота, збільшуючи силу атаки ближнього бою на {1} плюс показник спритності. Також захищає заклинача від ефектів поліморфу та дозволяє використання різних котячіх здібностей.\n\nПри активації, звільняє заклинача від ефектів поліморфу та ефектів перешкоди руху.#power by {1}", "Невразливість до ефектів поліморфу. Збільшує силу атаки ближнього бою на {1} плюc показник спритності.#power by {1}" }, -- Cat Form
[9634] = { "Подоба жахливого ведмедя", "Перекинутися на жахливого ведмедя, збільшуючи силу атаки ближнього бою на {1}, броню від предметів на {2}% та здоров'я на {3}. Також захищає заклинача від ефектів поліморфу та дозволяє використання різних ведмежих здібностей.\n\nПри активації, звільняє заклинача від ефектів поліморфу та ефектів перешкоди руху.#power by {1}#items by {2}#health by {3}", "Невразливість до ефектів поліморфу. Збільшує силу атаки ближнього бою на {1}, броню від предметів на {2}% та здоров'я на {3}.#power by {1}#items by {2}#health by {3}" }, -- Dire Bear Form
[24858] = { "Подоба місячного сованя", "Надає друїдові подоби місячного сованя, збільшуючи броню від предметів на {1}%. Також збільшує ймовірність критичного удару заклять учасників групи в радіусі {2} м на {3}%. У подобі місячного сованя можна використовувати лише закляттями гілки \"Баланс\".\n\nПри активації, звільняє заклинача від ефектів поліморфу та ефектів перешкоди руху.#items is increased by {1}#within {2} y#chance increased by {3}", "Невразливість до ефектів поліморфу. Броня від предметів збільшена {1}%.#by {1}" }, -- Moonkin Form
[783] = { "Мандрівна подоба", "Надає друїдові мандрівної подоби, збільшуючи швидкість руху на {1}%. Також захищає заклинача від ефектів поліморфу. Можна використовувати лише просто неба.\n\nПри активації, звільняє заклинача від ефектів поліморфу та ефектів перешкоди руху.#speed by {1}", "Невразливість до ефектів поліморфу. Швидкість руху збільшена на {1}%.#by {1}" }, -- Travel Form
[24907] = { "Аура місячного сованя", nil, "Збільшує ймовірність критичного удару заклять на {1}%.#by {1}" }, -- Moonkin Aura (aura)

-- Frenzied Regeneration
[22842] = { "Шалене відновлення", "Перетворює до {1} люті щосекунди на здоров'я протягом {2} с. Кожна одиниця люті перетворюється на {3} здоров'я.#up to {1} rage#for {2} sec#into {3} health", "Перетворює лють на здоров'я." }, -- Frenzied Regeneration (Rank 1)
[22895] = { ref=22842 }, -- Frenzied Regeneration (Rank 2)
[22896] = { ref=22842 }, -- Frenzied Regeneration (Rank 3)

-- Furor
[17056] = { "Обурення", "Надає вам {1}% імовірності отримати {2} люті, коли ви набуваєте ведмежої подоби чи подоби жахливого ведмедя, або {3} енергії, коли ви набуваєте котячої подоби.#{1}% chance#{2} Rage#{3} Energy" }, -- Furor (Rank 1)
[17058] = { ref=17056 }, -- Furor (Rank 2)
[17059] = { ref=17056 }, -- Furor (Rank 3)
[17060] = { ref=17056 }, -- Furor (Rank 4)
[17061] = { ref=17056 }, -- Furor (Rank 5)

-- Gift of Nature
[17104] = { "Дар природи", "Підсилює ефект всіх цілющих заклять на {1}%.#by {1}" }, -- Gift of Nature (Rank 1)
[24943] = { ref=17104 }, -- Gift of Nature (Rank 2)
[24944] = { ref=17104 }, -- Gift of Nature (Rank 3)
[24945] = { ref=17104 }, -- Gift of Nature (Rank 4)
[24946] = { ref=17104 }, -- Gift of Nature (Rank 5)

-- Gift of the Wild
[21849] = { "Дар первісної природи", "Надає дар первісної природи групі цілі, збільшуючи броню на {1}, всі характеристики на {2} та всі види супротиву на {3} на {4} год.#armor by {1}#attributes by {2}#resistances by {3} for {4} h", "Збільшує броню на {1}, всі характеристики на {2} та всі види супротиву на {3}.#armor by {1}#attributes by {2}#resistances by {3}" }, -- Gift of the Wild (Rank 1)
[21850] = { ref=21849 }, -- Gift of the Wild (Rank 2)

-- Growl
[6795] = { "Рик", "Примушує ціль атакувати вас, але не діє, якщо ціль уже вас атакує." }, -- Growl

-- Healing Touch
[5185] = { "Цілющий дотик", "Лікує дружню ціль на значення від {1} до {2} здоров'я.#for {1} to {2}" }, -- Healing Touch (Rank 1)
[5186] = { ref=5185 }, -- Healing Touch (Rank 2)
[5187] = { ref=5185 }, -- Healing Touch (Rank 3)
[5188] = { ref=5185 }, -- Healing Touch (Rank 4)
[5189] = { ref=5185 }, -- Healing Touch (Rank 5)
[6778] = { ref=5185 }, -- Healing Touch (Rank 6)
[8903] = { ref=5185 }, -- Healing Touch (Rank 7)
[9758] = { ref=5185 }, -- Healing Touch (Rank 8)
[9888] = { ref=5185 }, -- Healing Touch (Rank 9)
[9889] = { ref=5185 }, -- Healing Touch (Rank 10)
[25297] = { ref=5185 }, -- Healing Touch (Rank 11)

-- Heart of the Wild
[17003] = { "Серце первісної природи", "Збільшує ваш інтелект на {1}%. Крім того, перебуваючи у ведмежій подобі або подобі жахливого ведмедя, ваша витривалість збільшується на {2}%, а у котячій подобі ваша сила збільшується на {3}%.#Intellect by {1}#Stamina is increased by {2}#Strength is increased by {3}" }, -- Heart of the Wild (Rank 1)
[17004] = { ref=17003 }, -- Heart of the Wild (Rank 2)
[17005] = { ref=17003 }, -- Heart of the Wild (Rank 3)
[17006] = { ref=17003 }, -- Heart of the Wild (Rank 4)
[24894] = { ref=17003 }, -- Heart of the Wild (Rank 5)

-- Hibernate
[2637] = { "Сплячка", "Змушує ворожу ціль спати до {1} сек. Будь-яке пошкодження розбудить ціль. Одночасно лише одна ціль може бути змушена впасти в сплячку. Діє лише на звірів і драконів.#up to {1} sec", "Приспано." }, -- Hibernate (Rank 1)
[18657] = { ref=2637 }, -- Hibernate (Rank 2)
[18658] = { ref=2637 }, -- Hibernate (Rank 3)

-- Hurricane
[16914] = { "Ураган", "Створює бурхливий шторм у вказаному місці, завдаючи {1} пошкодження природою ворогам щосекунди та збільшуючи час між атаками на {2}%. Триває {3} с. Друїд повинен підтримувати закляття.#causing {1}#by {2}%#Lasts {3} sec", "{1} пошкодження щосекунди та збільшення часу між атаками на {2}%.#{1} damage#by {2}" }, -- Hurricane (Rank 1)
[17401] = { ref=16914 }, -- Hurricane (Rank 2)
[17402] = { ref=16914 }, -- Hurricane (Rank 3)

-- Improved Enrage
[17079] = { "Покращена несамовитість", "Тепер здібність \"Несамовитість\" миттєво надає {1} люті.#generates {1}" }, -- Improved Enrage (Rank 1)
[17082] = { ref=17079 }, -- Improved Enrage (Rank 2)

-- Improved Entangling Roots
[16918] = { "Покращене опутуюче коріння", "Надає вам {1}% ймовірності уникнути переривання від пошкодження під час вимови закляття \"Опутуюче коріння\".#{1}% chance" }, -- Improved Entangling Roots (Rank 1)
[16919] = { ref=16918 }, -- Improved Entangling Roots (Rank 2)
[16920] = { ref=16918 }, -- Improved Entangling Roots (Rank 3)

-- Improved Healing Touch
[17069] = { "Покращений цілющий дотик", "Скорочує час вимови вашого закляття \"Цілющий дотик\" на {1} с.#by {1} sec" }, -- Improved Healing Touch (Rank 1)
[17070] = { ref=17069 }, -- Improved Healing Touch (Rank 2)
[17071] = { ref=17069 }, -- Improved Healing Touch (Rank 3)
[17072] = { ref=17069 }, -- Improved Healing Touch (Rank 4)
[17073] = { ref=17069 }, -- Improved Healing Touch (Rank 5)

-- Improved Mark of the Wild
[17050] = { "Покращений знак первісної природи", "Збільшує ефекти ваших заклять \"Знак первісної природи\" та \"Дар первісної природи\" на {1}%.#by {1}" }, -- Improved Mark of the Wild (Rank 1)
[17051] = { ref=17050 }, -- Improved Mark of the Wild (Rank 2)
[17053] = { ref=17050 }, -- Improved Mark of the Wild (Rank 3)
[17054] = { ref=17050 }, -- Improved Mark of the Wild (Rank 4)
[17055] = { ref=17050 }, -- Improved Mark of the Wild (Rank 5)

-- Improved Moonfire
[16821] = { "Покращений місячний вогонь", "Збільшує пошкодження і ймовірність критичного удару вашого закляття \"Місячний вогонь\" на {1}%.#by {1}" }, -- Improved Moonfire (Rank 1)
[16822] = { ref=16821 }, -- Improved Moonfire (Rank 2)
[16823] = { ref=16821 }, -- Improved Moonfire (Rank 3)
[16824] = { ref=16821 }, -- Improved Moonfire (Rank 4)
[16825] = { ref=16821 }, -- Improved Moonfire (Rank 5)

-- Improved Nature's Grasp
[17245] = { "Покращене схоплення природи", "Збільшує ймовірності вашого \"Схоплення природи\" обплутати ворога на {1}%.#by {1}" }, -- Improved Nature's Grasp (Rank 1)
[17247] = { ref=17245 }, -- Improved Nature's Grasp (Rank 2)
[17248] = { ref=17245 }, -- Improved Nature's Grasp (Rank 3)
[17249] = { ref=17245 }, -- Improved Nature's Grasp (Rank 4)

-- Improved Regrowth
[17074] = { "Покращене розростання", "Збільшує ймовірність критичного ефекту закляття \"Розростання\" на {1}%.#by {1}" }, -- Improved Regrowth (Rank 1)
[17075] = { ref=17074 }, -- Improved Regrowth (Rank 2)
[17076] = { ref=17074 }, -- Improved Regrowth (Rank 3)
[17077] = { ref=17074 }, -- Improved Regrowth (Rank 4)
[17078] = { ref=17074 }, -- Improved Regrowth (Rank 5)

-- Improved Rejuvenation
[17111] = { "Покращене відживлення", "Збільшує ефект від вашого \"Відживлення\" на {1}%.#by {1}" }, -- Improved Rejuvenation (Rank 1)
[17112] = { ref=17111 }, -- Improved Rejuvenation (Rank 2)
[17113] = { ref=17111 }, -- Improved Rejuvenation (Rank 3)

-- Improved Shred
[16966] = { "Покращене шматування", "Знижує вартість енергії вашого \"Шматування\" на {1}.#by {1}" }, -- Improved Shred (Rank 1)
[16968] = { ref=16966 }, -- Improved Shred (Rank 2)

-- Improved Starfire
[16850] = { "Покращений зоряний вогонь", "Зменшує час вимови закляття \"Зоряний вогонь\" на {1} с та надає йому {2}% ймовірності приголомшити ціль на {3} с.#Starfire by {1}#{2}% chance#for {3} sec" }, -- Improved Starfire (Rank 1)
[16923] = { ref=16850 }, -- Improved Starfire (Rank 2)
[16924] = { ref=16850 }, -- Improved Starfire (Rank 3)
[16925] = { ref=16850 }, -- Improved Starfire (Rank 4)
[16926] = { ref=16850 }, -- Improved Starfire (Rank 5)

-- Improved Thorns
[16836] = { "Покращені шипи", "Збільшує пошкодження від вашого закляття \"Шипи\" на {1}%.#by {1}" }, -- Improved Thorns (Rank 1)
[16839] = { ref=16836 }, -- Improved Thorns (Rank 2)
[16840] = { ref=16836 }, -- Improved Thorns (Rank 3)

-- Improved Tranquility
[17123] = { "Покращений спокій", "Зменшує загрозу від закляття \"Спокій\" на {1}%.#by {1}" }, -- Improved Tranquility (Rank 1)
[17124] = { ref=17123 }, -- Improved Tranquility (Rank 2)

-- Improved Wrath
[16814] = { "Покращений гнів", "Зменшує час вимови закляття \"Гнів\" на {1} с.#by {1} sec" }, -- Improved Wrath (Rank 1)
[16815] = { ref=16814 }, -- Improved Wrath (Rank 2)
[16816] = { ref=16814 }, -- Improved Wrath (Rank 3)
[16817] = { ref=16814 }, -- Improved Wrath (Rank 4)
[16818] = { ref=16814 }, -- Improved Wrath (Rank 5)

-- Innervate
[29166] = { "Осяяння", "Прискорює відновлення мани цілі на {1}% і дозволяє відновлення мани на {2}% під час вимови заклять. Триває {3} с.#by {1}% and allows {2}%#Lasts {3} sec", "Відновлення мани прискорено на {1}% та {2}% відновлення мани під час вимови заклять.#increased by {1}#{2}% Mana" }, -- Innervate

-- Insect Swarm
[5570] = { "Рій комах", "Ворожу ціль оточують комахи, що зменшує ймовірність влучити на {1}% і завдає {2} пошкоджень природою протягом {3} с.#hit by {1}#causing {2}#over {3} sec", "Ймовірність влучити зменшено на {1}% та {2} пошкодження природою кожні {3} с.#by {1}% and {2}#every {3} sec" }, -- Insect Swarm (Rank 1)
[24974] = { ref=5570 }, -- Insect Swarm (Rank 2)
[24975] = { ref=5570 }, -- Insect Swarm (Rank 3)
[24976] = { ref=5570 }, -- Insect Swarm (Rank 4)
[24977] = { ref=5570 }, -- Insect Swarm (Rank 5)

-- Leader of the Pack
[17007] = { "Вожак зграї", "Перебуваючи у котячій, ведмежій або подобі жахливого ведмедя, \"Вожак зграї\" збільшує ймовірність критичного удару ближнього і дальнього бою всіх учасників групи в межах {1} м на {2}%.#within {1} y#by {2}" }, -- Leader of the Pack
[24932] = { "Вожак зграї", nil, "Збільшує ймовірність критичного удару ближнього і дальнього бою на {1}%.#by {1}" }, -- Leader of the Pack (aura)

-- Mark of the Wild
[1126] = { "Знак первісної природи", "Збільшує броню дружньої цілі на {1} на {2} хв.#armor by {1} for {2} min", "Збільшує броню на {1}.#armor by {1}" }, -- Mark of the Wild (Rank 1)
[5232] = { "Знак первісної природи", "Збільшує броню дружньої цілі на {1} та всі характеристики на {2} на {3} хв.#armor by {1} and all attributes by {2} for {3} min", "Збільшує броню на {1} та всі характеристики на {2}.#armor by {1}#attributes by {2}" }, -- Mark of the Wild (Rank 2)
[6756] = { ref=5232 }, -- Mark of the Wild (Rank 3)
[5234] = { "Знак первісної природи", "Збільшує броню дружньої цілі на {1}, всі характеристики на {2} та всі види супротиву на {3} на {4} хв.#armor by {1}#attributes by {2}#resistances by {3} for {4} min", "Збільшує броню на {1}, всі характеристики на {2} та всі види супротиву на {3}.#armor by {1}#attributes by {2}#resistances by {3}" }, -- Mark of the Wild (Rank 4)
[8907] = { ref=5234 }, -- Mark of the Wild (Rank 5)
[9884] = { ref=5234 }, -- Mark of the Wild (Rank 6)
[9885] = { ref=5234 }, -- Mark of the Wild (Rank 7)

-- Maul
[6807] = { "Терзання", "Збільшує наступну атаку друїда на {1} пошкодження.#by {1}" }, -- Maul (Rank 1)
[6808] = { ref=6807 },
[6809] = { ref=6807 },
[8972] = { ref=6807 },
[9745] = { ref=6807 },
[9880] = { ref=6807 },
[9881] = { ref=6807 },

-- Moonfire
[8921] = { "Місячний вогонь", "Обпалює ворога на значення від {1} до {2} пошкодження арканою та ще на додаткові {3} пошкодження арканою протягом {4} с.#for {1} to {2}#additional {3}#over {4} sec", "{1} пошкодження арканою кожні {2} с.#{1} Arcane damage every {2} sec" }, -- Moonfire (Rank 1)
[8924] = { ref=8921 }, -- Moonfire (Rank 2)
[8925] = { ref=8921 }, -- Moonfire (Rank 3)
[8926] = { ref=8921 }, -- Moonfire (Rank 4)
[8927] = { ref=8921 }, -- Moonfire (Rank 5)
[8928] = { ref=8921 }, -- Moonfire (Rank 6)
[8929] = { ref=8921 }, -- Moonfire (Rank 7)
[9833] = { ref=8921 }, -- Moonfire (Rank 9)
[9834] = { ref=8921 }, -- Moonfire (Rank 10)
[9835] = { ref=8921 }, -- Moonfire (Rank 11)

-- Moonfury
[16896] = { "Місячна лють", "Збільшує пошкодження від ваших заклять \"Зоряний вогонь\", \"Місячний вогонь\" та \"Гнів\" на {1}%.#by {1}" }, -- Moonfury (Rank 1)
[16897] = { ref=16896 }, -- Moonfury (Rank 2)
[16899] = { ref=16896 }, -- Moonfury (Rank 3)
[16900] = { ref=16896 }, -- Moonfury (Rank 4)
[16901] = { ref=16896 }, -- Moonfury (Rank 5)

-- Moonglow
[16845] = { "Місячне сяйво", "Знижує витрати мани на закляття \"Місячний вогонь\", \"Зоряний вогонь\", \"Гнів\", \"Цілющий дотик\", \"Розростання\" і \"Відживлення\" на {1}%.#by {1}" }, -- Moonglow (Rank 1)
[16846] = { ref=16845 }, -- Moonglow (Rank 2)
[16847] = { ref=16845 }, -- Moonglow (Rank 3)

-- Natural Shapeshifter
[16833] = { "Природжений перевертень", "Знижує вартість мани всіх змін подоби на {1}%.#by {1}" }, -- Natural Shapeshifter (Rank 1)
[16834] = { ref=16833 }, -- Natural Shapeshifter (Rank 2)
[16835] = { ref=16833 }, -- Natural Shapeshifter (Rank 3)

-- Natural Weapons
[16902] = { "Зброя природи", "Збільшує пошкодження, що ви завдаєте фізичними атаками у всіх подобах, на {1}%.#by {1}" }, -- Natural Weapons (Rank 1)
[16903] = { ref=16902 }, -- Natural Weapons (Rank 2)
[16904] = { ref=16902 }, -- Natural Weapons (Rank 3)
[16905] = { ref=16902 }, -- Natural Weapons (Rank 4)
[16906] = { ref=16902 }, -- Natural Weapons (Rank 5)

-- Nature's Focus
[17063] = { "Природне зосередження", "Надає {1}% імовірності уникнути переривання від пошкодження при вимові заклять \"Цілющий дотик\", \"Розростання\" та \"Спокій\".#{1}% chance" }, -- Nature's Focus (Rank 1)
[17065] = { ref=17063 }, -- Nature's Focus (Rank 2)
[17066] = { ref=17063 }, -- Nature's Focus (Rank 3)
[17067] = { ref=17063 }, -- Nature's Focus (Rank 4)
[17068] = { ref=17063 }, -- Nature's Focus (Rank 5)

-- Nature's Grace
[16880] = { "Природна благодать", "Усі критичні удари від заклять дарують вам благословення природи, скорочуючи час вимови вашого наступного закляття на {1} с.#by {1} sec" }, -- Nature's Grace
[16886] = { "Природна благодать", nil, "Час вимови вашого наступного закляття скорочено на {1} с.#by {1} sec" }, -- Nature's Grace (aura)

-- Nature's Grasp
[16689] = { "Схоплення природи", "Під час дії закляття кожен раз, коли противник завдає удару заклиначеві, з ймовірністю {1}% його вразить закляття \"Опутуюче коріння\" (Ранг {2}). Можна використовувати тільки просто неба. {3} заряд. Триває {4} с.#{1}% chance#(Rank {2})#{3} charge#Lasts {4} sec", "При отриманні пошкодження в ближньому бою, існує ймовірність обплутати ворога." }, -- Nature's Grasp (Rank 1)
[16810] = { ref=16689 }, -- Nature's Grasp (Rank 2)
[16811] = { ref=16689 }, -- Nature's Grasp (Rank 3)
[16812] = { ref=16689 }, -- Nature's Grasp (Rank 4)
[16813] = { ref=16689 }, -- Nature's Grasp (Rank 5)
[17329] = { ref=16689 }, -- Nature's Grasp (Rank 6)
[19975] = { ref=339 }, -- Entangling Roots (aura, Nature's Grasp (Rank 1))
[19974] = { ref=339 }, -- Entangling Roots (aura, Nature's Grasp (Rank 2))
[19973] = { ref=339 }, -- Entangling Roots (aura, Nature's Grasp (Rank 3))
[19972] = { ref=339 }, -- Entangling Roots (aura, Nature's Grasp (Rank 4))
[19971] = { ref=339 }, -- Entangling Roots (aura, Nature's Grasp (Rank 5))
[19970] = { ref=339 }, -- Entangling Roots (aura, Nature's Grasp (Rank 6))

-- Nature's Reach
[16819] = { "Досяжність природи", "Збільшує дальність дії заклять \"Гнів\", \"Опутуюче коріння\", \"Чарівний вогонь\", \"Місячний вогонь\", \"Зоряний вогонь\" та \"Ураган\" на {1}%.#by {1}" }, -- Nature's Reach (Rank 1)
[16820] = { ref=16819 }, -- Nature's Reach (Rank 2)

-- Nature's Swiftness
[17116] = { "Стрімкість природи", "При активації, ваше наступне закляття природи буде миттєвим.", "Ваше наступне закляття природи буде миттєвим." }, -- Nature's Swiftness

-- Omen of Clarity
[16864] = { "Передвістя ясності", "Насичує друїда природною енергією. Кожна атака ближнього бою друїда має ймовірність наділити його ефектом \"Ясномови\", який знижує витрати мани, енергії або люті на наступне ваше атакуюче чи цілюще закляття чи здібність на {1}%. Триває {2} хв.#by {1}#Lasts {2} min", "Кожна атака ближнього бою має ймовірність наділити заклинача ефектом \"Ясномови\"." }, -- Omen of Clarity
[16870] = { "Ясномова", nil, "Ваше наступне атакуюче чи цілюще закляття чи здібність має знижену вартість мани, люті або енергії на {1}%.#by {1}" }, -- Clearcasting (aura)

-- Pounce
[9005] = { "Стрибок", "Враз стрибнути, приголомшити ціль на {1} с та завдайта {2} пошкодження протягом {3} с. Потрібно зачаїтися та перебувати позаду цілі. Збільшує довжину комбінації на {4} прийом.#for {1} sec#causing {2} damage over {3} sec#{4} combo", "Приголомшено." }, -- Pounce (Rank 1)
[9823] = { ref=9005 }, -- Pounce (Rank 2)
[9827] = { ref=9005 }, -- Pounce (Rank 3)

-- Predatory Strikes
[16972] = { "Удари хижака", "Збільшує силу атаки ближнього бою у котячій, ведмежій та подобі жахливого ведмедя на {1}% від вашого рівня.#by {1}" }, -- Predatory Strikes (Rank 1)
[16974] = { ref=16972 }, -- Predatory Strikes (Rank 2)
[16975] = { ref=16972 }, -- Predatory Strikes (Rank 3)

-- Primal Fury
[16958] = { "Первинна лють", "Надає вам {1}% ймовірності отримати додаткові {2} люті, коли ви отримуєте критичний удар, перебуваючи у ведмежій подобі чи подобі жахливого ведмедя.#{1}% chance#additional {2} Rage" }, -- Primal Fury (Rank 1)
[16961] = { ref=16958 }, -- Primal Fury (Rank 2)

-- Prowl
[5215] = { "Зачаїтися", "Дозволяє друїду зачаївшись крастися, але знижує швидкість руху на {1}%. Триває до скасування.#speed by {1}", "Непомітний. Рух сповільнено на {1}%.#slowed by {1}" }, -- Prowl (Rank 1)
[6783] = { ref=5215 }, -- Prowl (Rank 2)
[9913] = { ref=5215 }, -- Prowl (Rank 3)

-- Rake
[1822] = { "Полосування", "Дере ціль, завдаючи {1} пошкодження та додатково {2} пошкодження протягом {3} с. Збільшує довжину комбінації на {4} прийом.#for {1} damage and an additional {2} damage over {3} sec#{4} combo", "{1} пошкодження від кровотечі кожні {2} с.#for {1} damage every {2} sec" }, -- Rake (Rank 1)
[1823] = { ref=1822 }, -- Rake (Rank 2)
[1824] = { ref=1822 }, -- Rake (Rank 3)
[9904] = { ref=1822 }, -- Rake (Rank 4)

-- Ravage
[6785] = { "Знищення", "Нищить ціль, завдаючи {1}% пошкодження плюс {2}. Друїд повинен крастися і перебувати позаду цілі. Збільшує довжину комбінації на {3} прийом.#causing {1}#plus {2}#{3} combo" }, -- Ravage (Rank 1)
[6787] = { ref=6785 }, -- Ravage (Rank 2)
[9866] = { ref=6785 }, -- Ravage (Rank 3)
[9867] = { ref=6785 }, -- Ravage (Rank 4)

-- Rebirth
[20484] = { "Відродження", "Повертає дух до тіла, відроджуючи ціль із {1} здоров'я і {2} мани.#{1} health and {2} mana" }, -- Rebirth (Rank 1)
[20739] = { ref=20484 }, -- Rebirth (Rank 2)
[20742] = { ref=20484 }, -- Rebirth (Rank 3)
[20747] = { ref=20484 }, -- Rebirth (Rank 4)
[20748] = { ref=20484 }, -- Rebirth (Rank 5)

-- Reflection
[17106] = { "Роздуми", "Дозволяє {1}% відновлення мани продовжуватися під час вимови заклять.#{1}% of your Mana" }, -- Reflection (Rank 1)
[17107] = { ref=17106 }, -- Reflection (Rank 2)
[17108] = { ref=17106 }, -- Reflection (Rank 3)

-- Regrowth
[8936] = { "Розростання", "Зцілює дружню ціль на значення від {1} до {2} здоров'я і ще на {3} здоров'я протягом {4} c.#for {1} to {2}#{3} over {4} sec", "Зцілює на {1} здоров'я кожні {2} с.#{1} every {2} sec" }, -- Regrowth (Rank 1)
[8938] = { ref=8936 }, -- Regrowth (Rank 2)
[8939] = { ref=8936 }, -- Regrowth (Rank 3)
[8940] = { ref=8936 }, -- Regrowth (Rank 4)
[8941] = { ref=8936 }, -- Regrowth (Rank 5)
[9750] = { ref=8936 }, -- Regrowth (Rank 6)
[9856] = { ref=8936 }, -- Regrowth (Rank 7)
[9857] = { ref=8936 }, -- Regrowth (Rank 8)
[9858] = { ref=8936 }, -- Regrowth (Rank 9)

-- Rejuvenation
[774] = { "Відживлення", "Лікує ціль на {1} здоров'я протягом {2} с.#for {1} over {2} sec", "Лікує {1} пошкодження кожні {2} с.#{1} damage every {2} sec" }, -- Rejuvenation (Rank 1)
[1058] = { ref=774 }, -- Rejuvenation (Rank 2)
[1430] = { ref=774 }, -- Rejuvenation (Rank 3)
[2090] = { ref=774 }, -- Rejuvenation (Rank 4)
[2091] = { ref=774 }, -- Rejuvenation (Rank 5)
[3627] = { ref=774 }, -- Rejuvenation (Rank 6)
[8910] = { ref=774 }, -- Rejuvenation (Rank 7)
[9839] = { ref=774 }, -- Rejuvenation (Rank 8)
[9840] = { ref=774 }, -- Rejuvenation (Rank 9)
[9841] = { ref=774 }, -- Rejuvenation (Rank 10)
[25299] = { ref=774 }, -- Rejuvenation (Rank 11)

-- Remove Curse
[2782] = { "Зняття прокляття", "Знімає {1} прокляття з дружньої цілі.#Dispels {1}" }, -- Remove Curse

-- Rip
[1079] = { "Розірвання", "Завершальний прийом, що завдає пошкодження протягом деякого часу. Пошкодження збільшується залежно від довжини комбінації та сили атаки:\n  1 прийом: {1} пошкодження за {2} c\n  2 прийоми: {3} пошкодження за {4} c\n  3 прийоми: {5} пошкодження за {6} c\n  4 прийоми: {7} пошкодження за {8} c\n  5 прийомів: {9} пошкодження за {10} c#1 point  : {1} damage over {2} sec#2 points: {3} damage over {4} sec#3 points: {5} damage over {6} sec#4 points: {7} damage over {8} sec#5 points: {9} damage over {10} sec", "Пошкодження від кровотечі кожні {1} с.#every {1} sec" }, -- Rip (Rank 1)
[9492] = { ref=1079 }, -- Rip (Rank 2)
[9493] = { ref=1079 }, -- Rip (Rank 3)
[9752] = { ref=1079 }, -- Rip (Rank 4)
[9894] = { ref=1079 }, -- Rip (Rank 5)
[9896] = { ref=1079 }, -- Rip (Rank 6)

-- Savage Fury
[16998] = { "Дика лють", "Збільшує пошкодження від ваших здібностей \"Дряпання\", \"Полосування\", \"Терзання\" та \"Розмах\" на {1}%.#by {1}" }, -- Savage Fury (Rank 1)
[16999] = { ref=16998 }, -- Savage Fury (Rank 2)

-- Sharpened Claws
[16942] = { "Загострені кігті", "Підвищує ймовірність критичного удару під час перебування у котячій, ведмежій чи подобі жахливого ведмедя на {1}%.#by {1}" }, -- Sharpened Claws (Rank 1)
[16943] = { ref=16942 }, -- Sharpened Claws (Rank 2)
[16944] = { ref=16942 }, -- Sharpened Claws (Rank 3)

-- Shred
[5221] = { "Шматування", "Шматує ціль, завдаючи {1}% пошкодження плюс {2}. Необхідно бути позаду цілі. Збільшує довжину комбінації на {3} прийом.#causing {1}#plus {2}#{3} combo" }, -- Shred (Rank 1)
[6800] = { ref=5221 }, -- Shred (Rank 2)
[8992] = { ref=5221 }, -- Shred (Rank 3)
[9829] = { ref=5221 }, -- Shred (Rank 4)
[9830] = { ref=5221 }, -- Shred (Rank 5)

-- Soothe Animal
[2908] = { "Вгамування звіра", "Вгамовує обраного звіра, зменшуючи відстань, на якій він буде атакувати вас, на {1} м. Діє лише на звірів рівня {2} або нижче. Триває {3} с.#by {1} y#level {2} or lower#Lasts {3} sec", "Зменшено відстань, на якій ціль буде атакувати вас." }, -- Soothe Animal (Rank 1)
[8955] = { ref=2908 }, -- Soothe Animal (Rank 2)
[9901] = { ref=2908 }, -- Soothe Animal (Rank 3)

-- Starfire
[2912] = { "Зоряний вогонь", "Завдає цілі від {1} до {2} пошкодження арканою.#Causes {1} to {2}" }, -- Starfire (Rank 1)
[8949] = { ref=2912 }, -- Starfire (Rank 2)
[8950] = { ref=2912 }, -- Starfire (Rank 3)
[8951] = { ref=2912 }, -- Starfire (Rank 4)
[9875] = { ref=2912 }, -- Starfire (Rank 5)
[9876] = { ref=2912 }, -- Starfire (Rank 6)
[25298] = { ref=2912 }, -- Starfire (Rank 7)

-- Subtlety
[17118] = { "Вправність", "Зменшує загрозу від ваших заклять зцілення на {1}%.#by {1}" }, -- Subtlety (Rank 1)
[17119] = { ref=17118 }, -- Subtlety (Rank 2)
[17120] = { ref=17118 }, -- Subtlety (Rank 3)
[17121] = { ref=17118 }, -- Subtlety (Rank 4)
[17122] = { ref=17118 }, -- Subtlety (Rank 5)

-- Swiftmend
[18562] = { "Негайне відновлення", "Поглинає ефект \"Відживлення\" чи \"Розростання\" з дружньої цілі та миттєво зцілює її на значення рівне дії \"Відживлення\" впродовж {1} с або \"Розростання\" впродовж {2} с.#equal to {1} sec#or {2} sec" }, -- Swiftmend

-- Swipe
[779] = { "Розмах", "Розлого б'є {1} ворогів поблизу, завдає {2} пошкодження.#{1} nearby#{2} damage" }, -- Swipe (Rank 1)
[780] = { ref=779 }, -- Swipe (Rank 2)
[769] = { ref=779 }, -- Swipe (Rank 3)
[9754] = { ref=779 }, -- Swipe (Rank 4)
[9908] = { ref=779 }, -- Swipe (Rank 5)

-- Teleport: Moonglade
[18960] = { "Телепортація: Місячна галявина", "Телепортує заклинача до Місячної галявини." }, -- Teleport: Moonglade

-- Thick Hide
[16929] = { "Товста шкіра", "Збільшує вашу броню з предметів на {1}%.#items by {1}" }, -- Thick Hide (Rank 1)
[16930] = { ref=16929 }, -- Thick Hide (Rank 2)
[16931] = { ref=16929 }, -- Thick Hide (Rank 3)
[16932] = { ref=16929 }, -- Thick Hide (Rank 4)
[16933] = { ref=16929 }, -- Thick Hide (Rank 5)

-- Thorns
[467] = { "Шипи", "Шипи проростають із дружньої цілі, завдаючи {1} пошкодження природою всім нападникам при ударі. Триває {2} хв.#causing {1}#Lasts {2} min", "Завдає {1} пошкодження природою нападникам.#Causes {1}" }, -- Thorns (Rank 1)
[782] = { ref=467 }, -- Thorns (Rank 2)
[1075] = { ref=467 }, -- Thorns (Rank 3)
[8914] = { ref=467 }, -- Thorns (Rank 4)
[9756] = { ref=467 }, -- Thorns (Rank 5)
[9910] = { ref=467 }, -- Thorns (Rank 6)

-- Tiger's Fury
[5217] = { "Лють тигра", "Збільшує завдане пошкодження на {1} протягом {2} с.#by {1} for {2} sec", "Збільшує завдане пошкодження на {1}.#by {1}" }, -- Tiger's Fury (Rank 1)
[6793] = { ref=5217 }, -- Tiger's Fury (Rank 2)
[9845] = { ref=5217 }, -- Tiger's Fury (Rank 3)
[9846] = { ref=5217 }, -- Tiger's Fury (Rank 4)

-- Track Humanoids
[5225] = { "Вистежування гуманоїдів", "Показує на мінікарті місце перебування гуманоїдів поблизу. Одночасно можна відстежувати лише щось одне.", "Відстеження гуманоїдів." }, -- Track Humanoids

-- Tranquil Spirit
[24968] = { "Спокійний дух", "Знижує витрати мани на ваші закляття \"Цілющий дотик\" і \"Спокій\" на {1}%.#by {1}" }, -- Tranquil Spirit (Rank 1)
[24969] = { ref=24968 }, -- Tranquil Spirit (Rank 2)
[24970] = { ref=24968 }, -- Tranquil Spirit (Rank 3)
[24971] = { ref=24968 }, -- Tranquil Spirit (Rank 4)
[24972] = { ref=24968 }, -- Tranquil Spirit (Rank 5)

-- Tranquility
[740] = { "Спокій", "Відновлює здоров'я всіх членів групи поблизу на {1} кожні {2} с протягом {3} с. Друїд повинен підтримувати закляття.#for {1} every {2} seconds for {3} sec", "Зцілює членів групи поблизу на {1} кожні {2} с.#for {1} every {2} sec" }, -- Tranquility (Rank 1)
[8918] = { ref=740 }, -- Tranquility (Rank 2)
[9862] = { ref=740 }, -- Tranquility (Rank 3)
[9863] = { ref=740 }, -- Tranquility (Rank 4)

-- Vengeance
[16909] = { "Помста", "Збільшує додаткове пошкодження від критичного удару закляттями \"Зоряний вогонь\", \"Місячний вогонь\" та \"Гнів\" на {1}%.#by {1}" }, -- Vengeance (Rank 1)
[16910] = { ref=16909 }, -- Vengeance (Rank 2)
[16911] = { ref=16909 }, -- Vengeance (Rank 3)
[16912] = { ref=16909 }, -- Vengeance (Rank 4)
[16913] = { ref=16909 }, -- Vengeance (Rank 5)

-- Wrath
[5176] = { "Гнів", "Завдає цілі від {1} до {2} пошкодження природою.#Causes {1} to {2}" }, -- Wrath (Rank 1)
[5177] = { ref=5176 }, -- Wrath (Rank 2)
[5178] = { ref=5176 }, -- Wrath (Rank 3)
[5179] = { ref=5176 }, -- Wrath (Rank 4)
[5180] = { ref=5176 }, -- Wrath (Rank 5)
[6780] = { ref=5176 }, -- Wrath (Rank 6)
[8905] = { ref=5176 }, -- Wrath (Rank 7)
[9912] = { ref=5176 }, -- Wrath (Rank 8)

}

-- for k, v in pairs(druid_spells) do addonTable.spell[k] = v end

-- !! DEBUG
for k, v in pairs(druid_spells) do
    if type(v[1]) == "string" then
        v[1] = v[1] .. " // DRUID"
    end
    if v.ref then
        if v.ref == k then
            print("[!] SPELL #" .. k .. " REFERENCING ITSELF")
        else
            local r = druid_spells[v.ref] or addonTable.spell[v.ref]
            if not r then
                print("[!] SPELL #" .. k .. " REFERENCING UNKNOWN SPELL #" .. v.ref)
            elseif r.ref then
                print("[!] SPELL #" .. k .. " REFERENCING REF SPELL #" .. v.ref)
            end
        end
    end
    if addonTable.spell[k] then
        print("[!] REPLACING SPELL #" .. k)
    end
    addonTable.spell[k] = v
end
