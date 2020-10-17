insert into template.sample_tasks (id, created_at, updated_at, metadata, content, name, uid, available_before, due_date, due_time, time_zone, pending, refreshable, raw) values (5006, '2020-10-17 11:16:11.103366', '2020-10-17 11:16:11.103366', 'INVESTMENT_DIVIDENDS_RECORD', '', 'General Electric (GE) pays dividends on 2020-09-25', 'INVESTMENT_DIVIDENDS_RECORD_GE', '2021-03-03 00:00:00.000000', '2020-09-25', '00:00', 'America/New_York', 'true', 'true', '{"id":"5f5158b395b44f00011ed94e","date":"2020-09-03","ticker":"GE","name":"General Electric","exchange":"NYSE","currency":"USD","frequency":4,"dividend":"0.0100","dividend_type":"Cash","dividend_yield":"0.0062111801242236","ex_dividend_date":"2020-09-25","payable_date":"2020-10-26","record_date":"2020-09-28","importance":0,"updated":1599166700}');
insert into template.sample_tasks (id, created_at, updated_at, metadata, content, name, uid, available_before, due_date, due_time, time_zone, pending, refreshable, raw) values (5007, '2020-10-17 11:16:07.372055', '2020-10-17 11:16:07.372055', 'INVESTMENT_DIVIDENDS_RECORD', '', 'Hewlett Packard (HPE) pays dividends on 2020-09-08', 'INVESTMENT_DIVIDENDS_RECORD_HPE', '2021-02-25 00:00:00.000000', '2020-09-08', '00:00', 'America/New_York', 'true', 'true', '{"id":"5f4574e095b44f00011de4b3","date":"2020-08-25","ticker":"HPE","name":"Hewlett Packard","exchange":"NYSE","currency":"USD","frequency":4,"dividend":"0.1200","dividend_type":"Cash","dividend_yield":"0.0498960498960499","ex_dividend_date":"2020-09-08","payable_date":"2020-10-07","record_date":"2020-09-09","importance":0,"updated":1598387473}');

