create schema Diamonds;

CREATE TABLE Diamonds.TaxLog (
	TaxLogId bigserial NOT NULL,
	UserId varchar NOT NULL,
	HostIPAddress varchar NOT NULL,
	StartDate timestamp NOT NULL,
	EndDate timestamp NOT NULL,
	ProfileId integer,
	CONSTRAINT TaxLog_PKey PRIMARY KEY (TaxLogId)
);


CREATE TABLE Diamonds.TaxData (
	TaxDataId bigserial NOT NULL,
	TaxLogId bigserial NOT NULL,
	Billable bool,
	CategoryId integer NOT NULL,
	Compliance bool,
	TaxAmount numeric(32,16) NULL,
	TaxType varchar NOT NULL,
	CONSTRAINT TaxData_PKey PRIMARY KEY (TaxDataId),
	CONSTRAINT FK_Diamonds_TaxLog_TaxData FOREIGN KEY (TaxLogId) REFERENCES Diamonds.TaxLog(TaxLogId)

);

CREATE TABLE Diamonds.Address (
	BillToAddressId bigserial NOT NULL,
	CountryISO bpchar(3),
	County varchar,
	Locality varchar,
	State bpchar(2),
	Zipcode varchar(16),
	Zip4 bpchar(4),
	CONSTRAINT Address_PKey PRIMARY KEY (BillToAddressId)
);

CREATE TABLE Diamonds.TelecomTransaction (
	TelecomTransactionId bigserial NOT NULL,
	TaxLogId bigserial NOT NULL,
	BillToAddressId bigserial NOT NULL,
	Charge numeric(32,16) NULL,
	Date timestamp NULL,
	InvoiceNumber varchar NULL,
	CONSTRAINT TelecomTransaction_PKey PRIMARY KEY (TelecomTransactionId),
	CONSTRAINT FK_Diamonds_TaxLog_TelecomTransaction FOREIGN KEY (TaxLogId) REFERENCES Diamonds.TaxLog(TaxLogId),
	CONSTRAINT FK_Diamonds_Address_TelecomTransaction FOREIGN KEY (BillToAddressId) REFERENCES Diamonds.Address(BillToAddressId)
);

INSERT INTO Diamonds.TaxLog (TaxLogID, UserID, HostIPAddress, ProfileId, StartDate, EndDate) VALUES (1828776231, '1BCDE35', 'DC2AMAZ-9JPP28E', 1, '2021-06-07 23:30:55.873', '2021-06-07 23:30:57.353');
INSERT INTO Diamonds.TaxLog (TaxLogID, UserID, HostIPAddress, ProfileId, StartDate, EndDate) VALUES (1828776661, '1BCDE35', 'DC2AMAZ-I2O3DAA', 1, '2021-06-07 23:31:01.257', '2021-06-07 23:31:01.270');
INSERT INTO Diamonds.TaxLog (TaxLogID, UserID, HostIPAddress, ProfileId, StartDate, EndDate) VALUES (1848596661, '1BCDE35', 'DC2AMAZ-9JPP28E', 1, '2021-06-07 23:33:03.547', '2021-06-07 23:33:03.560');
INSERT INTO Diamonds.TaxLog (TaxLogID, UserID, HostIPAddress, ProfileId, StartDate, EndDate) VALUES (1948586341, '1BCDE35', 'DC2AMAZ-9JPP28E', 1, '2021-06-08 00:33:08.847', '2021-06-08 00:33:08.853');
INSERT INTO Diamonds.TaxLog (TaxLogID, UserID, HostIPAddress, ProfileId, StartDate, EndDate) VALUES (2968584341, '1BCDE35', 'DC2AMAZ-9JPP28E', 1, '2021-06-08 01:12:55.690', '2021-06-08 01:12:57.217');


INSERT INTO Diamonds.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (9046941334, 1828776231, '0', 0, '0', 0, 0);
INSERT INTO Diamonds.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (9046941335, 1828776231, '1', 13, '1', 0, 65);
INSERT INTO Diamonds.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (9046941385, 1828776661, '0', 0, '0', 0, 0);
INSERT INTO Diamonds.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (9046941386, 1828776661, '1', 13, '1', 379.5, 65);
INSERT INTO Diamonds.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (9046952197, 1848596661, '0', 0, '0', 0, 0);
INSERT INTO Diamonds.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (9046952198, 1848596661, '1', 13, '1', 0, 65);
INSERT INTO Diamonds.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (9046953144, 1948586341, '0', 0, '0', 0, 0);
INSERT INTO Diamonds.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (9046953145, 1948586341, '1', 13, '1', 4798, 65);
INSERT INTO Diamonds.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (9047150034, 2968584341, '1', 1, '1', 9160, 1);
INSERT INTO Diamonds.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (9047150035, 2968584341, '1', 1, '1', 23500, 1);


INSERT INTO Diamonds.Address (BillToAddressId, CountryISO, County, Locality, State, ZipCode, Zip4) VALUES (7067256468, 'BR', null, null, null, null, null);
INSERT INTO Diamonds.Address (BillToAddressId, CountryISO, County, Locality, State, ZipCode, Zip4) VALUES (7067456467, 'BR', null, null, null, null, null);
INSERT INTO Diamonds.Address (BillToAddressId, CountryISO, County, Locality, State, ZipCode, Zip4) VALUES (7097959497, 'BR', null, null, null, null, null);
INSERT INTO Diamonds.Address (BillToAddressId, CountryISO, County, Locality, State, ZipCode, Zip4) VALUES (8097859487, 'BR', null, null, null, null, null);
INSERT INTO Diamonds.Address (BillToAddressId, CountryISO, County, Locality, State, ZipCode, Zip4) VALUES (8097859488, 'US', null, 'SANTA CLARA', 'CA', '94022', null);

INSERT INTO Diamonds.TelecomTransaction (TelecomTransactionID, TaxLogID, BillToAddressID, Charge, Date, InvoiceNumber) VALUES (1536853613, 1828776231, 7067256468, 1399, '2021-06-07 00:00:00.000', 0);
INSERT INTO Diamonds.TelecomTransaction (TelecomTransactionID, TaxLogID, BillToAddressID, Charge, Date, InvoiceNumber) VALUES (1536853623, 1828776661, 7067456467, 1399, '2021-06-07 00:00:00.000', 0);
INSERT INTO Diamonds.TelecomTransaction (TelecomTransactionID, TaxLogID, BillToAddressID, Charge, Date, InvoiceNumber) VALUES (1536854436, 1948586341, 8097859487, 13990, '2021-06-07 00:00:00.000', 0);
INSERT INTO Diamonds.TelecomTransaction (TelecomTransactionID, TaxLogID, BillToAddressID, Charge, Date, InvoiceNumber) VALUES (1536854376, 1848596661, 7097959497, 13990, '2021-06-07 00:00:00.000', 0);
INSERT INTO Diamonds.TelecomTransaction (TelecomTransactionID, TaxLogID, BillToAddressID, Charge, Date, InvoiceNumber) VALUES (1536867236, 2968584341, 8097859488, 270000, '2021-06-08 00:00:00.000', 0);
