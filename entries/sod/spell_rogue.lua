local _, addonTable = ...

local rogue_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Between the Eyes
[400009] = { "Поміж очей", "Дистанційний завершальний рух, що завдає шкоду в залежності від довжини комбінації та сили атаки, а також приголомшує ціль:\n\n  1 прийом:   {1}-{2} шкоди, 1 с приголомшення\n  2 прийоми: {3}-{4} шкоди, 2 с приголомшення\n  3 прийоми: {5}-{6} шкоди, 3 с приголомшення\n  4 прийоми: {7}-{8} шкоди, 4 с приголомшення\n  5 прийомів: {9}-{10} шкоди, 5 с приголомшення\n\nМає спільний час відновлення з \"Ударом по нирках\".#1 point:   {1} to {2} damage#2 points: {3} to {4} damage#3 points: {5} to {6} damage#4 points: {7} to {8} damage#5 points: {9} to {10} damage", "Приголомшено." }, -- Between the Eyes
[400033] = { "Поміж очей", "Отримати здібність \"Поміж очей\":", nil, rune=400009 }, -- Between the Eyes

-- Blade Dance
[400012] = { "Танок клинків", "Завершальний рух, що збільшує ймовірність парирування на {1}%. Тривалість ефекту залежить від довжини комбінації:\n\n  1 прийом:   {2} с\n  2 прийоми: {3} с\n  3 прийоми: {4} с\n  4 прийоми: {5} с\n  5 прийомів: {6} с#chance by {1}%#1 point  : {2} seconds#2 points: {3} seconds#3 points: {4} seconds#4 points: {5} seconds#5 points: {6} seconds", "Ймовірність парирування збільшено на {1}%.\nОтриману фізичну шкоду зменшено на {2}%.#increased by {1}%#reduced by {2}%" }, -- Blade Dance
[400038] = { "Танок клинків", "Отримати здібність \"Танок клинків\":", nil, rune=400012 }, -- Blade Dance

-- Cheating Death
[400024] = { "Обман смерті", "Будь-яка атака, яка в іншому випадку вбила б вас, натомість зменшить ваш запас здоров'я до 10% від максимального. Крім того, вся отримувана шкода буде зменшена на 90% протягом 3 секунд. Цей ефект може спрацьовувати не частіше, ніж раз на хвилину.", "Вся отримувана шкода зменшується на 90%." }, -- Cheating Death

-- Deadly Brew
[399965] = { "Смертельне вариво", "Додає кілька покращень для ваших отрут:\n\nКоли ви отруюєте ціль будь-якою іншою отрутою, ви також отруюєте її смертельною отрутою.\n\nЯкщо на вашу зброю не нанесено отруту, вона має шанс отруїти ціль миттєвою отрутою.\n\nСмертельна отрута і миттєва отрута тепер мають збільшену шкоду в залежності від вашої сили атаки.", nil }, -- Deadly Brew
[399969] = { "Смертельне вариво", "Отримати здібність \"Смертельне вариво\":", nil, rune=399965 }, -- Deadly Brew
[433521] = { "Смертельне вариво", "Додає кілька покращень для ваших отрут:\n\nКоли ви отруюєте ціль будь-якою іншою отрутою, ви також отруюєте її смертельною отрутою.\n\nЯкщо на вашу зброю не нанесено отруту, вона має шанс отруїти ціль миттєвою отрутою.\n\nСмертельна отрута і миттєва отрута тепер мають збільшену шкоду в залежності від вашої сили атаки.", nil }, -- Deadly Brew

