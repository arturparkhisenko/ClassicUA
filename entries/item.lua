local _, addonTable = ...
addonTable.item = { -- [id] = { title, description (optional) }
[159] = { "Освіжаюча джерельна вода", "Використання: Відновлює 151,2 мани протягом 18 сек. Потрібно залишатися в сидячому положенні під час пиття." },
[748] = { "Знак броні Штормовію" },
[772] = { "Велика свічка" },
[773] = { "Золотистий пилок" },
[780] = { "Відірваний плавник мурлока" },
[962] = { "Пиріг з беконом" },
[981] = { "Намисто Берніс" },
[1256] = { "Стебла Кришталевої водорості" },
[1382] = { "Кам'яна Булава" },
[1383] = { "Кам'яний Томагавк" },
[2032] = { "Наручники Ґаллана" },
[2070] = { "Дарнасський блю", "Використання: Відновлює 61,2 здоров'я протягом 18 сек. Потрібно залишатися в сидячому положенні під час їжі." },
[2137] = { "Ніж для Заточування" },
[2154] = { "Історія Моргана Ладимора" },
[2320] = { "Груба Нитка" },
[2592] = { "Рулон Вовни" },
[2722] = { "Винний Квиток" },
[2723] = { "Пляшка Даларанського Нуару", "Використання: Досить слабкий алкогольний напій." }, -- todo: fix for Classic: "Bottle of Pinot Noir"
[2828] = { "Рештки Нісси" },
[2829] = { "Рештки Ґреґора" },
[2830] = { "Рештки Турмана" },
[2831] = { "Рештки Девліна" },
[2833] = { "Фоліант Ліча" },
[2834] = { "Бальзамувальна Мазь" },
[2837] = { "Лист Турмана" },
[2843] = { "Брудні Суглоби" },
[2846] = { "Тіропадський Гарбуз" },
[2855] = { "Смердючий Пазур" },
[2858] = { "Кров Чорних Гончих" },
[2859] = { "Огидний плавник" },
[2872] = { "Отрута Злих Нічних Павуків" },
[2875] = { "Багряний Перстень-Відзнака" },
[2876] = { "Шкура Сутінкового Кажана" },
[3016] = { "Фоліант Ґюнтера" },
[3017] = { "Накази Севрена" },
[3035] = { "Смугастий Гарбуз" },
[3071] = { "Разюча сокира" },
[3079] = { "Рушниця Скорна" },
[3080] = { "Зваблива Свічка" },
[3081] = { "Пустий Самоцвіт" },
[3082] = { "Череп Дарґола" },
[3162] = { "Щерблене Ребро" },
[3163] = { "Почорнілий Череп" },
[3238] = { "Дослідження Йогана", "\"Запечатана знахідка Аптекаря Йогана.\"" },
[3382] = { "Слабке зілля з тролячої крові", "Використання: Регенерує 2 здоров'я кожні 5 секунд протягом 1 години." },
[3434] = { "Пісок дрімоти", "Використання: Укладає ворожу ціль спати до 20 сек. Після будь-якої заподіяної шкоди ціль прокинеться. Одночасно може приспати лише одну ціль. (відновлення 1 хв)" },
[3435] = { "Наручі із Плоті Зомбі" },
[3437] = { "Тиснений Ремінь" },
[3439] = { "Черевики з Плоті Зомбі" },
[3440] = { "Кістколом" },
[3442] = { "Пояс Учня" },
[3443] = { "Церемоніальний Томагавк" },
[3444] = { "Жилет Орача" },
[3445] = { "Церемоніальний ніж" },
[3446] = { "Посох з Темного Дерева" },
[3447] = { "Чоботи Могилоходця" },
[3460] = { "Особливий Напій Йогана" },
[3505] = { "Альтеракський Перстень з Печаткою" },
[3514] = { "Череп Мор'Ладима" },
[3518] = { "Розшифрований Лист" },
[3521] = { "Розумно Зашифрований Лист", "\"Цей лист зашифрований та нерозбірливий.\"" },
[3601] = { "Лист Синдикату" },
[3626] = { "Голова Барона Вардуса" },
[3635] = { "Лапа Ока Маґґота" },
[3668] = { "Контракт на Вбивство" },
[3672] = { "Голова Наґаза" },
[3703] = { "Південнобережне Міцне", "Використання: Звичайний алкогольний напій." },
[3706] = { "Заряджений Пергамент", "\"Його текст оповитий магією.\"" },
[3718] = { "Плани Подальших Дій" },
[3758] = { "Похідний Пояс" },
[3759] = { "Ізольовані Рукавички Мудреця" },
[3763] = { "Місячний щиток" },
[3833] = { "Накидка Адепта" },
[3834] = { "Міцні Полотняні Штани" },
[4306] = { "Шовкова тканина" },
[4338] = { "Магічна тканина" },
[4435] = { "Порошинки Мізраель" },
[4440] = { "Сигілла Строма" },
[4443] = { "Зловісні Наплічники" },
[4450] = { "Елемент Сигілли" },
[4453] = { "Сигілла Торадіна" },
[4458] = { "Сигілла Аратора" },
[4466] = { "Сигілла Тролеріза" },
[4467] = { "Сигілла Іґнеуса" },
[4468] = { "Трол'Калар в Піхвах", "\"Легендарний меч Іґнеуса Тролеріза.\"" },
[4469] = { "Cкіпетер Порядку" },
[4472] = { "Сувій Мізраель", "Використання: Прикликає Мізраель з осколків Мізраель" },
[4473] = { "Таємничі Наручі" },
[4483] = { "Палаючий Ключ" },
[4484] = { "Піковий Ключ" },
[4485] = { "Громовий Ключ" },
[4487] = { "Морська карта з \"Діви Фоллі\"" },
[4488] = { "Морська карта з \"Духу Срібнобірря\"" },
[4489] = { "Журнал \"Діви Фоллі\"" },
[4490] = { "Журнал \"Духу Срібнобірря\"" },
[4491] = { "Окуляри для Пошуку Скарбів", "При спорядженні: На міні-карті з'являються найближчі Ельфійські Самоцвіти." },
[4492] = { "Ельфійський Самоцвіт" },
[4493] = { "Ельфійські Самоцвіти" },
[4494] = { "Запечатаний Лист Морськорога" },
[4495] = { "Кривавокамінний Амулет" },
[4502] = { "Зразок Ельфійського Самоцвіту" },
[4503] = { "Бивень Сухошкіра" },
[4506] = { "Стромґардський Значок" },
[4507] = { "Щит Собаковода" },
[4508] = { "Просочена Кров'ю Броня" },
[4509] = { "Рукавиці Морського Вовка" },
[4510] = { "Мерзенна Кривавокамінна Сфера" },
[4511] = { "Темноводний Молот" },
[4512] = { "Око Плоскогірного Ящера" },
[4513] = { "Серце Ящера" },
[4515] = { "Голова Мареза" },
[4516] = { "Голова Отто" },
[4517] = { "Голова Соколохресного" },
[4522] = { "Сухошкіра упоковка із травами" },
[4525] = { "Паличка Трелейна для Виклику" },
[4526] = { "Амулет із Пазура Ящера" },
[4527] = { "Лазурний Агат" },
[4528] = { "Сфера Тор'ґана" },
[4529] = { "Зачарований Аґат", "Використання: Активує захист вежі Трелейна." },
[4530] = { "Філактерія Трелейна" },
[4531] = { "Сфера Трелейна" },
[4532] = { "Червоний Аґат Трелейна" },
[4533] = { "Запечатаний лист до Архімага Маліна" },
[4536] = { "Соковите Червоне Яблуко", "Використання: Відновлює 61,2 здоров'я протягом 18 сек. Потрібно залишатися в сидячому положенні під час їжі." },
[4540] = { "Кусень Твердого Хліба", "Використання: Відновлює 61,2 здоров'я протягом 18 сек. Потрібно залишатися в сидячому положенні під час їжі." },
[4543] = { "Каптур із Білошкірого Селезня" },
[4545] = { "Наручі із Світлого Срібла" },
[4546] = { "Клич Ящера", "Використання: Збільшує Спритність на 12 од. на 30 хв." },
[4547] = { "Гном'ячий Шокер" },
[4548] = { "Механічна Кувалда", "При спорядженні: Володіння Дворучними булавами +7." },
[4549] = { "Гарячоводний бугель" },
[4550] = { "Холодноводний перстень" },
[4551] = { "Голова Ор'Калара" },
[4589] = { "Довга Елегантна Пір'їна" },
[4614] = { "Кулон Мізраель" },
[4641] = { "Рука Даґуна" },
[4644] = { "Спадкове Серце" },
[4646] = { "Зірка Зілеї" },
[4650] = { "Записка Бел'дуґура" },
[4703] = { "Зламані Інструменти" },
[4739] = { "М'ясо Рівнинобіга" },
[4740] = { "Пір'я Рівнинобіга" },
[4741] = { "Стромґардські Кавалерійські Штани" },
[4742] = { "Шкура Гірської Пуми" },
[4743] = { "Пульсуючий Кристалізований Осколок" },
[4744] = { "Таємничі Рунічні Наручники" },
[4745] = { "Наручники Військового Вершника" },
[4751] = { "Кіготь гарпії зі зграї Вітролютих" },
[4755] = { "Глечик Для Води" },
[4758] = { "Лапа Вовка Прерій" },
[4759] = { "Кіготь Рівнинобіга" },
[4769] = { "Пір'їна Хапуна" },
[4770] = { "Пояс Щетиношкура" },
[4783] = { "Тотем Соколиного Вітру" },
[4801] = { "Пазурі Ловчого" },
[4802] = { "Пазурі Пуми" },
[4803] = { "Зуби Рівнинного Альфи" },
[4804] = { "Серце Вовка Прерій" },
[4805] = { "Стегнова Кістка Рівнинної Пуми" },
[4806] = { "Луска Рівнинобіга" },
[4807] = { "Шлунок Хапуна" },
[4808] = { "Камінь з-під Колодязя" },
[4809] = { "Бурштинова Насінина" },
[4819] = { "Папка з Паперами Шумовика" },
[4823] = { "Вода Провидців", "Використання: Викликає видіння." },
[4834] = { "Папери Торгівельної Компанії" },
[4841] = { "Ріг Арра'чі" },
[4848] = { "Рило Бойового Кнура" },
[4849] = { "Бік Бойового Кнура" },
[4850] = { "План Атаки Щетиношкурів" },
[4854] = { "Плащ Демонських Шрамів" },
[4859] = { "Медальон Палаючого Леза" },
[4863] = { "Гномські Інструменти" },
[4864] = { "Череп Міншини" },
[4866] = { "Голова Залазейна" },
[4869] = { "Кіготь Фіззла" },
[4870] = { "Уривки полотна" },
[4871] = { "Опаляючі Нашийники" },
[4883] = { "Накази Адмірала" },
[4886] = { "Отруйна залоза Отрутохвоста" },
[4887] = { "Непошкоджене око Макрури" },
[4888] = { "Слиз Повзуна" },
[4890] = { "Яйце шерстехвоста" },
[4891] = { "Амулет Крона" },
[4892] = { "Хутро Дуротарського Тигра" },
[4903] = { "Око Палаючої Тіні" },
[4904] = { "Антидот з Отрутохвоста" },
[4905] = { "Покалічена клішня Саркота" },
[4906] = { "Черевики Дощового Ходака" },
[4908] = { "Наручі Кочівника" },
[4909] = { "Поножі Мисливця на Кодо" },
[4910] = { "Розфарбовані Кольчужні Рукавиці" },
[4911] = { "Міцний Ручний Щит з Кори" },
[4913] = { "Розфарбований Кольчужний Ремінь" },
[4914] = { "Бойові Шкіряні Рукавиці" },
[4915] = { "М'яке шерстяне взуття" },
[4916] = { "М'який шерстяний жилет" },
[4917] = { "Бойові Кольчужні Поножі" },
[4918] = { "Мішок з Припасами" },
[4919] = { "М'який Шерстяний Пояс" },
[4920] = { "Бойова Накидка" },
[4921] = { "Поножі покриті пилюкою" },
[4922] = { "Зубчастий кольчужний жилет" },
[4923] = { "Груба сокира" },
[4924] = { "Грубий кийок" },
[4925] = { "Грубий ручний клинок" },
[4928] = { "Нарукавники Пісчаного бігуна" },
[4929] = { "Легка Скорпідна Броня" },
[4931] = { "Короткий лук з Дерева Гікорі" },
[4932] = { "Гарпієвий Крилопідрізач" },
[4933] = { "Загартована Накидка Бійця" },
[4935] = { "Широкий металевий ремінь" },
[4936] = { "Ношені запилені черевики" },
[4937] = { "Штурмовий Ручний Щит" },
[4938] = { "Заплямована Дерев'яна Палиця" },
[4939] = { "Незмінний Півтораручний Меч" },
[4940] = { "Маскувальні захвати" },
[4942] = { "Черевики з Хутра Тигра" },
[4944] = { "Плащ ручної роботи" },
[4945] = { "Череп із блідним світінням", "Використання: Викрадає 75 - 126 одиниць здоров'я у ворожої цілі." },
[4946] = { "Легкі черевики" },
[4947] = { "Зазубрений Кинджал" },
[4948] = { "Жаляча Булава" },
[4954] = { "Пояс Кочівника" },
[4958] = { "Вицвілий Плащ" },
[4960] = { "Легкі Кулі" },
[4961] = { "Посох Вартового Снів" },
[4963] = { "Плащ Громового Рогу" },
[4964] = { "Убивач Гоблінів" },
[4969] = { "Укріплені наручі" },
[4970] = { "Грубо зшиті поножі з шкіри Кодо" },
[4971] = { "Молот Скорна" },
[4972] = { "Черевики Бігуна по Скелях" },
[4973] = { "Наручі Рівнинного Мисливця" },
[4974] = { "Компактний Бойовий Ніж" },
[4975] = { "Баклер Вартового", "При спорядженні: Збільшує шанс блокувати атаки щитом на 1%." },
[4976] = { "Спідниця Заклинателя Туманів" },
[4977] = { "Меч Молотопаду" },
[4986] = { "Пошкоджений Силовий Камінь", "Використання: Помістіть на Вівтар Вогню" },
[4992] = { "Вербувальний Лист", "\"Непідписаний вербувальний лист.\"" },
[4995] = { "Підписаний Вербувальний Лист" },
[5040] = { "Ніж Мисливця на Тіні" },
[5203] = { "Пазур Рівнинного Бродяги" },
[5247] = { "Скіпетр Скорботи" },
[5249] = { "Палаюче Срібло" },
[5411] = { "Тотем Очищення Зимового Копита", "Використання: Викликає духів Зимового Копита для очищення." },
[5415] = { "Тотем Очищення Громового Рогу", "Використання: Викликає духів Громового Рогу для очищення." },
[5416] = { "Тотем Очищення Дикої Гриви", "Використання: Викликає духів Дикої Гриви для очищення." },
[5420] = { "Броня Банші" },
[5512] = { "Крихітний Камінь Здоров'я", "Використання: Миттєво відновлює 100 здоров'я. (Відновлення 2 хв)" },
[5590] = { "Шнуровані поручі" },
[5593] = { "Навісний кулачний щит" },
[5618] = { "Накидка розвідника" },
[5619] = { "Нефритовий Фіал", "Використання: Напонює фіал з місячного колодязя у Селищі Зоряного Вітру." },
[5639] = { "Наповнений нефритовий фіал" },
[5776] = { "Кийок Старійшини" },
[5777] = { "Сокира Сміливця" },
[5778] = { "Груба палиця" },
[5830] = { "Голова Кенати" },
[5831] = { "Голова Фардела" },
[5832] = { "Голова Марсела" },
[5939] = { "Швацькі Рукавички" },
[5940] = { "Кістяний Щит" },
[5941] = { "Латунні Штани" },
[6016] = { "Зразок Вовчого Серця" },
[6063] = { "Підковані Залізом Рукавиці" },
[6059] = { "Жилетка Кочівника" },
[6062] = { "Грубі В'язані Наручі" },
[6658] = { "Ошийник-Екземпляр" },
[6713] = { "Порвані штани" },
[7626] = { "Зв'язка Шкур" },
[7627] = { "Посилка в Даланаар" },
[7629] = { "Ноша Укора" },
[8523] = { "Польовий Тестувальний Комплект" },
[8525] = { "Список Покупок Зінґе" },
[8527] = { "Запечатаний Польовий Комплект" },
[8684] = { " Медовуха \"Внутрішній Край\"" },
[9520] = { "Тихий Вбивця" },
[9521] = { "Черепоруб" },
[9634] = { "Добре Виконані Рукавички" },
[9635] = { "Накидка Майстра Аптекаря" },
[10283] = { "Зразок Вовчого Серця" },
[10459] = { "Голова Вождя Гостроікла Щетиношкура" },
[10635] = { "Розфарбовані Кольчужні Поножі" },
[10636] = { "Рукавиці Кочівника" },
[10637] = { "Рукавички Пивовара" },
[10638] = { "Довга Драпірована Накидка" },
[10687] = { "Порожній Флакон №1", "Використання: Цей флакон наповнюється з першої прибережної калюжі в Азшарі." },
[10688] = { "Порожній Флакон №2", "Використання: Цей флакон наповнюється з другої прибережної калюжі в Азшарі." },
[10689] = { "Порожній Флакон №3", "Використання: Цей флакон наповнюється з третьої прибережної калюжі в Азшарі." },
[10690] = { "Порожній Флакон №4", "Використання: Цей флакон наповнюється з четвертої прибережної калюжі в Азшарі." },
[10691] = { "Наповнений Флакон №1" },
[10692] = { "Наповнений Флакон №2" },
[10693] = { "Наповнений Флакон №3" },
[10694] = { "Наповнений Флакон №4" },
[10695] = { "Коробка з Порожніми Флаконами" },
[10712] = { "Еліксир Кюллі" },
[11502] = { "Наплічники з красивої шкіри" },
[11583] = { "Кактусове Яблуко" },
[11584] = { "Шарлотка з Кактусовими Яблуками", "Використання: Відновлює 61,2 здоров'я протягом 18 сек. Потрібно залишатися в сидячому положенні під час їжі. Після 10 сек. дії ефекту ви наїдаєтесь а ваші Витривалість і Дух збільшуються на 2 од. на 15хв." },
[11843] = { "Банківська розписка" },
[11845] = { "Шкіряна сумка ручної роботи" },
[11870] = { "Сфера забуття" },
[11871] = { "Наплічники Покидьків" },
[11872] = { "Поножі Уникнення", "При спорядженні: Збільшує шанс ухилитися від атаки на 1%." },
[12230] = { "Скверноліські Зразки Слимака" },
[12234] = { "Зіпсовані Скверноліські Зразки" },
[12235] = { "Ун'ґорські Зразки Слимака" },
[12236] = { "Однорідні Ун'ґорські зразки" },
[12288] = { "Упаковані Зіпсовані Виділення", "Використання: Випускає синтезовані зразки для взаємодії із звичайними слизняками в Кратері Ун’ґоро. (Відновлення 3 хв)" },
[12291] = { "Об'єднані Фрагменти Слизу" },
[12299] = { "Рукавички з Кропиви" },
[12724] = { "Пакунок Дженіс" },
[12737] = { "Бур'ян Мороку" },
[13702] = { "Бур'ян Приречення" },
[13872] = { "Зв'язка деревини" },
[14047] = { "Рунічна тканина" },
[15042] = { "Порожня Банка для Термітів", "Використання: Збирає термітів на Термітниках, що знаходяться в Східному Чумному Краю." },
[15043] = { "Терміти Чумного Краю" },
[15044] = { "Бочка для Термітів Чумного Краю" },
[15102] = { "Ун'ґорські Зразки" },
[15103] = { "Зіпсовані Зразки" },
[15104] = { "Чоботи Крилонародженого" },
[15702] = { "Перстень Хіміка" },
[15703] = { "Роба Хіміка" },
[16114] = { "Кийок Десятника", "Використання: Будить вибраного сплячого пеона. (Відновлення 5 сек)" },
[16332] = { "Кайло Тхазз'ріла" },
[17355] = { "Лист Рабіна" },
[18400] = { "Перстень живого каменя" },
[18402] = { "Перстень сяючого каменя" },
[18535] = { "Щит Міллі", "При спорядженні: Відновлює 4 здоров'я за 5 сек." },
[18536] = { "Словник Міллі", "При спорядженні: Відновлює 6 мани за 5 сек." },
[18540] = { "Запечатаний релікварій Чистоти" },
[19025] = { "Перо Небожителя" },
[19071] = { "Посудина із Забрудненою Кров'ю" },
[19118] = { "Подих Природи" },
[20559] = { "Знак Честі Улоговини Араті", "\"Медаль якою нагороджують за бої в Улоговині Араті\"" },
[21139] = { "Уламок зеленого скіпетра" },
[21146] = { "Фрагмент прокляття Жаху", "\"-Внутрішній Край\"" },
[21147] = { "Фрагмент прокляття Жаху", "\"-Ясеневий діл\"" },
[21148] = { "Фрагмент прокляття Жаху", "\"-Feralas\"" },
[21149] = { "Фрагмент прокляття Жаху", "\"-Темнолісся\"" },
[22201] = { "Релікварій Чистоти" },
[21531] = { "Намисто із зубів дракона", "При спорядженні: Посилює лікування від заклинань та ефектів на 26." },
[21532] = { "Чоботи роботяги" },
}
