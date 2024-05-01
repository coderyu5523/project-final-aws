INSERT INTO user_tb(username, password, phone, name, birth, gender, height, user_img, total_coin, goal_muscle, goal_fat,
                    created_at)
VALUES ('ssar', '1234', '010-0100-0100', '김백미', '1994-04-22', 'F', 178.5, null, 500, 35.0, 12.0, now()),
       ('cos', '1234', '010-0022-0022', '하승진', '1994-12-26', 'M', 169.8, null, 500, 25.7, 15.0, now()),
       ('love', '1234', '010-0033-0033', '홍길동', '1997-04-02', 'M', 173.4, null, 500, 30.0, 18.0, now());

INSERT INTO activity_tb(user_id, walking, drink_water, created_at)
VALUES (1, 2222, 500, now());

INSERT INTO bodydata_tb(user_id, weight, muscle, fat, created_at)
VALUES (1, 75.8, 27.6, 20.1, now());

insert into challenge_tb(challenge_name, background_img, sub_title, walking, badge_img, content, coin, period, distance, created_at)
values ('에베레스트', 'abf1c607-62c7-429d-9601-6edb1a3e4965_everest.png', '히말라야-네팔\n8848.0m(약 2.7천층 올라감)', 350000, 'abf1c607-62c7-429d-9601-6edb1a3e4965_everest.png', '세계에서 가장 높은 산을 오르세요! 해발 고도 8,848m(29029피트)에 있는 에베레스트산은 가장 상징적이고 도전적인 탐험지 중 하나로, 산봉우리의 험난한 조건과 높은 고도 뿐 아니라 험준하고 가파른 지형을 견디는 산악인들의 신체적, 정신적 한계를 시험하고 있습니다. 네팔과 티베트 사이의 국경에 자리하고 있으며 많은 현지인들에게 성스러운 문화재이자 신성한 장소입니다.', 2, 30, '8848m', now()),
       ('에베레스트 베이스캠프 트레킹', 'ab9dde60-6ce4-41f9-a848-aced82c5d38c_basecampEV.png', '히말라야-네팔\n62.0km(약 8.7만개의 계단)', 300000, 'ab9dde60-6ce4-41f9-a848-aced82c5d38c_basecampEV.png', '세계에서 가장 상징적인 트레킹 중 하나인 에베레스트 베이스캠프 루트를 정복하세요. 네팔의 히말라야를 거쳐 세계에서 가장 높은 산인 에베레스트산의 베이스캠프로 이동합니다. 이 탐험은 작은 마을인 루클라(Lukla)에서 시작하여 셰르파 마을인 남체 바자(Namche Bazaar), 텅보체(Tengboche), 딩보체(Dingboche), 고락셉(Gorakshep)을 통과합니다. 하이커들은 강과 고지대 통행로를 지나는 것과 더불어 풍부한 문화, 종교, 환대로 유명한 솔루쿰부(Solukhumbu) 지구의 중심부를 거쳐 이동합니다.', 2, 30, '6200m', now()),
       ('칠쿠트 트레일', '270f40f2-683f-4a9a-be40-764e377847c6_chilkoot.png', '코스트산맥-알래스카 및 캐나다\n53.0km(약 7.4만개의 계단)', 250000, '270f40f2-683f-4a9a-be40-764e377847c6_chilkoot.png', '칠쿠트 트레일은 브리티시컬럼비아 해안 우림, 그리고 알래스카의 고산 지대 초원과 빙하를 거치며 구불구불 나 있는 유서 깊고 경치 좋은 하이킹 트레일입니다. 이 트레일은 과거에 그 지역의 원주민들이 사용했으며, 19세기 후반에는 클론다이크 골드러시 시기에 금광을 찾는 이들에게 인기 루트가 되었습니다. 길을 따라가면 골드러시 시기와 관련된 오두막, 준설기, 금을 찾으러 몰려든 사람들의 야영지 등 유적지와 유물을 보실 수 있습니다.', 2, 30, '53K', now()),
       ('엘브루스', '84388465-4372-4822-b458-60844aec5a8c_elbrus.png', '코카서스산맥-러시아\n5642.0m(약 1.7천층 올라감)', 200000, '84388465-4372-4822-b458-60844aec5a8c_elbrus.png', '엘브루스산은 마지막으로 서기 50년에 폭발한 휴화산이며, 일곱 개의 정상 중 하나입니다. 이는 유럽에서 가장 높은 산으로, 조지아 국경 근처 러시아 남부에 위치하고 있습니다. 이 산에는 두개의 산봉우리가 있고, 옛 분화구는 지금은 눈과 얼음으로 가득하여, 5,620여 미터(18,440여 피트) 솟아올라 있습니다. 로마인들은 엘브루스를 ''스트로빌루스'' 라고 했는데 이는 라틴어로 ''솔방울''을 의미하며 산의 뒤틀린 모양을 본뜬 것입니다.', 2, 30, '5642m', now()),
       ('그랜드 캐니언 림 트레일', 'df7233de-0da2-42ad-8852-33386b756e9a_grandcanyon.png', '콜로라도고원-미국\n21.0km(약 3만개의 계단)', 150000, 'df7233de-0da2-42ad-8852-33386b756e9a_grandcanyon.png', '이 탐험은 헤르미츠 레스트와 동쪽의 사우스 카이밥 트레일헤드 사이에 있는 애리조나주 그랜드 캐니언 국립 공원의 사우스 림을 따라 운영됩니다. 다양한 목적에 따라 이용할 수 있는 이곳은 약 21km(13마일) 길이의 포장된 트레일이며 브라이트 에인절 캐니언(Bright Angel Canyon)과 콜로라도 강 등 세계에서 가장 상징적인 자연의 경이로움 중 하나인 절경이 펼쳐집니다.', 2, 30, '21K', now()),
       ('산티아고 순례길', 'b97ca653-62da-47ce-9807-a4a882185a71_santiago.png', '피레네-프랑스 및 스페인\n784.0km(약 110만개의 계단)', 200000, 'b97ca653-62da-47ce-9807-a4a882185a71_santiago.png', '수 세기 동안, 사람들은 이 여정을 영적, 육체적 성취를 이룰 수 있는 하나의 방법으로 만들어 왔습니다. 산티아고 순례길은 세인트 제임스의 길로도 알려져 있으며, 유럽 전역에 걸쳐 뻗어 있고 스페인 북서부의 산티아고 순례길에 있는 사도 세인트 제임스의 성지에서 모입니다. 이 탐험은 ''프랑스 길(Camino Frances)''을 따라가며, 프랑스 길은 St.Jean Pied de Port에서 시작되어, 스페인 북부에 걸쳐 거의 800킬로미터(500마일)을 뻗어 나갑니다.', 2, 30, '784K', now()),
       ('디날리', '2002831a-b5cd-4e4d-8527-2e0a53e6c7f4_denali.png', '알래스카산맥-미국\n6190.0m(약 1.9천층 올라감)', 300000, '2002831a-b5cd-4e4d-8527-2e0a53e6c7f4_denali.png', '맥킨리산으로도 알려진 디날리는 북미에서 가장 높은 산봉우리 7개 중 하나이자 최고봉이며, 해발 6,191미터(20,310피트)입니다. 이 클라이밍은 산악인들의 수요가 높은 탐험으로 매년 1,200여 명이 정상 정복을 시도하고 있습니다. 디날리는 극심한 기상 조건과 까다로운 지형으로 유명합니다. 이 산은 알래스카의 야생 지대 6백만여 에이커를 아우르는 디날리 국립 공원 및 자연 보호 구역에 위치하고 있습니다.', 2, 30, '6190m', now()),
       ('잉카 트레일', '80f907a7-b709-4f9b-8c43-bde12b726606_inca.png', '안데스-페루\n40.0km(약 5.6만개의 계단)', 150000, '80f907a7-b709-4f9b-8c43-bde12b726606_inca.png', '이 유서깊은 40km(25마일) 트레일은 페루의 안데스산맥 사이로 구불구불 나 있으며, 마추픽추로 가는 철도를 타고 82km 지점에서 시작하여 여러 고산 지대 산길과 우거진 숲들을 가로지릅니다. 트레일을 따라, 하이커들은 험준한 산악 환경에서 살아남기 위해 제적된 석벽, 테라스, 수로 등 다수의 잉카 유적 및 고대 유적지들을 마주칩니다.', 2, 30, '40K', now()),
       ('K2', 'dc29a51b-435c-41d2-a145-ecbba2157798_k2.png', '카라코람산맥-파키스탄\n8,611m(약 2.6천층 올라감)', 310000, 'dc29a51b-435c-41d2-a145-ecbba2157798_k2.png', '히말라야 카라코람산맥의 파키스탄과 중국 국경에 위치한 K2는 세계에서 두 번째로 높은 산으로, 해발 8,611미터(28,251 피트)에 달합니다. 이 클라이밍은 가파르고 위험한 지형으로 유명하며, 예측할 수 없는 기상 조건으로 인해 산악인들이 정상에 도달하기 어렵습니다. 덕분에 K2는 ''살벌한 산(Savage Mountain)''이라는 별명을 얻었습니다.', 2, 30, '8611m', now()),
       ('킬리만자로', '83912acc-ab15-490c-97f5-da3b0f803ac4_kili.png', '이스턴리프트산맥-탄자니아\n5,895.0m(약 1.8천층 올라감)', 200000, '83912acc-ab15-490c-97f5-da3b0f803ac4_kili.png', '킬리만자로는 탄자니아의 휴화산이며 아프리카에서 최고봉으로, 해발 고도 5,895미터(19,341 피트)에 달합니다. 이 클라이밍은 여러 기후대를 거쳐 이동하면서, 산기슭의 무성한 열대우림에서 시작해 고산 지대 초원과 메마른 고지대 사막을 거쳐 나아간 후 정상에 도달합니다..', 2, 30, '5895m', now()),
       ('웨스트 하일랜드 웨이', 'b0129dec-aef8-4dba-91a5-2c02350f9b53_west.png', '하일랜드-스코틀랜드\n154.0km(약 22만개의 계단)', 100000, 'b0129dec-aef8-4dba-91a5-2c02350f9b53_west.png', '웨스트 하일랜드 웨이 도로를 타고 스코틀랜드 전역에서 154킬로미터(96마일)를 이동합니다. 이 인기 루트는 글래스고 인근 밀른게이브(Milngavie)에서 출발해 스코틀랜드 하일랜드에 있는 포트 윌리엄까지 이어지며, 라녹 무어, 글렌코, 악마의 계단 등 스코틀랜드 외딴 야생 지역 중 가장 아름다운 몇몇 곳을 통과합니다..', 2, 30, '154K', now()),
       ('빈슨', '4479eb56-7509-4041-b725-70617ccdd6a8_vinson.png', '엘즈워스산맥-남극대륙\n4,892.0m(약 1.5천층 올라감)', 150000, '4479eb56-7509-4041-b725-70617ccdd6a8_vinson.png', '엘즈워스산맥의 센티널 산맥에 위치한 빈슨 산괴(Vinson Massif)는 빈슨산으로도 알려져 있습니다. 남극 대륙에서 가장 높은 산으로 4,892미터(16,050피트)에 달합니다. 이 클라이밍은 빙벽 등반, 빙하를 통한 이동, 가파른 산악 스키가 조합되어 있습니다. 빈슨산은 외딴 위치, 난이도, 혹독한 날씨 조건으로 산악인과 모험 애호가들의 수요가 높은 클라이밍입니다.', 2, 30, '4892m', now()),
       ('라인슈타이크 트레일', '78cdac22-368a-4c32-a449-45b955243684_rhein.png', '라인강-독일\n320.0km(약 45만개의 계단)', 120000, '78cdac22-368a-4c32-a449-45b955243684_rhein.png', '라인슈타이크 트레일은 독일 중부의 라인강을 따라 운영되며, 헤센주의 비스바덴에서 북부 노르트라인베스트팔렌주의 본까지 뻗어 있습니다. 라인협곡과 타우누스산맥의 가장 아름다운 풍경은 물론 유서 깊은 소도시와 마을들도 지나갑니다. 이 트레킹은 경험이 풍부한 하이커들과 비교적 여유롭게 문화 및 역사적 모험을 찾는 이들을 끌어들입니다.', 2, 30, '320K', now()),
       ('안나푸르나 서킷', '972cc76d-7c10-45d6-85d3-bed3025164d4_anna.png', '히말라야-네팔\n260.1km(약 36만개의 계단)', 150000, '972cc76d-7c10-45d6-85d3-bed3025164d4_anna.png', '안나푸르나 서킷은 네팔의 안나푸르나 산맥을 거쳐 이동하며, 소도시 베시사하르에서 시작하여 마르샹디강을 따라 차메 마을에 이른 후 점차 더 높은 산 속으로 오릅니다. 이 탐험은 작은 마을과 찻집들뿐 아니라 가는 길에 숲, 강, 폭포, 고지대 통행로들도 거치면서 지나갑니다. 해발 5,416미터(17,769피트)로 세상에서 가장 높은 산길 중 하나인 토롱 라 패스(Thorong La Pass)가 이 루트의 하이라이트 중 하나입니다.', 2, 30, '260K', now()),
       ('아콩가과', 'b45f3bb4-c587-4e11-9c42-2667db5f8615_acon.png', '안데스-아르헨티나\n6,961.0m(약 2.1천층 올라감)', 220000, 'b45f3bb4-c587-4e11-9c42-2667db5f8615_acon.png', '아콩카과산은 서반구와 남반구에서 가장 높은 지점이며, 해발 6,961미터(22,837피트)로 안데스산맥의 주산맥(Principal Cordillera)에 위치해 있습니다. 아콩가과라는 명칭은 ''바위 파수꾼(Stone Sentinel)''을 의미하는 케추아어에서 유래한 것으로, 이 산의 독특한 암석 분포에 기인합니다. 그 산봉우리는 화강암, 안산암, 현무암 등 다양한 암석 유형들로 구성되어 있으며, 여러 개의 빙하가 있습니다.', 2, 30, '6961m', now()),
       ('만리장성', '0cc70a86-8dd8-436e-9065-f6efae8fe3c8_manri.png', '지엔커우 만리장성(기점 Xizhazi Village)-중국\n20.0km(약 2.8만개의 계단)', 120000, '0cc70a86-8dd8-436e-9065-f6efae8fe3c8_manri.png', '만리장성 하이킹은 세계에서 가장 위대한 고대 건축물의 경이로움 중 하나를 따라 이동하면서, 가는 길에 감시탑과 흉벽을 지나갑니다. 이 탐험에는 무티엔위와 모시커우 구역 사이에 위치한 중국 만리장성의 지엔커우 구간이 포함됩니다. 우리가 오늘날 보는 현 만리장성의 대부분은 명나라(1368~1644) 때 세워졌으며 약 6,000킬로미터에 달합니다.', 2, 30, '20K', now()),
       ('크레이들산 오버랜드 트랙', 'a26efa14-434a-48a0-a405-65931949f69a_cradle.png', '태즈메이니아-호주\n65.0km(약 9.1만개의 계단)', 160000, 'a26efa14-434a-48a0-a405-65931949f69a_cradle.png', '호주 최고의 고산 지대 걷기 코스인 태즈메이니아의 크레이들산 오버랜드 트랙을 하이킹하세요. 이 탐험은 로니크릭(Ronny Creek)에서 시작해 65킬로미터(40.4마일)를 이동하여 세인트클레어호로 향하면서, 울창한 숲에서 안개가 자욱한 계곡까지 다양한 풍경을 지나갑니다. 또한 하이커들이 태즈메이니아 고원의 경치를 감상할 수 있는 크레이들 마운틴-세인트클레어호 국립 공원의 황야도 포함됩니다.', 2, 30, '65K', now()),
       ('애팔래치안 트레일', '9b3f2c98-15c7-4e96-888e-34d26db82161_appalachian.png', '애팔래치아산맥-미국\n3,500.0km(약 490만개의 계단)', 230000, '9b3f2c98-15c7-4e96-888e-34d26db82161_appalachian.png', '애팔래치아 트레일을 타고 미국 동부를 탐험하세요. 이 등산로는 애팔래치아산맥을 따라 조지아주 스프링어산부터 메인주 카타딘산까지 약 35500km(2,175마일) 뻗어 있습니다. 이 탐험은 숲, 언덕, 바위투성이 산등성이부터 강과 개울을 가로지르는 다양한 지형을 지나면서 이동합니다. 이 트레일은 또한 수많은 소도시와 마을을 통과하며, 하이커들은 이곳에서 음식 및 기타 필수품을 다시 채웁니다.', 2, 30, '3500K', now()),
       ('코지어스코', '0542e017-d21f-40c9-b197-63278fdc6a2a_koscius.png', '스노이산맥-호주\n2,228.0m(약 675층 올라감)', 180000, '0542e017-d21f-40c9-b197-63278fdc6a2a_koscius.png', '뉴사우스웨일스주의 스노이산맥에 위치한 코지어스코산은 호주 본토에서 가장 높은 산으로 해발 고도 2,228미터(7,310피트)에 달합니다. 클라이밍이 상대적으로 쉽게 여겨지는데, 표시가 잘 되어 있고 점진적으로 정상에 오르기 때문입니다. 이 산은 고산 지형, 멋진 경관, 다양한 동식물로 유명한 코지어스코 국립 공원의 일부입니다.', 2, 30, '2228m', now()),
       ('밀퍼드 트랙', 'a5103fce-bafa-4877-a633-8a8d7d6b2fd2_milford.png', '남섬-뉴질랜드\n53.0km(약 7.4만개의 계단)', 170000, 'a5103fce-bafa-4877-a633-8a8d7d6b2fd2_milford.png', '밀퍼드 트랙 하이킹 이동 구간은 뉴질랜드 피오르드랜드 국립 공원의 우림 계곡과 장엄한 산속으로 깊숙이 이어집니다. 이 탐험은 테아나우호의 상류에서 시작해 클린턴강을 따라, 울창한 숲 사이를 구불구불 지난 후 웅장한 서덜랜드폭포에 도달해 매키넌 패스(McKinnon Pass)를 넘어 아서계곡의 고산 야생 지역을 오릅니다. 밀퍼드 트랙은 숨 막히는 경치와 접근성으로 세계 최고의 산책로 중 하나로 손꼽힙니다.', 2, 30, '53K', now()),
       ('몽블랑', 'c731cb2c-a2da-46f3-890b-95d9337f0179_montblanc.png', '알프스-프랑스 및 이탈리아\n4,808.0m(약 1.5천층 올라감)', 230000, 'c731cb2c-a2da-46f3-890b-95d9337f0179_montblanc.png', '몽블랑은 해발 4,808미터(15,774피트)에 달하는 유럽 알프스산맥의 최고봉인 몽블랑에 올라보세요. 이 표준 이동 구간은 샤모니몽블랑 근처의 레 우쉬(Les Houches)에서 시작되며 정상에 도달하기 위해 하이킹, 스크램블링, 고정 로프 및 사다리를 이용한 클라이밍의 조합이 포함됩니다. 이 클라이밍을 하는 동안 알프스와 주변 빙하 및 계곡들의 절경이 펼쳐집니다.', 2, 30, '4808m', now()),
       ('몽블랑 서큘러', '573ca70b-4ca6-4009-9cf0-be5703ee9634_montcir.png', '알프스-프랑스, 이탈리아, 스위스\n160.0km(약 22만개의 계단)', 180000, '573ca70b-4ca6-4009-9cf0-be5703ee9634_montcir.png', '몽블랑 서큘러 하이킹 루트는 알프스를 통과하며 이동하면서 유럽에서 최고봉 중 하나인 몽블랑 산괴를 둘러봅니다. 이 인기 트레일은 숲과 초원에서 빙하와 높은 산길까지 다양한 유형의 고산 지대 환경을 지나갑니다. 이 트레킹은 약 160km로, 일반적으로 하이커들이 완료하는 데 10~12일이 소요됩니다.', 2, 30, '160K', now()),
       ('아라라트', '4f793c6b-3a3e-4802-89d5-f923a1f45ff7_ararat.png', '아르메니아고원-터키\n5,137.0m(약 1.6천층 올라감)', 200000, '4f793c6b-3a3e-4802-89d5-f923a1f45ff7_ararat.png', '터키에서 최고봉인 아라라트산을 정복하세요. 아라라트산은 해발 고도 5,137미터(16,854피트)에 달합니다. 아라라트산은 아르메니아와 이란의 국경 근처인 터키 동부에 있는 휴화산입니다. 이 산은 노아의 방주가 묻혀있는 것으로 여겨져 중요한 문화적, 종교적 의미를 지닙니다. 이 클라이밍은 가파르고 들쭉날쭉한 산봉우리와 멋진 자연미로 유명합니다.', 2, 30, '5137m', now()),
       ('킬리만자로 마차메 루트', 'c3e6095d-966b-40b6-8d3a-c43df99d0e10_machame.png', '이스턴리프트산맥-탄자니아\n62.0km(약 8.7만개의 계단)', 100000, 'c3e6095d-966b-40b6-8d3a-c43df99d0e10_machame.png', '아프리카에서 최고봉인 해발 고도 5,895미터(19,341피트)에 달하는 탄자니아 킬리만자로산을 하이킹하세요. 이 탐험은 인기 루트인 마차메 루트를 따라 마차메 게이트에서 시작됩니다. 이 트레킹은 산 남쪽 기슭에 있는 울창한 열대우림과 광활한 시라고원을 거쳐, ''용암탑''으로 알려진 상징적인 화산전(volcanic plug)를 지나, 메마른 고지대 사막을 거쳐 이동한 후 정상에 도달합니다.', 2, 30, '62K', now()),
       ('올림푸스', '282416ba-af4c-460c-93e1-33014e52838b_olympus.png', '올림푸스산맥-그리스 에비아섬\n2,917.0m(약 885층 올라감)', 190000, '282416ba-af4c-460c-93e1-33014e52838b_olympus.png', '올림푸스산은 그리스 북부, 테살로니키라는 도시 근처에 있습니다. 이는 그리스에서 가장 높은 산으로, 그중 가장 큰 산봉우리인 미티카스는 해발 고도 2,917미터(9,570피트)에 달할 뿐만 아니라, 고대 그리스 종교와 신화에서 가장 중요한 산봉우리로 여겨지기도 합니다. 이는 제우스, 헤라, 아폴로, 아테나 등 12명의 올림피아 신들의 고향으로 믿어졌습니다. 이 클라이밍을 하다 보면 주변 산봉우리와 에게해의 절경이 펼쳐지며, 정상에서 작은 예배당을 발견하게 됩니다.', 2, 30, '2917m', now()),
       ('투브칼 서킷', 'e1288507-5bc8-4821-b6f7-4d23d75d7610_toubkal.png', '아틀라스산맥-모로코\n60.0km(약 8.4만개의 계단)', 110000, 'e1288507-5bc8-4821-b6f7-4d23d75d7610_toubkal.png', '모로코의 아틀라스 산맥에서 북아프리카 최고봉인 투브칼산을 하이킹하세요. 투브칼 서킷 탐험은 붐비는 시장이 서는 소도시인 임릴(Inlil)에서 시작됩니다. 바위투성이 지형과 무성한 초목을 거치고, 정상이 가까워지면서 맨 바위와 눈이 보이며 트레일이 마무리됩니다. 이 루트는 길을 따라 마을들을 지나기 때문에 하이커들이 베르베르족의 일상생활과 문화를 경험할 수 있습니다.', 2, 30, '60K', now()),
       ('파타고니아 서킷', '51676235-202e-4f61-b9ce-f4e58ac5c229_patagonia.png', '안데스-파타고니아, 아르헨티나, 칠레\n120.0km(약 17만개의 계단)', 140000, '51676235-202e-4f61-b9ce-f4e58ac5c229_patagonia.png', '남미의 야생 자연, 파타고니아 서킷을 탐험하세요.', 2, 30, '120K', now()),
       ('그로스글로크너', 'a79e04fc-31b8-4c5b-9729-fa1192dc7c76_grossglock.png', '알프스-오스트리아\n3,798.0m(약 1.2천층 올라감)', 140000, 'c6d37c1b-a37b-45a6-a170-5254a68970de_grossglock.png', '알프스 오스트리아에서 그로스글로크너를 탐험하세요.', 2, 30, '3798m', now());