UPDATE template.sample_tasks
SET content = '{"delta":{"ops":[{"attributes":{"bold":true},"insert":"Date"},{"insert":": 2020-09-03\n"},{"attributes":{"bold":true},"insert":"Ticker"},{"insert":": NYSE\n"},{"attributes":{"bold":true},"insert":"Name"},{"insert":": General Electric\n"},{"attributes":{"bold":true},"insert":"Exchange"},{"insert":": NYSE\n"},{"attributes":{"bold":true},"insert":"Currency"},{"insert":": USD\n"},{"attributes":{"bold":true},"insert":"Frequency"},{"insert":": 4\n"},{"attributes":{"bold":true},"insert":"Dividend"},{"insert":": 0.0100\n"},{"attributes":{"bold":true},"insert":"Dividend Type"},{"insert":": Cash\n"},{"attributes":{"bold":true},"insert":"Dividend Yield"},{"insert":": 0.0062111801242236\n"},{"attributes":{"bold":true},"insert":"Ex Dividend Date"},{"insert":": 2020-09-25\n"},{"attributes":{"bold":true},"insert":"Payable Date"},{"insert":": 2020-10-26\n"},{"attributes":{"bold":true},"insert":"Record Date"},{"insert":": 2020-09-28\n"},{"attributes":{"width":"72"},"insert":{"image":"https://s3.polygon.io/logos/ge/logo.png"}},{"insert":"\n"},{"attributes":{"bold":true},"insert":"Country"},{"insert":": usa\n"},{"attributes":{"bold":true},"insert":"Industry"},{"insert":": Industrial Products\n"},{"attributes":{"bold":true},"insert":"MarketCap"},{"insert":": 71063599550\n"},{"attributes":{"bold":true},"insert":"Employees"},{"insert":": 313000\n"},{"attributes":{"bold":true},"insert":"Phone"},{"insert":": +1 617 443-3000\n"},{"attributes":{"bold":true},"insert":"CEO"},{"insert":": H. Lawrence Culp\n"},{"attributes":{"bold":true},"insert":"URL"},{"insert":": "},{"attributes":{"a":"http://www.ge.com"},"insert":"http://www.ge.com"},{"insert":"\n"},{"attributes":{"bold":true},"insert":"Description"},{"insert":": General Electric Co is a digital industrial company. It operates in various segments, including power and water, oil and gas, energy management, aviation, healthcare, transportation, appliances and lighting, and more.\n"},{"attributes":{"bold":true},"insert":"Exchange"},{"insert":": New York Stock Exchange\n"},{"attributes":{"bold":true},"insert":"Name"},{"insert":": General Electric Company\n"},{"attributes":{"bold":true},"insert":"ExchangeSymbol"},{"insert":": NYE\n"},{"attributes":{"bold":true},"insert":"HQ Address"},{"insert":": 41 Farnsworth Street Boston MA, 2210\n"},{"attributes":{"bold":true},"insert":"HQ State"},{"insert":": MA\n"},{"attributes":{"bold":true},"insert":"HQ Country"},{"insert":": USA\n"},{"attributes":{"bold":true},"insert":"Tags"},{"insert":": Industrials, Diversified Industrials, Industrial Products\n"},{"attributes":{"bold":true},"insert":"Similar"},{"insert":": CAT, DHR, HON, TMO, UTX, PHG, MMM, MDT\n"}]},"###html###":"<p><strong>Date</strong>: 2020-09-03</p><p><strong>Ticker</strong>: GE</p><p><strong>Name</strong>: General Electric</p><p><strong>Exchange</strong>: NYSE</p><p><strong>Currency</strong>: USD</p><p><strong>Frequency</strong>: 4</p><p><strong>Dividend</strong>: 0.0100</p><p><strong>Dividend Type</strong>: Cash</p><p><strong>Dividend Yield</strong>: 0.0062111801242236</p><p><strong>Ex Dividend Date</strong>: 2020-09-25</p><p><strong>Payable Date</strong>: 2020-10-26</p><p><strong>Record Date</strong>: 2020-09-28</p><p><img src=\"https://s3.polygon.io/logos/ge/logo.png\" width=\"72\"></p><p><strong>Country</strong>: usa</p><p><strong>Industry</strong>: Industrial Products</p><p><strong>MarketCap</strong>: 71063599550</p><p><strong>Employees</strong>: 313000</p><p><strong>Phone</strong>: +1 617 443-3000</p><p><strong>CEO</strong>: H. Lawrence Culp</p><p><strong>URL</strong>: <a href=\"http://www.ge.com\" rel=\"noopener noreferrer\" target=\"_blank\">http://www.ge.com</a></p><p><strong>Description</strong>: General Electric Co is a digital industrial company. It operates in various segments, including power and water, oil and gas, energy management, aviation, healthcare, transportation, appliances and lighting, and more.</p><p><strong>Exchange</strong>: New York Stock Exchange</p><p><strong>Name</strong>: General Electric Company</p><p><strong>Exchange Symbol</strong>: NYE</p><p><strong>HQ Address</strong>: 41 Farnsworth Street Boston MA, 2210</p><p><strong>HQ State</strong>: MA</p><p><strong>HQ Country</strong>: USA</p><p><strong>Tags</strong>: Industrials, Diversified Industrials, Industrial Products</p><p><strong>Similar</strong>: CAT, DHR, HON, TMO, UTX, PHG, MMM, MDT</p>"}'
    WHERE id = 5006;