-- Envenom
[399963] = { "Отруєння", "Завершальний рух, що завдає шкоду від отрути в залежності від кількості ефектів смертельної отрути на цілі. Після використання \"Отруєння\" ви маєте на 75% збільшений шанс спрацювання миттєвої отрути протягом 1 с і додатково ще протягом 1 с за кожен прийом в комбінації. Кожен прийом комбінації дорівнює одній дозі отрути:\n  1 доза: {1} шкоди\n  2 дози: {2} шкоди\n  3 дози: {3} шкоди\n  4 дози: {4} шкоди\n  5 доз: {5} шкоди#1 dose:  {1} damage#2 doses: {2} damage#3 doses: {3} damage#4 doses: {4} damage#5 doses: {5} damage", "Ймовірність спрацювання миттєвої отрути збільшено на 75%." }, -- Envenom
[399968] = { "Отруєння", "Отримати здібність \"Отруєння\":", nil, rune=399963 }, -- Envenom

-- Just a Flesh Wound
[400014] = { "Всього лише подряпина", "Ви отримуєте на 20% менше фізичної шкоди, поки активний \"Танок клинків\". Крім того, ймовірність нанести вам критичний удар в ближньому бою зменшується на 6%, загроза від усіх ваших дій значно збільшується, а ваша здібність \"Фінт\" замінюється на \"Дражнити\", яка підбурює ціль атакувати вас.", nil, rune=410412 }, -- Just a Flesh Wound
[400039] = { "Всього лише подряпина", "Отримати здібність \"Всього лише подряпина\":", nil, rune=400014 }, -- Just a Flesh Wound

-- Main Gauche
[424919] = { "Удар лівицею", "Миттєвий удар зброєю в лівій руці, що завдає шкоду від зброї і збільшує ймовірність парирування на 10% протягом 10 с.  Збільшує довжину комбінації на 3 прийоми.\n\n\"Удар лівицею\" взаємодіє з усіма талантами та ефектами, що й \"Зловісний удар\".", "Ймовірність парирування атак збільшено на {1}%.#by {1}%" }, -- Main Gauche
[424982] = { "Удар лівицею", "Отримати здібність \"Удар лівицею\":", nil, rune=424919 }, -- Main Gauche

-- Master of Subtlety
[425096] = { "Майстер непомітності", "Атаки, здійснені з непомітності та протягом {1} секунд після виходу з неї, завдають на {2}% більше шкоди.#for {1} seconds#additional {2}% damage", nil }, -- Master of Subtlety
[425101] = { "Майстер непомітності", "Отримати здібність \"Майстер непомітності\":", nil, rune=425096 }, -- Master of Subtlety

-- Mutilate
[399956] = { "Скалічити", "Миттєва атака зброєю в обох руках, що завдає 100% шкоди від зброї і додатково {1} шкоди від кожної зброї. Завдає на 20% більше шкоди отруєним цілям. Збільшує довжину комбінації на 2 прийоми.\n\n\"Скалічити\" взаємодіє з усіма талантами та ефектами, що й \"Удар у спину\", крім окремо зазначених випадків.#additional {1} with each", nil }, -- Mutilate
[399960] = { "Скалічити", "Миттєва атака зброєю в обох руках, що завдає 100% шкоди від зброї і додатково {1} шкоди від кожної зброї. Завдає на 20% більше шкоди отруєним цілям. Збільшує довжину комбінації на 2 прийоми.#additional {1} with each", nil }, -- Mutilate
[399961] = { ref=399960 }, -- Mutilate
[399962] = { "Скалічити", "Отримати здібність \"Скалічити\":", nil, rune=399956 }, -- Mutilate

-- Poisoned Knife
[425012] = { "Отруєний ніж", "Кидок зброї з лівої руки, що завдає шкоди від зброї та викликає спрацювання нанесеної на неї отрути. Збільшує довжину комбінації на 1 прийом.\n\n\"Отруєний ніж\" взаємодіє з усіма талантами та ефектами, що й \"Зловісний удар\".", nil }, -- Poisoned Knife
[425013] = { ref=425012 }, -- Poisoned Knife
[425100] = { "Отруєний ніж", "Отримати здібність \"Отруєний ніж\":", nil, rune=425012 }, -- Poisoned Knife

