USE [master]
GO
/****** Object:  Database [YSD_13092018]    Script Date: 10/16/2018 5:57:35 PM ******/
CREATE DATABASE [YSD_13092018]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'YSD_13092018', FILENAME = N'D:\PLESKMSSQL\Data\YSD_13092018_b64d990e054d4369b1eb5eef167d56c4.mdf' , SIZE = 9280KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'YSD_13092018_log', FILENAME = N'D:\PLESKMSSQL\Data\YSD_13092018_97e73f78d08f436d939caf59cb145eb9.ldf' , SIZE = 9216KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [YSD_13092018] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [YSD_13092018].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [YSD_13092018] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [YSD_13092018] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [YSD_13092018] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [YSD_13092018] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [YSD_13092018] SET ARITHABORT OFF 
GO
ALTER DATABASE [YSD_13092018] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [YSD_13092018] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [YSD_13092018] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [YSD_13092018] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [YSD_13092018] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [YSD_13092018] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [YSD_13092018] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [YSD_13092018] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [YSD_13092018] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [YSD_13092018] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [YSD_13092018] SET  DISABLE_BROKER 
GO
ALTER DATABASE [YSD_13092018] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [YSD_13092018] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [YSD_13092018] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [YSD_13092018] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [YSD_13092018] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [YSD_13092018] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [YSD_13092018] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [YSD_13092018] SET RECOVERY FULL 
GO
ALTER DATABASE [YSD_13092018] SET  MULTI_USER 
GO
ALTER DATABASE [YSD_13092018] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [YSD_13092018] SET DB_CHAINING OFF 
GO
ALTER DATABASE [YSD_13092018] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [YSD_13092018] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [YSD_13092018]
GO
/****** Object:  User [chawTech]    Script Date: 10/16/2018 5:57:39 PM ******/
CREATE USER [chawTech] FOR LOGIN [chawTech] WITH DEFAULT_SCHEMA=[chawTech]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [chawTech]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [chawTech]
GO
ALTER ROLE [db_datareader] ADD MEMBER [chawTech]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [chawTech]
GO
/****** Object:  Schema [chawTech]    Script Date: 10/16/2018 5:57:40 PM ******/
CREATE SCHEMA [chawTech]
GO
/****** Object:  StoredProcedure [chawTech].[ad_deleteBikeType]    Script Date: 10/16/2018 5:57:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [chawTech].[ad_deleteBikeType]

@Id int

as

begin

update tblBikeType set IsActive = 0 where Id=@Id

end
GO
/****** Object:  StoredProcedure [chawTech].[ad_deleteCountry]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_deleteCountry]

@Id int

as

begin

update tblCountry set IsActive = 0 where Id=@Id

end


GO
/****** Object:  StoredProcedure [chawTech].[ad_deleteGraphicsImage]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [chawTech].[ad_deleteGraphicsImage]



@Id int



as



begin



update tblGraphicsImage set IsActive = 0 where Id=@Id



end
GO
/****** Object:  StoredProcedure [chawTech].[ad_deleteMaster]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [chawTech].[ad_deleteMaster]

@Id int

as

begin

update tblMaster set IsActive= 0 where Id=@Id

end

GO
/****** Object:  StoredProcedure [chawTech].[ad_deleteState]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [chawTech].[ad_deleteState]

@Id int

as

begin

update tblProvince set IsActive = 0 where Id=@Id

end


GO
/****** Object:  StoredProcedure [chawTech].[ad_deleteStoreProductType]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [chawTech].[ad_deleteStoreProductType]



@Id int



as



begin



update tblBikeTypeProductType set IsActive = 0 where Id=@Id



end
GO
/****** Object:  StoredProcedure [chawTech].[ad_deleteUser]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [chawTech].[ad_deleteUser]

@Id int

as

begin

update tblUser set IsActive = 0 where Id=@Id

end
GO
/****** Object:  StoredProcedure [chawTech].[ad_getBikeTypeDetails]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_getBikeTypeDetails]

@Id int

as

begin

if(@Id > 0)

begin

select * from [dbo].[tblBikeType] where Id = @Id and IsActive = 1

end

else

begin

select * from [dbo].[tblBikeType] where IsActive = 1

end

end
GO
/****** Object:  StoredProcedure [chawTech].[ad_getCountry]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_getCountry]

@Id int

as

begin

if(@Id>0)
begin

select * from tblCountry where IsActive= 1 and Id =@Id

end

else

begin

select * from tblCountry where IsActive= 1

end
end
GO
/****** Object:  StoredProcedure [chawTech].[ad_GetGraphicsImage]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_GetGraphicsImage]

@Id int

as



begin

if(@Id>0)

begin

select Id as Value, Desc0 as Text from tblGraphicsImage where Id= @Id

end

else

begin

select Id as Value, Desc0 as Text from tblGraphicsImage 

end

end

GO
/****** Object:  StoredProcedure [chawTech].[ad_getGraphicsImages]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_getGraphicsImages]

@Id int

as

begin

if(@Id > 0)

begin

select * from [dbo].[tblGraphicsImage] where Id = @Id and IsActive = 1

end

else

begin

select * from [dbo].[tblGraphicsImage] where IsActive = 1

end



end
GO
/****** Object:  StoredProcedure [chawTech].[ad_getImage]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [chawTech].[ad_getImage]

@Image nvarchar(max)

as

begin

select * from tblBikeType  where Image = @Image

end
GO
/****** Object:  StoredProcedure [chawTech].[ad_getMaster]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_getMaster]

@Id int

as



begin



if(@Id > 0)



begin



select * from tblMaster where IsActive= 1 and Id=@Id 



end



else



begin



select * from tblMaster where IsActive= 1



end



end



GO
/****** Object:  StoredProcedure [chawTech].[ad_GetProduct]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_GetProduct]

@Id int

as

begin

select Id as Value, Desc0 as Text from tblBikeTypeProductType where bikeTypeId = @Id

end
GO
/****** Object:  StoredProcedure [chawTech].[ad_GetProductInformation]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_GetProductInformation]

@Id int

as

begin

if(@Id > 0)

begin

select pr.Id, pr.bikeTypeId as storeId, pr.bikeProductTypeId as productTypeId, pr.bikeProductId as productId, 

pr.Desc0,pr.PartNumber, pr.Price,pr.ImageId,pr.SubImageId, pr.Image,bt.Desc0 as StoreName,

bpt.Desc0  as ProductName,bp.Desc0 as Product

from tblProductInfo pr 

left join tblBikeType bt on bt.Id = pr.bikeTypeId

left join tblBikeTypeProductType bpt on bpt.Id = pr.bikeProductTypeId

left join tblBikeProduct bp on bp.Id = pr.bikeProductId

where pr.IsActive = 1  and pr.Id = @Id

end

select pr.Id, pr.bikeTypeId as storeId, pr.bikeProductTypeId as productTypeId, pr.bikeProductId as productId, 

pr.Desc0,pr.PartNumber, pr.Price,pr.ImageId,pr.SubImageId, pr.Image,bt.Desc0 as StoreName,

bpt.Desc0  as ProductName,bp.Desc0 as Product

from tblProductInfo pr 

left join tblBikeType bt on bt.Id = pr.bikeTypeId

left join tblBikeTypeProductType bpt on bpt.Id = pr.bikeProductTypeId

left join tblBikeProduct bp on bp.Id = pr.bikeProductId

where pr.IsActive = 1 

end
GO
/****** Object:  StoredProcedure [chawTech].[ad_getState]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_getState]



@Id int



as



begin



if(@Id>0)

begin



select p.Id,p.CountryId,p.Name,c.Name as countryName from tblProvince p

left join tblCountry c on c.Id = p.CountryId

where p.IsActive= 1 and p.Id =@Id


end



else



begin


select p.Id,p.CountryId,p.Name,c.Name as countryName from tblProvince p

left join tblCountry c on c.Id = p.CountryId

where p.IsActive= 1 
end

end
GO
/****** Object:  StoredProcedure [chawTech].[ad_GetStore]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [chawTech].[ad_GetStore]

as

begin

select Id as Value, Desc0 as Text from tblBikeType

end
GO
/****** Object:  StoredProcedure [chawTech].[ad_GetStoreProduct]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_GetStoreProduct]

@Id int

as

begin

if(@Id > 0)

begin

select bp.Id, bp.bikeTypeId as storeId, bp.Code, bp.Desc0,bp.Image,bt.Desc0 as StoreName

from tblBikeTypeProductType  bp

left join tblBikeType bt on bt.Id = bp.bikeTypeId

where bp.IsActive = 1  and bp.Id = @Id

end

select bp.Id, bp.bikeTypeId as storeId, bp.Code, bp.Desc0,bp.Image,bt.Desc0 as StoreName

from tblBikeTypeProductType  bp

left join tblBikeType bt on bt.Id = bp.bikeTypeId

where bp.IsActive = 1  

end
GO
/****** Object:  StoredProcedure [chawTech].[ad_GetStoreProductModel]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_GetStoreProductModel]

@Id int

as

begin

if(@Id > 0)

begin

select bm.Id, bm.bikeTypeId as storeId,bm.bikeProductTypeId as productId, bm.Code, bm.Desc0,

bt.Desc0 as StoreName, bp.Desc0  as ProductName

from tblBikeProduct bm 

left join tblBikeType bt on bt.Id = bm.bikeTypeId

left join tblBikeTypeProductType bp on bp.Id = bm.bikeProductTypeId

where bm.IsActive = 1  and bm.Id = @Id

end

select bm.Id, bm.bikeTypeId as storeId,bm.bikeProductTypeId as productId, bm.Code, bm.Desc0,

bt.Desc0 as StoreName, bp.Desc0  as ProductName

from tblBikeProduct bm 

left join tblBikeType bt on bt.Id = bm.bikeTypeId

left join tblBikeTypeProductType bp on bp.Id = bm.bikeProductTypeId

where bm.IsActive = 1 

end
GO
/****** Object:  StoredProcedure [chawTech].[ad_getStoreProductTypeImage]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_getStoreProductTypeImage]



@Image nvarchar(max)



as



begin



select * from tblBikeTypeProductType  where Image = @Image



end
GO
/****** Object:  StoredProcedure [chawTech].[ad_Product]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_Product]

@Id int

as

begin

select Id as Value, Desc0 as Text from tblBikeProduct where bikeProductTypeId = @Id

end
GO
/****** Object:  StoredProcedure [chawTech].[ad_updateBikeType]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_updateBikeType]

@Id int,

@Desc0 nvarchar(250),

@Image nvarchar(Max)

as

begin

if(@Id > 0)

begin

update tblBikeType set Desc0 = @Desc0, Image = @Image where Id=@Id

end

else

begin

insert into tblBikeType(Code, Desc0, Image)

values(Upper(REPLACE(@Desc0,' ','')),@Desc0,@Image)

end

end
GO
/****** Object:  StoredProcedure [chawTech].[ad_updateCountry]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [chawTech].[ad_updateCountry]

@Id int,

@Name nvarchar(250),

@Code nvarchar(10)

as

begin

if(@Id > 0)

begin

update tblCountry set Name = @Name,Code = @Code where Id=@Id

end

else

begin

insert into tblCountry(Code, Name)

values(@Code,@Name)

end

end

GO
/****** Object:  StoredProcedure [chawTech].[ad_updateCustomGraphics]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_updateCustomGraphics]

@Id int,
@desc0 nvarchar(Max)=null,
@overlay nvarchar(Max)=null,
@blank nvarchar(Max)=null,
@mx nvarchar(Max)=null,
@sx nvarchar(Max)=null,
@fim nvarchar(Max)=null,
@mx_name nvarchar(Max)=null,
@sx_name nvarchar(Max)=null,
@fim_name nvarchar(Max)=null,
@name nvarchar(Max)=null,
@photo nvarchar(Max)=null,
@over_accent_1 nvarchar(Max)=null,
@over_accent_2 nvarchar(Max)=null,
@over_ff_fill nvarchar(Max)=null,
@over_rf_fill nvarchar(Max)=null,
@main nvarchar(Max)=null,
@accent_1 nvarchar(Max)=null,
@accent_2 nvarchar(Max)=null,
@ff_fill nvarchar(Max)=null,
@rf_fill nvarchar(Max)=null,
@swingarm nvarchar(Max)=null,
@bg nvarchar(Max)=null

as
begin
if(@Id > 0)
begin

update tblGraphicsImage set desc0 = @desc0, overlay = @overlay,blank=@blank,mx=@mx,sx=@sx,fim=@fim,mx_name=@mx_name,

sx_name=@sx_name,fim_name=@fim_name,name=@name,photo=@photo,over_accent_1=@over_accent_1,over_accent_2=@over_accent_2,

over_ff_fill=@over_ff_fill,over_rf_fill=@over_rf_fill,main=@main,accent_1=@accent_1,accent_2=@accent_2,ff_fill=@ff_fill,

rf_fill=@rf_fill,swingarm=@swingarm,bg=@bg

where Id=@Id

SELECT @Id 

end

else

begin

insert into tblGraphicsImage(desc0, overlay, blank, mx, sx, fim, mx_name, sx_name, fim_name, name, photo, over_accent_1,
over_accent_2, over_ff_fill, over_rf_fill, main, accent_1, accent_2, ff_fill, rf_fill, swingarm, bg)

values(@desc0, @overlay, @blank,@mx, @sx, @fim, @mx_name, @sx_name, @fim_name, @name, @photo, @over_accent_1,
@over_accent_2, @over_ff_fill, @over_rf_fill, @main, @accent_1, @accent_2, @ff_fill, @rf_fill, @swingarm, @bg)

SELECT IDENT_CURRENT('tblGraphicsImage')

end

end
GO
/****** Object:  StoredProcedure [chawTech].[ad_updateMaster]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [chawTech].[ad_updateMaster]

@Id int,

@Name nvarchar(250),

@IdentityName nvarchar(250)

as

begin

if(@Id > 0)

begin

update tblMaster set Desc0 = @Name where Id=@Id

end

else

begin

insert into tblMaster(IdentityCode, Desc0)

values(@IdentityName,@Name)

end

end

GO
/****** Object:  StoredProcedure [chawTech].[ad_updateParentMaster]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [chawTech].[ad_updateParentMaster]

@Id int,

@Name nvarchar(250)

as

begin

if(@Id > 0)

begin

update tblParentMaster set Name = @Name where Id=@Id

end

else

begin

insert into tblParentMaster(Code, Name)

values(Upper(REPLACE(@Name,' ','')),@Name)

end

end
GO
/****** Object:  StoredProcedure [chawTech].[ad_updateProduct]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_updateProduct]

@Id int,

@Desc0 nvarchar(250),

@storeId int,

@productId int

as

begin

if(@Id > 0)

begin

update tblBikeProduct set Desc0 = @Desc0, bikeTypeId = @storeId ,bikeProductTypeId = @productId where Id=@Id

end

else

begin

insert into tblBikeProduct(bikeTypeId,bikeProductTypeId,Code, Desc0)

values(@storeId,@productId,Upper(REPLACE(@Desc0,' ','')),@Desc0)

end

end
GO
/****** Object:  StoredProcedure [chawTech].[ad_updateState]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [chawTech].[ad_updateState]

@Id int,

@countryId int,

@Name nvarchar(250)

as

begin

if(@Id > 0)

begin

update tblProvince set Name = @Name,CountryId = @countryId where Id=@Id

end

else

begin

insert into tblProvince(CountryId, Name)

values(@countryId,@Name)

end

end

GO
/****** Object:  StoredProcedure [chawTech].[ad_updateStoreProductType]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_updateStoreProductType]



@Id int,



@Desc0 nvarchar(250),



@Image nvarchar(Max),



@storeId int



as



begin



if(@Id > 0)



begin



update tblBikeTypeProductType set Desc0 = @Desc0, Image = @Image,bikeTypeId=@storeId where Id=@Id



end



else



begin



insert into tblBikeTypeProductType(bikeTypeId,Code, Desc0, Image)



values(@storeId,Upper(REPLACE(@Desc0,' ','')),@Desc0,@Image)



end



end
GO
/****** Object:  StoredProcedure [chawTech].[ad_User]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[ad_User]

@Id int

as

begin

if(@Id > 0)

begin

select u.Id as userId, u.UserName as userName,u.Email as email,a.FName,a.LName,a.Company,a.Address1, a.Address2,

a.City,a.Zip,a.Phone,a.IsDefault,a.CountryId,c.Name as countryName,c.Code as countryCode,a.ProvinceId as stateId,

p.Name as stateName

from tblUser u

left join tblAddress  a on a.UserId = u.Id

left join tblCountry  c on  c.Id = a.CountryId

left join tblProvince  p on  p.Id = a.ProvinceId

where u.IsActive =1 and u.Role is null and u.Id = @Id

end

else

begin

select u.Id as userId, u.UserName as userName,u.Email as email,a.FName,a.LName,a.Company,a.Address1, a.Address2,

a.City,a.Zip,a.Phone,a.IsDefault,a.CountryId,c.Name as countryName,c.Code as countryCode,a.ProvinceId as stateId,

p.Name as stateName

from tblUser u

left join tblAddress  a on a.UserId = u.Id

left join tblCountry  c on  c.Id = a.CountryId

left join tblProvince  p on  p.Id = a.ProvinceId

where u.IsActive =1 and  u.Role is null 

end

end
GO
/****** Object:  StoredProcedure [chawTech].[sp_getBikeTypeDetails]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [chawTech].[sp_getBikeTypeDetails]

as

begin

select * from [dbo].[tblBikeType] where IsActive = 1

end


GO
/****** Object:  StoredProcedure [dbo].[ad_Login]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ad_Login]

@email nvarchar(250) = null,

@password nvarchar(250) = null

as

begin

select ur.Id, ur.username, ur.email from tblUser ur

where ur.Email = @email and ur.Password= @password

end
GO
/****** Object:  StoredProcedure [dbo].[sp_AddToCart]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sp_AddToCart]

@nameofRider nvarchar(250) = null, 
@typeOfLaminate int = null, 
@raceNumber nvarchar(50) = null, 
@numberColor int = null, 
@backGroundColor int = null, 
@bikeBrand int = null, 
@bikeSize nvarchar(50) = null, 
@bikeYear nvarchar(4) = null, 
@primary int = null, 
@secondary int = null, 
@frontFender nvarchar(50) = null, 
@forkGuards nvarchar(50) = null, 
@shroud nvarchar(50) = null, 
@airBox nvarchar(50) = null, 
@rearFender nvarchar(50) = null, 
@accent1 nvarchar(50) = null, 
@accent2 nvarchar(50) = null,
@Instructions nvarchar(max)= null, 
@chkAgree bit = null,
@swingArm nvarchar(50) = null,  
@graphicsSkit int = null,
@fileUpload text = null,
@bikeTypeId int = null, 
@bikeProductTypeId int = null,
@bikeModalId int = null,
@quantity int = null,
@createdId int = null,
@Price decimal = null,
@Image text = null
as

begin

insert into tblGraphicsProductDetails(bikeModalId, bikeTypeId, bikeProductTypeId, typeOfLaminateId, numberColorId, RiderName, 
RaceNumber, backGroundColorId, brandId, BikeSize, BikeYear, primaryColorId, secondaryColorId, accent1, accent2, 
FrontFender, ForkGuards, Shroud, AirBox, RearFender, SwingArm, UploadFile, 
Instructions, IsAdmit, graphicsKitId,quantity,createdId,Price , Image,createdDate)

values(@bikeModalId, @bikeTypeId, @bikeProductTypeId, @typeOfLaminate, @numberColor, @nameofRider, 
@raceNumber, @backGroundColor, @bikeBrand, @bikeSize, @bikeYear, @primary, @secondary, @accent1, @accent2, 
@frontFender, @forkGuards, @shroud, @airBox, @rearFender, @swingArm, @fileUpload, 
@Instructions, @chkAgree, @graphicsSkit,@quantity,@createdId,@Price,@Image,getdate())

SELECT IDENT_CURRENT('tblGraphicsProductDetails')
end


GO
/****** Object:  StoredProcedure [dbo].[sp_CheckToken]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_CheckToken]

@token nvarchar(250)

as

begin

select * from tbl_Token where Token = @token

end

GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteAddress]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_DeleteAddress]
@Id int
as
begin
delete from tblAddress where Id=@Id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteAddToCart]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_DeleteAddToCart]
@Id int
as

begin

delete from tblGraphicsProductDetails where Id= @Id 

end

GO
/****** Object:  StoredProcedure [dbo].[sp_GetAddress]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sp_GetAddress]



@userId int,



@Id int



as



begin



if(@Id > 0)



begin



select ad.Id, ad.UserId, ad.FName, ad.LName, ad.Company, ad.Address1, ad.Address2, ad.City, ad.CountryId, 



ad.ProvinceId, ad.Zip, ad.Phone, ad.IsDefault , c.Name as Country,p.Name as Province 



from tblAddress ad



left join tblCountry  c on c.Id = ad.CountryId



left join tblProvince p on p.Id = ad.ProvinceId



where ad.UserId = @userId and ad.Id = @Id



end



else 



begin



select ad.Id, ad.UserId, ad.FName, ad.LName, ad.Company, ad.Address1, ad.Address2, ad.City, ad.CountryId, 



ad.ProvinceId, ad.Zip, ad.Phone, ad.IsDefault , c.Name as Country,p.Name as Province 



from tblAddress ad



left join tblCountry  c on c.Id = ad.CountryId



left join tblProvince p on p.Id = ad.ProvinceId



where UserId = @userId 



end



end




GO
/****** Object:  StoredProcedure [dbo].[sp_GetAddToCartDetail]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sp_GetAddToCartDetail]

@userId int 

as

select GP.Id, GP.bikeTypeId, GP.bikeProductTypeId, GP.bikeModalId, GP.bikeProductId, GP.productInfoId, GP.typeOfLaminateId,

GP.numberColorId, GP.RiderName, GP.RaceNumber, GP.backGroundColorId, GP.brandId, GP.BikeSize, GP.BikeYear, GP.primaryColorId, 

GP.secondaryColorId, GP.accent1, GP.accent2, GP.accentOneColorId, GP.accentTwoColorId, GP.FrontFender, GP.ForkGuards, GP.Shroud, 

GP.AirBox, GP.RearFender, GP.SwingArm, GP.UploadFile, GP.Instructions, GP.IsAdmit, GP.graphicsKitId, GP.Price, GP.quantity, GP.Image, 

GP.CreatedId, GP.CreatedDate,BT.DESC0 as BikeType,PT.DESC0 as BikeProductType,BM.ModalName as BikeModal,LM.DESC0 as typeOfLaminate,

NC.DESC0 as numberColor,GC.DESC0 as backGroundColor,BR.DESC0 as brand,PC.DESC0 as primaryColor,SC.DESC0 as secondaryColor,

GK.DESC0 as graphicsKit

from tblGraphicsProductDetails GP

left join tblBikeType BT on BT.Id = GP.bikeTypeId

left join tblBikeTypeProductType PT on PT.Id = GP.bikeProductTypeId

left join tblBikeModal BM on BM.Id = GP.bikeModalId

left join tblBikeProduct BP on BP.Id = GP.bikeProductId

left join tblMaster LM on LM.Id = GP.typeOfLaminateId

left join tblMaster NC on NC.Id = GP.numberColorId

left join tblMaster GC on GC.Id = GP.backGroundColorId

left join tblMaster BR on BR.Id = GP.brandId

left join tblMaster PC on PC.Id = GP.primaryColorId

left join tblMaster SC on SC.Id = GP.secondaryColorId

left join tblMaster GK on GK.Id = GP.graphicsKitId

where GP.CreatedId = @userId order by  GP.CreatedDate desc

GO
/****** Object:  StoredProcedure [dbo].[sp_GetCity]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_GetCity]
@countryId int
as
begin
select * from tblCity where CountryId = @countryId
end

GO
/****** Object:  StoredProcedure [dbo].[sp_GetCountry]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_GetCountry]
as
begin
select * from tblCountry
end

GO
/****** Object:  StoredProcedure [dbo].[sp_GetDetalis]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_GetDetalis]

@identityId int

as

begin

select Id  as Value,identityCode,Desc0  as Text from tblMaster where IdentityId  = @identityId

end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLogin]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_GetLogin] -- exec sp_GetLogin 'sunitaa@chawtechsolutions.com','55d5b86b45c669aa1148d96fac468ead','0f638f3ba217647ca0da8a9675f9493b'

@email nvarchar(250) = null,

@password nvarchar(250) = null,

@token nvarchar(250)= null

as

begin


select ur.Id, ur.username, ur.email,ur.remenberme ,tk.token from tblUser ur

inner join tbl_Token tk on tk.email = ur.email

where ur.Email = @email and ur.Password= @password


if exists(select * from tblUser where Email = @email and Password= @password)

begin

update tbl_Token set Token = @token,Date=getdate() where Email = @email

end

end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetModel]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sp_GetModel]
as
select Id as Value,ModalName as Text from tblBikeModal order by ModalName 


GO
/****** Object:  StoredProcedure [dbo].[sp_GetProduct]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sp_GetProduct]

@bikeModelId int,
@bikeProductId int

as

begin

--if(@bikeProductId > 0 )
 
--begin

--select Id as Value,Desc0 as Text from tblBikeProduct where bikeModalId = @bikeModelId and Id = @bikeProductId

--end

--else

--begin

select Id as Value,Desc0 as Text from tblBikeProduct where bikeModalId = @bikeModelId

--end

end


GO
/****** Object:  StoredProcedure [dbo].[sp_GetProvince]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sp_GetProvince]
--@countryId int
as
begin
select * from tblProvince --where CountryId = @countryId
end

GO
/****** Object:  StoredProcedure [dbo].[sp_GetToken]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sp_GetToken]

@email nvarchar(250)

as

begin

select ur.Id, ur.username, ur.email,ur.remenberme,tk.token from tblUser ur

inner join tbl_Token tk on tk.email = ur.email

where ur.email = @email

end




GO
/****** Object:  StoredProcedure [dbo].[sp_GetUser]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sp_GetUser] -- exec sp_GetUser 'admin',''

--@username nvarchar(250) = null,
@email nvarchar(250) = null

as

begin

declare @id int

set @id = (select Id from tblUser where  Email= @email) --UserName = @username or

SELECT @id

end
GO
/****** Object:  StoredProcedure [dbo].[sp_Registeration]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Registeration]

@username nvarchar(250) = null,
@email nvarchar(250) = null,
@password nvarchar(250) = null,
@confirmpassword nvarchar(250) = null,
@token nvarchar(250) = null,
@systemip nvarchar(50) = null

as

begin

insert into tblUser(UserName, Email, Password, ConfirmPassword, IsActive)
values(@username,@email,@password,@confirmpassword,1)

insert into tbl_Token(Token, Email, Date,SystemIP)
values(@token,@email,getdate(),@systemip)

SELECT IDENT_CURRENT('tblUser')
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Service]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Service] -- exec sp_ServiceDetails 2,1
@bikeTypeId int = null,
@Id int = null
as
begin
if(@bikeTypeId > 0 and @Id > 0)
begin
select BP.Id, BP.bikeTypeId, BP.Code, BP.Desc0, BP.Image,BM.Id as bikeModalId,BPr.Id as bikeProductTypeId

from tblBikeTypeProductType BP

left join tblBikeType on tblBikeType.Id = BP.bikeTypeId

left join tblBikeModal BM on BM.bikeProductTypeId = BP.Id

left join tblBikeProduct BPr on BPr.bikeProductTypeId = BP.Id
where BP.bikeTypeId  = @bikeTypeId and BP.Id = @Id
end
else
begin
select BP.Id, BP.bikeTypeId, BP.Code, BP.Desc0, BP.Image,BM.Id as bikeModalId,BPr.Id as bikeProductTypeId

from tblBikeTypeProductType BP

left join tblBikeType on tblBikeType.Id = BP.bikeTypeId

left join tblBikeModal BM on BM.bikeProductTypeId = BP.Id

left join tblBikeProduct BPr on BPr.bikeProductTypeId = BP.Id





end



end
GO
/****** Object:  StoredProcedure [dbo].[sp_ServiceDetails]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ServiceDetails] -- exec sp_ServiceDetails 1,0

@bikeModalId int = null,

@bikeProductId int = null

as

begin

if(@bikeModalId > 0 and @bikeProductId > 0)

begin

select pf.Id,pf.bikeTypeId, pf.bikeProductTypeId, pf.bikeModalId, pf.bikeProductId, pf.PartNumber, pf.Price,

 pf.Image,BP.Code,BP.Desc0

from tblProductInfo pf

left join tblBikeModal BM on BM.Id = pf.bikeModalId 

left join tblBikeProduct BP on BP.Id = pf.bikeProductId 

where pf.bikeModalId = @bikeModalId and pf.bikeProductId = @bikeProductId

end
else if(@bikeModalId > 0 and @bikeProductId < 1)

begin
print 1

select pf.Id,pf.bikeTypeId, pf.bikeProductTypeId, pf.bikeModalId, pf.bikeProductId, pf.PartNumber, pf.Price,

 pf.Image,BP.Code,BP.Desc0

from tblProductInfo pf

left join tblBikeModal BM on BM.Id = pf.bikeModalId 

left join tblBikeProduct BP on BP.Id = pf.bikeProductId 

where pf.bikeModalId = @bikeModalId

end
else

begin
select pf.Id,pf.bikeTypeId, pf.bikeProductTypeId, pf.bikeModalId, pf.bikeProductId, pf.PartNumber, pf.Price,

 pf.Image,BP.Code,BP.Desc0

from tblProductInfo pf

left join tblBikeModal BM on BM.Id = pf.bikeModalId 

left join tblBikeProduct BP on BP.Id = pf.bikeProductId 


end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SingleBikeDetails]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sp_SingleBikeDetails]

@Id int 

as

begin

select pf.Id,pf.bikeTypeId, pf.bikeProductTypeId, pf.bikeModalId, pf.bikeProductId,pf.PartNumber,pf.Price,BP.Code, BP.Desc0,

BT.Desc0 as BikeType,BTP.Desc0 as BikeTypeProductType,BM.ModalName as BikeModal,

GI.Id as GraphicsImageId, GI.overlay, GI.blank, GI.mx, GI.sx, GI.fim, GI.mx_name, GI.sx_name,GI.fim_name, GI.name, GI.photo,

GSI.Id as GraphicsSubImageId, GSI.overAccent1, GSI.overAccent2, GSI.overfffill, GSI.overRffill, GSI.main, GSI.accent1, GSI.accent2, 

GSI.fffill, GSI.rffill, GSI.swingarm, GSI.bg

from tblProductInfo pf

left join  tblBikeProduct BP on BP.Id = pf.bikeProductId 

left join tblBikeModal BM on BM.Id = pf.bikeModalId 

left join tblBikeType BT on BT.Id = pf.bikeTypeId

left join tblBikeTypeProductType BTP on BTP.Id = pf.bikeProductTypeId

left join tbl_GraphicsImage GI on GI.Id = pf.ImageId

left join tbl_GraphicsSubImage GSI on GSI.Id = pf.subImageId

where pf.Id =@Id

end

GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateAddress]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[sp_UpdateAddress] -- exec sp_UpdateAddress 2,'sada','erwe','fhfghfhfh','gfhfgh','er','rewt',1,3,'err','32423',0,1
@Id int,
@FName nvarchar(50)= null,
@LName nvarchar(50)= null,
@Company nvarchar(50)= null,
@Address1 nvarchar(max)= null,
@Address2 nvarchar(max)= null,
@City nvarchar(50)= null,
@CountryId int = null,
@ProvinceId int= null,
@Zip nvarchar(50)= null,
@Phone nvarchar(50)= null,
@IsDefault bit,
@UserId int
as
begin
if(@Id > 0)
begin
print 1
if(@IsDefault = 1)
begin
print 3
update tblAddress set IsDefault = 0 where UserId = @UserId
end
update tblAddress set FName = @FName,LName =@LName,Company= @Company,Address1=@Address1,Address2= @Address2,
City = @City,CountryId = @CountryId,ProvinceId = @ProvinceId,Zip = @Zip,Phone= @Phone,IsDefault=@IsDefault 
where Id = @Id
print 4
end

else
begin
print 2
if(@IsDefault = 1)
begin
update tblAddress set IsDefault = 0 where UserId = @UserId
end
print 5
Insert into tblAddress(UserId, FName, LName, Company, Address1, Address2, City, CountryId, ProvinceId, Zip, Phone, IsDefault)
values(@UserId,@FName,@LName,@Company,@Address1,@Address2,@City,@CountryId,@ProvinceId,@Zip,@Phone,@IsDefault)
end
end




GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateAddToCart]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create procedure [dbo].[sp_UpdateAddToCart]
@Id int,
@quantity int
as
begin
update tblGraphicsProductDetails set quantity= @quantity where Id= @Id
end




GO
/****** Object:  StoredProcedure [dbo].[usp_GetProduct]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_GetProduct]

@productType nvarchar(50)

as

begin

select BP.Id as Value,BP.Desc0 as Text,BP.Code,BPT.Code as productType from tblBikeProduct BP

left join tblBikeTypeProductType BPT on BPT.Id =BP.bikeProductTypeId

where BPT.Code = @productType

end





GO
/****** Object:  StoredProcedure [dbo].[usp_GetProductType]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[usp_GetProductType]

as

select Id as Value,Desc0 as Text,Code from tblBikeTypeProductType order by Desc0 



GO
/****** Object:  StoredProcedure [dbo].[usp_Service]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_Service] 

@stroreType nvarchar(50)

as

begin

if(@stroreType is not null )

begin

select BP.Id, BP.bikeTypeId,bt.Code as storeType, BP.Code, BP.Desc0, BP.Image

from tblBikeTypeProductType BP

left join tblBikeType bt on bt.Id = BP.bikeTypeId

where BP.IsActive =1 and bt.Code  = @stroreType -- and BP.Id = @Id

end

else

begin

select BP.Id, BP.bikeTypeId,bt.Code as storeType, BP.Code, BP.Desc0, BP.Image

from tblBikeTypeProductType BP

left join tblBikeType bt on bt.Id = BP.bikeTypeId

where BP.IsActive =1 

end

end
GO
/****** Object:  StoredProcedure [dbo].[usp_ServiceDetails]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_ServiceDetails] -- exec sp_ServiceDetails 1,0

@storeType nvarchar(50) = null,

@productType nvarchar(50) = null,

@productId int 

as

begin

if(@productId > 0)

begin

select pf.Id,pf.bikeTypeId, pf.bikeProductTypeId, pf.bikeProductId, pf.PartNumber, pf.Price,

pf.Image,BP.Code,BP.Desc0,BT.Code as storeType ,BTP.Code as productType

from tblProductInfo pf

left join tblBikeType BT on BT.Id = pf.bikeTypeId

left join tblBikeTypeProductType BTP on BTP.Id = pf.bikeProductTypeId

left join tblBikeProduct BP on BP.Id = pf.bikeProductId 

where pf.IsActive =1 and BT.Code = @storeType and BTP.Code = @productType and pf.bikeProductId = @productId 

end

else 

begin

select pf.Id,pf.bikeTypeId, pf.bikeProductTypeId, pf.bikeProductId, pf.PartNumber, pf.Price,

pf.Image,BP.Code,BP.Desc0,BT.Code as storeType ,BTP.Code as productType

from tblProductInfo pf

left join tblBikeType BT on BT.Id = pf.bikeTypeId

left join tblBikeTypeProductType BTP on BTP.Id = pf.bikeProductTypeId

left join tblBikeProduct BP on BP.Id = pf.bikeProductId 

where pf.IsActive =1 and BT.Code = @storeType and BTP.Code = @productType

end

end
GO
/****** Object:  Table [chawTech].[tblParentMaster]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [chawTech].[tblParentMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](250) NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_tblParentMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Color]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Color](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ColorCode] [nvarchar](50) NULL,
	[Value] [nvarchar](50) NULL,
	[ColorDesc] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Color] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_GraphicsImage]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_GraphicsImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[overlay] [text] NULL,
	[blank] [text] NULL,
	[mx] [text] NULL,
	[sx] [text] NULL,
	[fim] [text] NULL,
	[mx_name] [text] NULL,
	[sx_name] [text] NULL,
	[fim_name] [text] NULL,
	[name] [text] NULL,
	[photo] [text] NULL,
 CONSTRAINT [PK_tbl_GraphicsImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_GraphicsSubImage]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_GraphicsSubImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[overAccent1] [text] NULL,
	[overAccent2] [text] NULL,
	[overfffill] [text] NULL,
	[overRffill] [text] NULL,
	[main] [text] NULL,
	[accent1] [text] NULL,
	[accent2] [text] NULL,
	[fffill] [text] NULL,
	[rffill] [text] NULL,
	[swingarm] [text] NULL,
	[bg] [text] NULL,
 CONSTRAINT [PK_tbl_GraphicsSubImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Token]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Token](
	[TokenId] [int] IDENTITY(1,1) NOT NULL,
	[Token] [nvarchar](250) NOT NULL,
	[Email] [nvarchar](250) NOT NULL,
	[Date] [datetime] NOT NULL,
	[ExpriedOn] [nvarchar](50) NULL,
	[SystemIP] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Token] PRIMARY KEY CLUSTERED 
(
	[TokenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblAddress]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAddress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[FName] [nvarchar](50) NULL,
	[LName] [nvarchar](50) NULL,
	[Company] [nvarchar](50) NULL,
	[Address1] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[City] [nvarchar](50) NULL,
	[CountryId] [int] NULL,
	[ProvinceId] [int] NULL,
	[Zip] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_tblAddress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblBikeModal]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBikeModal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[bikeTypeId] [int] NULL,
	[bikeProductTypeId] [int] NULL,
	[Code] [nvarchar](50) NOT NULL,
	[ModalName] [nvarchar](250) NULL,
	[ModelCode] [nvarchar](50) NULL,
	[Image] [text] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [smalldatetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [smalldatetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tblBikeModal_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblBikeProduct]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBikeProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[bikeTypeId] [int] NULL,
	[bikeProductTypeId] [int] NULL,
	[bikeModalId] [int] NULL,
	[Code] [nvarchar](250) NOT NULL,
	[Desc0] [nvarchar](250) NULL,
	[Desc1] [nvarchar](250) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [smalldatetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [smalldatetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_tblBikeProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblBikeType]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBikeType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Desc0] [nvarchar](250) NULL,
	[Desc1] [nvarchar](250) NULL,
	[Image] [nvarchar](max) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tblBikeType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblBikeTypeProductType]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBikeTypeProductType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[bikeTypeId] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Desc0] [nvarchar](250) NULL,
	[Desc1] [nvarchar](250) NULL,
	[Image] [nvarchar](max) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tblBikeTypeProductType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblContact]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblContact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FastName] [nvarchar](250) NULL,
	[LastName] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[Phone] [nvarchar](10) NULL,
	[Message] [nvarchar](max) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblContact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCountry]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCountry](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tblCountry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblGraphicsImage]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGraphicsImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[desc0] [nvarchar](max) NULL,
	[overlay] [nvarchar](max) NULL,
	[blank] [nvarchar](max) NULL,
	[mx] [nvarchar](max) NULL,
	[sx] [nvarchar](max) NULL,
	[fim] [nvarchar](max) NULL,
	[mx_name] [nvarchar](max) NULL,
	[sx_name] [nvarchar](max) NULL,
	[fim_name] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[photo] [nvarchar](max) NULL,
	[over_accent_1] [nvarchar](max) NULL,
	[over_accent_2] [nvarchar](max) NULL,
	[over_ff_fill] [nvarchar](max) NULL,
	[over_rf_fill] [nvarchar](max) NULL,
	[main] [nvarchar](max) NULL,
	[accent_1] [nvarchar](max) NULL,
	[accent_2] [nvarchar](max) NULL,
	[ff_fill] [nvarchar](max) NULL,
	[rf_fill] [nvarchar](max) NULL,
	[swingarm] [nvarchar](max) NULL,
	[bg] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tblGraphicsImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblGraphicsProductDetails]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGraphicsProductDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[bikeTypeId] [int] NULL,
	[bikeProductTypeId] [int] NULL,
	[bikeModalId] [int] NULL,
	[bikeProductId] [int] NULL,
	[productInfoId] [int] NULL,
	[typeOfLaminateId] [int] NULL,
	[numberColorId] [int] NULL,
	[RiderName] [nvarchar](250) NULL,
	[RaceNumber] [nvarchar](50) NULL,
	[backGroundColorId] [int] NULL,
	[brandId] [int] NULL,
	[BikeSize] [nvarchar](50) NULL,
	[BikeYear] [nvarchar](50) NULL,
	[primaryColorId] [int] NULL,
	[secondaryColorId] [int] NULL,
	[accent1] [nvarchar](50) NULL,
	[accent2] [nvarchar](50) NULL,
	[accentOneColorId] [int] NULL,
	[accentTwoColorId] [int] NULL,
	[FrontFender] [nvarchar](50) NULL,
	[ForkGuards] [nvarchar](50) NULL,
	[Shroud] [nvarchar](50) NULL,
	[AirBox] [nvarchar](50) NULL,
	[RearFender] [nvarchar](50) NULL,
	[SwingArm] [nvarchar](50) NULL,
	[UploadFile] [text] NULL,
	[Instructions] [nvarchar](max) NULL,
	[IsAdmit] [bit] NULL,
	[graphicsKitId] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[quantity] [int] NULL,
	[Image] [text] NULL,
	[CreatedId] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedId] [int] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblGraphicsProductDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMaster]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdentityId] [int] NULL,
	[IdentityCode] [nvarchar](250) NULL,
	[Desc0] [nvarchar](250) NULL,
	[Desc1] [nvarchar](250) NULL,
	[Desc2] [nvarchar](250) NULL,
	[Desc3] [nvarchar](250) NULL,
	[CreatedDate] [smalldatetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_tblMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblProductInfo]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[bikeTypeId] [int] NULL,
	[bikeProductTypeId] [int] NULL,
	[bikeModalId] [int] NULL,
	[bikeProductId] [int] NULL,
	[Desc0] [nvarchar](250) NULL,
	[Desc1] [nvarchar](250) NULL,
	[PartNumber] [nvarchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
	[graphicsId] [int] NULL,
	[ImageId] [int] NULL,
	[SubImageId] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tblProductInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblProvince]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProvince](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tblCity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 10/16/2018 5:57:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](250) NOT NULL,
	[Email] [nvarchar](250) NOT NULL,
	[Password] [nvarchar](250) NOT NULL,
	[ConfirmPassword] [nvarchar](250) NOT NULL,
	[RemenberMe] [bit] NOT NULL,
	[Role] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_tblUser_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblBikeModal] ADD  CONSTRAINT [DF_tblBikeModal_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblBikeType] ADD  CONSTRAINT [DF_tblBikeType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblBikeType] ADD  CONSTRAINT [DF_tblBikeType_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[tblBikeType] ADD  CONSTRAINT [DF_tblBikeType_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblBikeTypeProductType] ADD  CONSTRAINT [DF_tblBikeTypeProductType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblBikeTypeProductType] ADD  CONSTRAINT [DF_tblBikeTypeProductType_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[tblBikeTypeProductType] ADD  CONSTRAINT [DF_tblBikeTypeProductType_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblCountry] ADD  CONSTRAINT [DF_tblCountry_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblGraphicsImage] ADD  CONSTRAINT [DF_tblGraphicsImage_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblProductInfo] ADD  CONSTRAINT [DF_tblProductInfo_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblProductInfo] ADD  CONSTRAINT [DF_tblProductInfo_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[tblProductInfo] ADD  CONSTRAINT [DF_tblProductInfo_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblProvince] ADD  CONSTRAINT [DF_tblCity_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblUser] ADD  CONSTRAINT [DF_tblUser_RemenberMe]  DEFAULT ((0)) FOR [RemenberMe]
GO
ALTER TABLE [dbo].[tblUser] ADD  CONSTRAINT [DF_tblUser_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
USE [master]
GO
ALTER DATABASE [YSD_13092018] SET  READ_WRITE 
GO
