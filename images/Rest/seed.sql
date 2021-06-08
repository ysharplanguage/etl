create schema Rest;

CREATE TABLE Rest.TaxLog (
	TaxLogId bigserial NOT NULL,
	UserId varchar NOT NULL,
	HostIPAddress varchar NOT NULL,
	StartDate timestamp NOT NULL,
	EndDate timestamp NOT NULL,
	ProfileId integer,
	CONSTRAINT TaxLog_PKey PRIMARY KEY (TaxLogId)
);


CREATE TABLE Rest.TaxData (
	TaxDataId bigserial NOT NULL,
	TaxLogId bigserial NOT NULL,
	Billable bool,
	CategoryId integer NOT NULL,
	Compliance bool,
	TaxAmount numeric(32,16) NULL,
	TaxType varchar NOT NULL,
	CONSTRAINT TaxData_PKey PRIMARY KEY (TaxDataId),
	CONSTRAINT FK_Rest_TaxLog_TaxData FOREIGN KEY (TaxLogId) REFERENCES Rest.TaxLog(TaxLogId)

);

CREATE TABLE Rest.Address (
	BillToAddressId bigserial NOT NULL,
	CountryISO bpchar(3),
	County varchar,
	Locality varchar,
	State bpchar(2),
	Zipcode varchar(16),
	Zip4 bpchar(4),
	CONSTRAINT Address_PKey PRIMARY KEY (BillToAddressId)
);

CREATE TABLE Rest.TelecomTransaction (
	TelecomTransactionId bigserial NOT NULL,
	TaxLogId bigserial NOT NULL,
	BillToAddressId bigserial NOT NULL,
	Charge numeric(32,16) NULL,
	Date timestamp NULL,
	InvoiceNumber varchar NULL,
	CONSTRAINT TelecomTransaction_PKey PRIMARY KEY (TelecomTransactionId),
	CONSTRAINT FK_Rest_TaxLog_TelecomTransaction FOREIGN KEY (TaxLogId) REFERENCES Rest.TaxLog(TaxLogId),
	CONSTRAINT FK_Rest_Address_TelecomTransaction FOREIGN KEY (BillToAddressId) REFERENCES Rest.Address(BillToAddressId)
);

INSERT INTO Rest.TaxLog (TaxLogID, UserID, HostIPAddress, ProfileId, StartDate, EndDate) VALUES (1708776231, 1000035, 'EC2AMAZ-8JPP28E', 1, '2021-06-08 00:30:55.873', '2021-06-08 00:30:57.353');
INSERT INTO Rest.TaxLog (TaxLogID, UserID, HostIPAddress, ProfileId, StartDate, EndDate) VALUES (1708776245, 1000035, 'EC2AMAZ-F2O3DAA', 1, '2021-06-08 00:31:01.257', '2021-06-08 00:31:01.270');
INSERT INTO Rest.TaxLog (TaxLogID, UserID, HostIPAddress, ProfileId, StartDate, EndDate) VALUES (1708777078, 1000035, 'EC2AMAZ-8JPP28E', 1, '2021-06-08 00:33:03.547', '2021-06-08 00:33:03.560');
INSERT INTO Rest.TaxLog (TaxLogID, UserID, HostIPAddress, ProfileId, StartDate, EndDate) VALUES (1708777138, 1000035, 'EC2AMAZ-8JPP28E', 1, '2021-06-08 00:33:08.847', '2021-06-08 00:33:08.853');
INSERT INTO Rest.TaxLog (TaxLogID, UserID, HostIPAddress, ProfileId, StartDate, EndDate) VALUES (1708791404, 1000035, 'EC2AMAZ-8JPP28E', 1, '2021-06-08 01:12:55.690', '2021-06-08 01:12:57.217');


INSERT INTO Rest.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (6046941334, 1708776231, '0', 0, '0', 0, 0);
INSERT INTO Rest.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (6046941335, 1708776231, '1', 13, '1', 0, 65);
INSERT INTO Rest.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (6046941385, 1708776245, '0', 0, '0', 0, 0);
INSERT INTO Rest.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (6046941386, 1708776245, '1', 13, '1', 279.8, 65);
INSERT INTO Rest.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (6046952197, 1708777078, '0', 0, '0', 0, 0);
INSERT INTO Rest.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (6046952198, 1708777078, '1', 13, '1', 0, 65);
INSERT INTO Rest.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (6046953144, 1708777138, '0', 0, '0', 0, 0);
INSERT INTO Rest.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (6046953145, 1708777138, '1', 13, '1', 2798, 65);
INSERT INTO Rest.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (6047150034, 1708791404, '1', 1, '1', 2160, 1);
INSERT INTO Rest.TaxData (TaxDataID, TaxLogID, Billable, CategoryID, Compliance, TaxAmount, TaxType) VALUES (6047150035, 1708791404, '1', 1, '1', 13500, 1);


INSERT INTO Rest.Address (BillToAddressId, CountryISO, County, Locality, State, ZipCode, Zip4) VALUES (1067259469, 'GB', null, null, null, null, null);
INSERT INTO Rest.Address (BillToAddressId, CountryISO, County, Locality, State, ZipCode, Zip4) VALUES (1067259476, 'GB', null, null, null, null, null);
INSERT INTO Rest.Address (BillToAddressId, CountryISO, County, Locality, State, ZipCode, Zip4) VALUES (1067260110, 'GB', null, null, null, null, null);
INSERT INTO Rest.Address (BillToAddressId, CountryISO, County, Locality, State, ZipCode, Zip4) VALUES (1067260165, 'GB', null, null, null, null, null);
INSERT INTO Rest.Address (BillToAddressId, CountryISO, County, Locality, State, ZipCode, Zip4) VALUES (1067271528, 'US', null, 'HOUSTON', 'Te', '77072', null);

INSERT INTO Rest.TelecomTransaction (TelecomTransactionID, TaxLogID, BillToAddressID, Charge, Date, InvoiceNumber) VALUES (1536853613, 1708776231, 1067259469, 1399, '2021-06-08 00:00:00.000', 0);
INSERT INTO Rest.TelecomTransaction (TelecomTransactionID, TaxLogID, BillToAddressID, Charge, Date, InvoiceNumber) VALUES (1536853623, 1708776245, 1067259476, 1399, '2021-06-08 00:00:00.000', 0);
INSERT INTO Rest.TelecomTransaction (TelecomTransactionID, TaxLogID, BillToAddressID, Charge, Date, InvoiceNumber) VALUES (1536854436, 1708777138, 1067260165, 13990, '2021-06-08 00:00:00.000', 0);
INSERT INTO Rest.TelecomTransaction (TelecomTransactionID, TaxLogID, BillToAddressID, Charge, Date, InvoiceNumber) VALUES (1536854376, 1708777078, 1067260110, 13990, '2021-06-08 00:00:00.000', 0);
INSERT INTO Rest.TelecomTransaction (TelecomTransactionID, TaxLogID, BillToAddressID, Charge, Date, InvoiceNumber) VALUES (1536867236, 1708791404, 1067271528, 270000, '2021-06-08 00:00:00.000', 0);