-- Quick Draw
[398196] = { "Швидкий постріл", "Витягти зброю дальнього бою та зробити швидкий постріл у ворога, завдаючи йому шкоду від зброї і зменшуючи швидкість руху цілі на 50% протягом 6 секунд. Збільшує довжину комбінації на 1 прийом.\n\n\"Швидкий постріл\" взаємодіє з усіма талантами та ефектами, що й \"Зловісний удар\".", "Швидкість руху зменшено на 50%." }, -- Quick Draw
[398197] = { "Швидкий постріл", "Отримати здібність \"Швидкий постріл\":", nil, rune=398196 }, -- Quick Draw

-- Redirect
[438040] = { "Перенаправлення", "Знімає всі комбінацію прийомів з цілі та зберігає їх протягом {1} секунд. Ці збережені прийоми перейдуть на наступну ціль, яку ви вразите здібністю ближнього або дальнього бою. Не спрацьовує на інших гравцях.#up to {1} sec", "Комбінація прийомів перейде на наступну ціль здібності пройдисвіта." }, -- Redirect
[438045] = { "Перенаправлення", "Перенаправляє поточну комбінацію прийомів на ціль, що не є гравцем. Необхідно мати комбінацію прийомів.", nil }, -- Redirect

-- Rolling with the Punches
[400016] = { "Удар за ударом", "Щоразу, коли ви ухиляєтеся або парируєте, ваш запас здоров'я збільшується на {1}%. Ефект накопичується до {2} разів.#gain {1}% increased#up to {2} times", nil }, -- Rolling with the Punches
[400040] = { "Удар за ударом", "Отримати здібність \"Удар за ударом\":", nil, rune=400016 }, -- Rolling with the Punches

-- Saber Slash
[424785] = { "Удар шаблею", "Ви жорстоко рубаєте ворога, завдаючи {1}% шкоди від зброї, і викликаєте в нього кровотечу, що завдає {2} шкоди кожні {3} с протягом {4} секунд, і ефект якої накопичується до {5} разів. Збільшує довжину комбінації на 1 прийом.\n\n\"Удар шаблею\" взаємодіє з усіма талантами та ефектами, що й \"Зловісний удар\".#for {1}% weapon#bleed for {2} damage every {3} sec for {4}#up to {5} times", "Кровотеча завдає {1} шкоди кожні {2} с.#for {1} damage every {2} sec" }, -- Saber Slash
[424979] = { "Удар шаблею", "Отримати здібність \"Удар шаблею\":", nil, rune=424785 }, -- Saber Slash

-- Shadowstep
[400029] = { "Крок через тінь", "Крок через тінь, в результаті якого ви опиняєтеся за спиною цілі та збільшує свою швидкість руху на {1}% протягом {2} секунд.#speed by {1}% for {2} sec", nil }, -- Shadowstep
[400037] = { "Крок через тінь", "Отримати здібність \"Крок через тінь\":", nil, rune=400029 }, -- Shadowstep
[406722] = { "Крок через тінь", "Крок через тінь, в результаті якого ви опиняєтеся за спиною цілі та збільшує свою швидкість руху на {1}% протягом {2} секунд.#speed by {1}% for {2} sec", "Швидкість руху збільшено на {1}%.#increased by {1}%" }, -- Shadowstep
[406754] = { "Крок через тінь", nil, nil }, -- Shadowstep

-- Shadowstrike
[399985] = { "Тіньовий удар", "Телепортуватись за спину цілі й нанести удар, що завдає 150% шкоди від зброї. Необхідно бути непомітним. Збільшує довжину комбінації на 1 прийом.", nil }, -- Shadowstrike
[400031] = { "Тіньовий удар", "Отримати здібність \"Тіньовий удар\":", nil, rune=399985 }, -- Shadowstrike

