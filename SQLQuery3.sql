create procedure sp_insertRegisteration
(
@name varchar (255),
@dob date,
@email varchar(255),
@phone varchar(10),
@pass varchar(255),
@gender char(1),
@status char(1),
@type char(1)
)
as 

insert into m_user values(@name,@dob,@email,@phone,@pass,@gender,@status,@type); 


select * from m_user 
