select * from dbo.Customers

select * from dbo.Mechanics

select * from dbo.Service_Requests

select * from dbo.Service_Types

select * from dbo.Vehicle_Brand

select * from dbo.Vehicle_Category

select * from dbo.Vehicle_Model

select * from dbo.Vehicles




-- Vehicle_Brand.category_id → Vehicle_Category.category_id
ALTER TABLE Vehicle_Brand
ADD CONSTRAINT FK_Vehicle_Brand_Category
FOREIGN KEY (category_id) REFERENCES Vehicle_Category(category_id);

-- Vehicle_Model.brand_id → Vehicle_Brand.brand_id
ALTER TABLE Vehicle_Model
ADD CONSTRAINT FK_Vehicle_Model_Brand
FOREIGN KEY (brand_id) REFERENCES Vehicle_Brand(brand_id);

-- Vehicles.model_id → Vehicle_Model.model_id
ALTER TABLE Vehicles
ADD CONSTRAINT FK_Vehicles_Model
FOREIGN KEY (model_id) REFERENCES Vehicle_Model(model_id);

-- Service_Requests.vehicle_id → Vehicles.vehicle_id
ALTER TABLE Service_Requests
ADD CONSTRAINT FK_ServiceRequests_Vehicle
FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id);

-- Service_Requests.category_id → Vehicle_Category.category_id
ALTER TABLE Service_Requests
ADD CONSTRAINT FK_ServiceRequests_Category
FOREIGN KEY (category_id) REFERENCES Vehicle_Category(category_id);

-- Service_Requests.Vehicle_Brand → Vehicle_Brand.brand_id
ALTER TABLE Service_Requests
ADD CONSTRAINT FK_ServiceRequests_Brand
FOREIGN KEY (Vehicle_Brand) REFERENCES Vehicle_Brand(brand_id);

-- Service_Requests.Vehicle_Model → Vehicle_Model.model_id
ALTER TABLE Service_Requests
ADD CONSTRAINT FK_ServiceRequests_Model
FOREIGN KEY (Vehicle_Model) REFERENCES Vehicle_Model(model_id);

-- Service_Requests.service_type_id → Service_Types.service_type_id
ALTER TABLE Service_Requests
ADD CONSTRAINT FK_ServiceRequests_ServiceType
FOREIGN KEY (service_type_id) REFERENCES Service_Types(service_type_id);

-- Service_Requests.mechanic_id → Mechanics.mechanic_id
ALTER TABLE Service_Requests
ADD CONSTRAINT FK_ServiceRequests_Mechanic
FOREIGN KEY (mechanic_id) REFERENCES Mechanics(mechanic_id);

-- Service_Requests.customer_id → Customers.customer_id
ALTER TABLE Service_Requests
ADD CONSTRAINT FK_ServiceRequests_Customer
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id);
select * from dbo.Stg_Customers
drop database VehicleService_SourceDB
select count(*) from dbo.Stg_Customers
select count(*) from dbo.Stg_Mechanic
select count(*) from dbo.Stg_Vehicle_Category
select Count(*) from dbo.Stg_Service_Request
select Count(*) from dbo.Stg_Service_Type
select Count(*) from dbo.Stg_Vehicle
select Count(*) from dbo.Stg_Vehicle_Brand
select Count(*) from dbo.Stg_Vehicle_Model
select * from dbo.StgVehicleCategory



drop table dbo.Stg_Customer

select * from dbo.Stg_Vehicle
select * from dbo.Stg_Mechanic
select * from dbo.Stg_Vehicle
drop table dbo.StgServiceRequest
drop table dbo.Stg_Vehicle
drop table dbo.[OLE DB Destination]
delete from dbo.StgVehicleBrand
delete from dbo.StgVehicleModel
delete from dbo.StgCustomers
drop table dbo.Stg_Vehicle
delete from dbo.Stg_Vehicle



-------------------------------

CREATE TABLE Dim_Customers (
    CustomerSK INT PRIMARY KEY IDENTITY(1,1),
    AlternateCustomerID INT,                           
    CustomerName NVARCHAR(50),
    Email NVARCHAR(50),
    Phone FLOAT,
    Address NVARCHAR(100),
    JoinDate DATE,
    StartDate DATETIME,                        
    EndDate DATETIME,                          
                                  l
);

drop table VehicleService_Source_DB.dbo.Customers
delete from dbo.Stg_Customer

ALTER DATABASE [VehicleService_DW] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE [VehicleService_DW];

select * from VehicleService_Source_DB.dbo.Customer
select * from VehicleService_Source_DB.dbo.Mechanic
select * from VehicleService_Source_DB.dbo.Service_Types
select * from VehicleService_Source_DB.dbo.Service_Requests]
select * from [dbo].[Vehicle_Brand]
select * from VehicleService_Source_DB.dbo.Vehicle_Category
select * from VehicleService_Source_DB.dbo.Vehicle_Model
select * from VehicleService_Source_DB.dbo.Vehicles


select * from dbo.Stg_Customer
select count(*) from VehicleService_Staging_DB.dbo.Stg_Customer

select * from Stg_Mechanic
select count(*) from VehicleService_Staging_DB.dbo.Stg_Mechanic


select * from VehicleService_Staging_DB.dbo.Stg_Vehicle_Category
select count(*) from VehicleService_Staging_DB.dbo.Stg_Vehicle_Category

select * from VehicleService_Staging_DB.dbo.Stg_Vehicle_Brand
select count(*) from VehicleService_Staging_DB.dbo.Stg_Vehicle_Brand

select * from VehicleService_Staging_DB.dbo.Stg_Vehicle_Model
select count(*) from VehicleService_Staging_DB.dbo.Stg_Vehicle_Model


select * from VehicleService_Staging_DB.dbo.Stg_Vehicle
select count(*) from VehicleService_Staging_DB.dbo.Stg_Vehicle


select * from VehicleService_Staging_DB.dbo.Stg_Request_Service
select count(*) from VehicleService_Staging_DB.dbo.Stg_Request_Service


select * from VehicleService_Staging_DB.dbo.Stg_Service_Type
select count(*) from VehicleService_Staging_DB.dbo.Stg_Service_Type

ALTER TABLE [dbo].[Service_Requests]
ALTER COLUMN [charge_per_hour] MONEY;



ALTER TABLE [dbo].[Service_Requests]
DROP COLUMN salary FLOAT;




ALTER TABLE [dbo].[Fact_Service_Request]
DROP COLUMN [Vehicle_Model_Key];

ALTER TABLE [dbo].[Fact_Service_Request]
ADD COLUMN DateKey INT;
AFTER [Customer_Key];