insert into attend_challenge_tb(user_id, total_walking, challenge_id, opening_time, closing_time, status, created_at)
values (1, 132, 1, '2024-05-22', '2024-06-21', false, now()),
       (1, 320, 2, '2024-03-24', '2024-04-23', false, now()),
       (1, 1800, 3, '2024-02-05', '2024-03-06', true, now()),
       (1, 452, 4, '2024-05-18', '2024-06-17', true, now()),
       (1, 3200, 5, '2024-04-23', '2024-04-24', false, now()),
       (1, 328, 6, '2024-05-07', '2024-06-06', true, now()),
       (1, 2500, 7, '2024-03-23', '2024-04-22', true, now()),
       (1, 2500, 8, '2024-03-23', '2024-04-22', true, now()),
       (1, 2500, 21, '2024-03-23', '2024-04-22', true, now()),
       (1, 2500, 22, '2024-03-23', '2024-04-22', false, now()),
       (1, 2500, 23, '2024-03-23', '2024-04-22', true, now()),
       (1, 2500, 24, '2024-03-23', '2024-04-22', true, now()),
       (1, 2500, 25, '2024-03-23', '2024-04-22', true, now()),
       (1, 2500, 26, '2024-03-23', '2024-04-22', true, now()),
       (1, 2500, 27, '2024-03-23', '2024-04-22', false, now()),
       (1, 2500, 28, '2024-03-23', '2024-04-22', null, now())
;

INSERT INTO food_tb(name, carbo, protein, fat, kcal, gram, created_at)
VALUES ('바나나', 22.84, 1.09, 0.33, 88,100,now()),
       ('땅콩', 22.84, 1.09, 0.33, 88,100,now()),
       ('사과', 22.84, 1.09, 0.33, 88,100,now()),
       ('닭가슴살', 22.84, 1.09, 0.33, 88,100,now());
;

INSERT INTO survey_tb(title, created_at, opening_time, closing_time) VALUES ('설문조사1', now(), now(),now());
INSERT INTO survey_tb(title, created_at, opening_time, closing_time) VALUES ('설문조사2', now(), now(),now());
INSERT INTO survey_tb(title, created_at, opening_time, closing_time) VALUES ('설문조사3', now(), now(),now());
INSERT INTO survey_tb(title, created_at, opening_time, closing_time) VALUES ('설문조사4', now(), now(),now());
INSERT INTO survey_tb(title, created_at, opening_time, closing_time) VALUES ('설문조사5', now(), now(),now());
INSERT INTO survey_tb(title, created_at, opening_time, closing_time) VALUES ('설문조사6', now(), now(),now());