-- Shiv
[5938] = { "Укол", "Миттєва атака зброєю в лівій руці, що гарантовано отруює ціль нанесеною на зброю отрутою. Повільна зброя вимагає більше витрат енергії. Ані \"Укол\", ані отрута, якою він отруює ціль, не можуть нанести критичний удар. Збільшує довжину комбінації на 1 прийом.", nil }, -- Shiv
[424799] = { "Укол", "Миттєва атака зброєю в лівій руці, що завдає шкоду від зброї та гарантовано отруює ціль нанесеною на зброю отрутою. Повільна зброя вимагає більше витрат енергії. Ані \"Укол\", ані отрута, якою він отруює ціль, не можуть нанести критичний удар. Збільшує довжину комбінації на 1 прийом.\n\n\"Укол\" взаємодіє з усіма талантами та ефектами, що й \"Зловісний удар\".", nil }, -- Shiv
[424800] = { "Укол", "Миттєва атака зброєю в лівій руці, що гарантовано отруює ціль нанесеною на зброю отрутою. Повільна зброя вимагає більше витрат енергії. Ані \"Укол\", ані отрута, якою він отруює ціль, не можуть нанести критичний удар. Збільшує довжину комбінації на 1 прийом.", nil }, -- Shiv
[424980] = { "Укол", "Отримати здібність \"Укол\":", nil, rune=424799 }, -- Shiv

-- Shuriken Toss
[399986] = { "Кидок сюрікена", "Кидок сюрікена у ворога, що завдає {1}% від вашої сили атаки, а також вражає до 4 цілей поблизу. Збільшує довжину комбінації на 1 прийом.#equal to {1}% of your", nil }, -- Shuriken Toss
[400032] = { "Кидок сюрікена", "Отримати здібність \"Кидок сюрікена\":", nil, rune=399986 }, -- Shuriken Toss

-- Slaughter from the Shadows
[424925] = { "Різанина з тіні", "Зменшує витрати енергії на ваші здібності «Удар у спину» та «Засідка» на 20.\n\nНе взаємодіє зі здібностями, отриманими з інших рун.", nil }, -- Slaughter from the Shadows
[424983] = { "Різанина з тіні", "Отримати здібність \"Різанина з тіні\":", nil, rune=424925 }, -- Slaughter from the Shadows

-- Storm of Swords
[398198] = { "Буря мечів", "Завершальний рух, що збільшує ймовірність парирування. Тривалість та сила ефекту залежить від довжини комбінації:\n  1 прийом:   {1} с, {2}% парирування\n  2 прийоми: {3} с, {4}% парирування\n  3 прийоми: {5} с, {6}% парирування\n  4 прийоми: {7} с, {8}% парирування\n  5 прийомів: {9} с, {10}% парирування#1 point  : {1} seconds, {2}% Parry#2 points: {3} seconds, {4}% Parry#3 points: {5} seconds, {6}% Parry#4 points: {7} seconds, {8}% Parry#5 points: {9} seconds, {10}% Parry", "Швидкість атаки збільшено на 10%." }, -- Storm of Swords

-- Tease
[410412] = { "Дражнити", "Підбурює ціль атакувати вас, але не діє, якщо ціль вже атакує вас.", nil }, -- Tease

-- Waylay
[408699] = { "Раптові удари", "Ваші здібності \"Засідка\" і \"Удар у спину\" виводять ціль з рівноваги, збільшуючи час між атаками ближнього бою на {1}% і зменшуючи швидкість руху на {2}% протягом {3} с.#attacks by {1}%#speed by {2}% for {3} sec", "Час між атаками ближнього бою збільшено на {1}%.\nШвидкість руху зменшено на {2}%.#increased by {1}%#reduced by {2}%" }, -- Waylay
[408700] = { ref=408699 }, -- Waylay
[415725] = { "Раптові удари", "Отримати здібність \"Раптові удари\":", nil, rune=408700 }, -- Waylay


-- Rune progression effects
[422598] = { "План втечі", nil, "Втече, щойно відчує небезпеку" }, -- Escape Plan
[435869] = { "Благословення Джані", nil, "Дає вам шанс знайти незвичайні предмети в кишенях тролів Тернистої долини." }, -- Jani's Blessing
[436103] = { "сажа", nil, "Вкритий сажею і пахне горілим. Не може отримати непомітність та невидимість." }, -- Sooty
[436104] = { "крихітна коробка", nil, "Вкритий сажею і пахне горілим. Не може отримати непомітність та невидимість." }, -- Tiny Strongbox