UPDATE template.sample_tasks
SET content = '{"delta":{"ops":[{"attributes":{"bold":true},"insert":"Date"},{"insert":": 2020-08-25\n"},{"attributes":{"bold":true},"insert":"Ticker"},{"insert":": NYSE\n"},{"attributes":{"bold":true},"insert":"Name"},{"insert":": Hewlett Packard\n"},{"attributes":{"bold":true},"insert":"Exchange"},{"insert":": NYSE\n"},{"attributes":{"bold":true},"insert":"Currency"},{"insert":": USD\n"},{"attributes":{"bold":true},"insert":"Frequency"},{"insert":": 4\n"},{"attributes":{"bold":true},"insert":"Dividend"},{"insert":": 0.1200\n"},{"attributes":{"bold":true},"insert":"Dividend Type"},{"insert":": Cash\n"},{"attributes":{"bold":true},"insert":"Dividend Yield"},{"insert":": 0.0498960498960499\n"},{"attributes":{"bold":true},"insert":"Ex Dividend Date"},{"insert":": 2020-09-08\n"},{"attributes":{"bold":true},"insert":"Payable Date"},{"insert":": 2020-10-07\n"},{"attributes":{"bold":true},"insert":"Record Date"},{"insert":": 2020-09-09\n"},{"attributes":{"bold":true},"insert":"Importance"},{"insert":": 0\n"},{"attributes":{"bold":true},"insert":"Updated"},{"insert":": 1598387473\n"},{"attributes":{"width":"72"},"insert":{"image":"https://s3.polygon.io/logos/hpe/logo.png"}},{"insert":"\n"},{"attributes":{"bold":true},"insert":"Country"},{"insert":": usa\n"},{"attributes":{"bold":true},"insert":"Industry"},{"insert":": Communication Equipment\n"},{"attributes":{"bold":true},"insert":"MarketCap"},{"insert":": 22545651696\n"},{"attributes":{"bold":true},"insert":"Employees"},{"insert":": 66000\n"},{"attributes":{"bold":true},"insert":"Phone"},{"insert":": +1 650 687-5817\n"},{"attributes":{"bold":true},"insert":"CEO"},{"insert":": Margaret C. Whitman\n"},{"attributes":{"bold":true},"insert":"URL"},{"insert":": "},{"attributes":{"a":"https://www.hpe.com"},"insert":"https://www.hpe.com"},{"insert":"\n"},{"attributes":{"bold":true},"insert":"Description"},{"insert":": Hewlett Packard Enterprise Co is a communication equipment company that provides servers, storage, networking and technology services. Its business segments are Enterprise Group, Software, Enterprise Services, Financial Services and Corporate Investments.\n"},{"attributes":{"bold":true},"insert":"Exchange"},{"insert":": New York Stock Exchange\n"},{"attributes":{"bold":true},"insert":"Name"},{"insert":": Hewlett Packard Enterprise Company\n"},{"attributes":{"bold":true},"insert":"ExchangeSymbol"},{"insert":": NYE\n"},{"attributes":{"bold":true},"insert":"HQ Address"},{"insert":": 3000 Hanover Street Palo Alto CA, 94304\n"},{"attributes":{"bold":true},"insert":"HQ State"},{"insert":": CA\n"},{"attributes":{"bold":true},"insert":"HQ Country"},{"insert":": USA\n"},{"attributes":{"bold":true},"insert":"Tags"},{"insert":": Technology, Communication Equipment\n"},{"attributes":{"bold":true},"insert":"Similar"},{"insert":": XLK\n"}]},"###html###":"<p><strong>Date</strong>: 2020-08-25</p><p><strong>Ticker</strong>: HPE</p><p><strong>Name</strong>: Hewlett Packard</p><p><strong>Exchange</strong>: NYSE</p><p><strong>Currency</strong>: USD</p><p><strong>Frequency</strong>: 4</p><p><strong>Dividend</strong>: 0.1200</p><p><strong>Dividend Type</strong>: Cash</p><p><strong>Dividend Yield</strong>: 0.0498960498960499</p><p><strong>Ex Dividend Date</strong>: 2020-09-08</p><p><strong>Payable Date</strong>: 2020-10-07</p><p><strong>Record Date</strong>: 2020-09-09</p><p><strong>Importance</strong>: 0</p><p><strong>Updated</strong>: 1598387473</p><p><img src=\"https://s3.polygon.io/logos/hpe/logo.png\" width=\"72\"></p><p><strong>Country</strong>: usa</p><p><strong>Industry</strong>: Communication Equipment</p><p><strong>MarketCap</strong>: 22545651696</p><p><strong>Employees</strong>: 66000</p><p><strong>Phone</strong>: +1 650 687-5817</p><p><strong>CEO</strong>: Margaret C. Whitman</p><p><strong>URL</strong>: <a href=\"https://www.hpe.com\" rel=\"noopener noreferrer\" target=\"_blank\">https://www.hpe.com</a></p><p><strong>Description</strong>: Hewlett Packard Enterprise Co is a communication equipment company that provides servers, storage, networking and technology services. Its business segments are Enterprise Group, Software, Enterprise Services, Financial Services and Corporate Investments.</p><p><strong>Exchange</strong>: New York Stock Exchange</p><p><strong>Name</strong>: Hewlett Packard Enterprise Company</p><p><strong>ExchangeSymbol</strong>: NYE</p><p><strong>HQ Address</strong>: 3000 Hanover Street Palo Alto CA, 94304</p><p><strong>HQ State</strong>: CA</p><p><strong>HQ Country</strong>: USA</p><p><strong>Tags</strong>: Technology, Communication Equipment</p><p><strong>Similar</strong>: XLK</p>"}'
    WHERE id = 5007;