Create table trip (
    trip_id serial,
    city varchar(100),
    housing_expenses int,
    dat_a date ,
    amount_night int,
    travel_time float,
    attractions varchar(1000),
    notes varchar(1000)
);

INSERT INTO trip (trip_id, city, housing_expenses, dat_a, amount_night, travel_time, attractions, notes)
VALUES (1, 'Сиде', '800', '2023.05.17', '2', '10', 'Храм Аполлона в центре города,Колонная улица,Арочные ворота,Амфитеатр,Храм Диониса,Храм Тюхе,
Фонтан Нимфеум,Археологический музей,Акведук,Древний город Аспендос (35 км от Сиде),Руины Перге (Анталия по пути в Чиралы),Пещера Алтынбешик по пути из Конья',
''),
(2, 'Чиралы', '700', '2023.06.19', '3', '2.5', 'Руины древнего города Олимпос,Огни Химеры,Ликийская тропа','700 лир это кемпинг'),
(3, 'Демре, Каш, Калкан, ФЕТХИЕ', '840', '2023.06.22', '3', '4', 'Церковь и ликийские гробницы-Демре, Амфитеатр-Каш,Амфитеатр,Музей,Древний город Каякей, Олюдениз,
Ликийская тропа(начало),Руины ликийского города Пынара,Гробница Аминтаса,города Ксанф,Тлос-Фетхие','Чиралы-Демре 1.5ч, Демре-Каш 40 мин, Каш-Фетхие 1.35ч'),
(4, 'Денизли, Кушадасы, Измир','700', '2023.06.25', '3', '5.5', 'Памуккале,Иераполис,Лаодикея,термо Карахаит,Водопад Гюней,Музей НЛО,канатная дорога-Денизли, Остров
 голубей Гюверчин Адесы, Эфес, Милет,храм Посейдона,Сельчук,Дидим-Кушадасы, канатная дорога, музей игрушек,музейАгора,музей масок,город Пергамон,Музей ретро-
 автомобилей,Военно-морской музей ИнсиральтиКрепость Кадифекале-Измир','Фетхие-Денизли 2.5ч, Денизли-Кушадасы 3ч, Кушадасы-Измир 1ч'),
(5, 'Эскишехир', '800', '2023.06.28', '2', '5', 'парк Сазова(Диснейленд),музей стекла,музей восковых фигур,Кентпарк,океанариум,Yazilikaya Мидас(по дороге из Измира),
музей самолетов, Одунпазары район,Челале Парк',''),
(6, 'Зонгулдак', '600', '2023.06.30', '2', '5', 'Пещера Gokgol,крепостьМасра,пещеры Кызыл Элма, Джумаяны и Менджилис',''),
(7, 'Синоп,Самсун','0', '2023.07.02', '0', '10', 'пещера Иналты,крепость Синоп-кале','');