-- Engraving
[425102] = { "Гравіювання пояса - Отруєний ніж", "Вигравіювати на поясі руну \"Отруєний ніж\":", nil, rune=425012 }, -- Engrave Belt - Poisoned Knife
[400101] = { "Гравіювання пояса - Крок через тінь", "Вигравіювати на поясі руну \"Крок через тінь\":", nil, rune=400029 }, -- Engrave Belt - Shadowstep
[400096] = { "Гравіювання пояса - Кидок сюрікена", "Вигравіювати на поясі руну \"Кидок сюрікена\":", nil, rune=399986 }, -- Engrave Belt - Shuriken Toss
[425103] = { "Гравіювання чоботів - Майстер непомітності", "Вигравіювати на чоботях руну \"Майстер непомітності\":", nil, rune=425096 }, -- Engrave Boots - Master of Subtlety
[400093] = { "Гравіювання чоботів - Удар за ударом", "Вигравіювати на чоботях руну \"Удар за ударом\":", nil, rune=400016 }, -- Engrave Boots - Rolling with the Punches
[415926] = { "Гравіювання чоботів - Раптові удари", "Вигравіювати на чоботях руну \"Раптові удари\":", nil, rune=408700 }, -- Engrave Boots - Waylay
[400080] = { "Гравіювання нагрудника - Смертельне вариво", "Вигравіювати на нагруднику руну \"Смертельне вариво\":", nil, rune=399965 }, -- Engrave Chest - Deadly Brew
[400082] = { "Гравіювання нагрудника - Всього лише подряпина", "Вигравіювати на нагруднику руну \"Всього лише подряпина\":", nil, rune=400014 }, -- Engrave Chest - Just a Flesh Wound
[400095] = { "Гравіювання нагрудника - Швидкий постріл", "Вигравіювати на нагруднику руну \"Швидкий постріл\":", nil, rune=398196 }, -- Engrave Chest - Quick Draw
[424992] = { "Гравіювання нагрудника - Різанина з тіні", "Вигравіювати на нагруднику руну \"Різанина з тіні\":", nil, rune=424925 }, -- Engrave Chest - Slaughter from the Shadows
[424990] = { "Гравіювання рукавиць - Удар лівицею", "Вигравіювати на рукавицях руну \"Удар лівицею\":", nil, rune=424919 }, -- Engrave Gloves - Main Gauche
[400094] = { "Гравіювання рукавиць - Скалічити", "Вигравіювати на рукавицях руну \"Скалічити\":", nil, rune=399956 }, -- Engrave Gloves - Mutilate
[424984] = { "Гравіювання рукавиць - Удар шаблею", "Вигравіювати на рукавицях руну \"Удар шаблею\":", nil, rune=424785 }, -- Engrave Gloves - Saber Slash
[400105] = { "Гравіювання рукавиць - Тіньовий удар", "Вигравіювати на рукавицях руну \"Тіньовий удар\":", nil, rune=399985 }, -- Engrave Gloves - Shadowstrike
[424988] = { "Гравіювання рукавиць - Укол", "Вигравіювати на рукавицях руну \"Укол\":", nil, rune=424799 }, -- Engrave Gloves - Shiv
[400081] = { "Гравіювання штанів - Поміж очей", "Вигравіювати на штанях руну \"Поміж очей\":", nil, rune=400009 }, -- Engrave Pants - Between the Eyes
[400099] = { "Гравіювання штанів - Танок клинків", "Вигравіювати на штанях руну \"Танок клинків\":", nil, rune=400012 }, -- Engrave Pants - Blade Dance
[400102] = { "Гравіювання штанів - Отруєння", "Вигравіювати на штанях руну \"Отруєння\":", nil, rune=399963 }, -- Engrave Pants - Envenom

}

for k, v in pairs(rogue_spells) do addonTable.spell[k] = v end
