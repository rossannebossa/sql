USE FineLandTours
--This is a stored procedure to add a client to the database

GO
CREATE PROCEDURE InsertBookingInformation
(
@CIDPK int output,
@ClientID int,
@CName varchar (30),
@CSurname varchar (30),
@TelephoneNumber int,
@CellphoneNumber int,
@Suburb varchar (30),
@City varchar (30),
@PostalCode int,
@InvoiceNumberPK int,
@CIDFK int,
@IDFK int,
@DateMade date,
@BookingFee money,
@TourCodeFK int
)

AS
DECLARE @intNumber int
SET @intNumber = 1
DECLARE @MaxCapacity int
SET @MaxCapacity = (SELECT Capacity
					FROM Tour)

WHILE @intNumber <= @MaxCapacity

BEGIN
INSERT INTO Client
(ClientID, CName, CSurname, TelephoneNumber, CellphoneNumber, Suburb, City, PostalCode)
VALUES
(@ClientID, @CName, @CSurname, @TelephoneNumber, @CellphoneNumber, @Suburb, @City, @PostalCode)

INSERT INTO Booking
(CIDFK, IDFK, DateMade, BookingFee, TourCodeFK)
VALUES
(@CIDFK, @IDFK, @DateMade, @BookingFee, @TourCodeFK)
END