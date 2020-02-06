select * from tblUserDetails
spInsertToTables

alter PROCEDURE spInsertToTables
       -- Add the parameters for the stored procedure here
       @FirstName nvarchar(50),
       @LastName nvarchar(50),
		@Email nvarchar(50),
       @age int,
	   @address nvarchar(200),
	   @qualification nvarchar(50),
	   @city nvarchar(50),
	   @pincode nvarchar(50),
	   @password nvarchar(50)
      
AS
BEGIN
       -- SET NOCOUNT ON added to prevent extra result sets from
       -- interfering with SELECT statements.
       SET NOCOUNT ON;

    -- Insert statements for procedure here
       INSERT INTO tblUserDetails
              (firstName, lastName, Email,age, address,qualification,city,pincode,password)
       VALUES
              (@FirstName,@LastName, @Email, @age, @address,@qualification,@city,@pincode,@password)
END