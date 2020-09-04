CREATE database RECLAMOS
USE RECLAMOS
CREATE TABLE USUARIOS(
    CORREO varchar(100) unique,
    NOMBRE varchar(200),
    CONTRASEÑA varchar(50),
    RUT varchar(20) primary key,
    ROL varchar(30),
    NUMEROTELEFONO varchar(20),
    DIRECCION varchar(100)
)

drop table RECLAMOS
CREATE TABLE RECLAMOS(
    TIPORECLAMO varchar(100),
    NUMERORECLAMO int identity(1,1) primary key,
    DESCRIPCION varchar(8000),
    FECHA DATE,
    ESTADO varchar(100),
    ANTECEDENTES varchar(8000),
    RUT varchar(20),
    foreign key (rut) REFERENCES USUARIOS(RUT)
)
alter TABLE Reclamos add FECHA_TOPE DATE

CREATE TABLE RESPUESTA(
    N_RECLAMO INT,
    RUT VARCHAR(20),
    TEXTO VARCHAR(2000),
    FECHA_RESPUESTA DATE,
    LIMITE_RESPUESTA VARCHAR(500)
    PRIMARY KEY(N_RECLAMO)
    FOREIGN KEY (N_RECLAMO) REFERENCES RECLAMOS(NUMERORECLAMO),
    FOREIGN KEY (RUT) REFERENCES USUARIOS(RUT)
)
alter table RECLAMOS alter COLUMN NUMERORECLAMO int 

INSERT INTO USUARIOS([NOMBRE],[CORREO],[CONTRASEÑA],[RUT],[ROL],[NUMEROTELEFONO],[DIRECCION]) VALUES('Basil Battle','molestie.dapibus.ligula@ornarelectus.net','NHU18ULC9KV','13190294-8','Admin','16891012 7904','800-6387 Posuere Rd.'),('Dane Moreno','nulla.Cras@tellus.co.uk','JLX26HUX0SF','14536736-0','Admin','16460920 9319','P.O. Box 505, 1247 Morbi Rd.'),('Dane Leach','metus.facilisis.lorem@Pellentesquehabitant.ca','IEU11TVO0KS','9757959-8','Admin','16530927 5724','1599 Quis Rd.'),('Colorado Clarke','luctus.et@velit.com','EWD39XGE2QB','6270508-6','Admin','16740902 5074','P.O. Box 224, 8851 Donec Road'),('Flynn Stephenson','nibh.enim@Praesentluctus.org','USL72IOK2FT','13759057-3','Usuario','16671122 5000','P.O. Box 795, 2259 Lacus. Street'),('Tyler Espinoza','pharetra@ipsumcursus.net','BNS63XON9JZ','37215160-9','Admin','16890120 5057','250-1999 Commodo Road'),('Mason Sears','at.fringilla@pedeetrisus.co.uk','LYF77OJA8VT','27541435-2','Usuario','16700818 7887','357-4372 Luctus Avenue'),('Kieran Ward','Quisque.porttitor@viverraDonec.edu','HSN55EAZ3HI','22746253-1','Usuario','16371126 0590','393-6428 Malesuada. Rd.'),('Derek Contreras','Curabitur@lacus.net','OTA55TGP7ZU','43597943-2','Admin','16730703 2636','Ap #619-6128 Parturient Avenue'),('Giacomo Bridges','mauris@gravidasitamet.org','RIN77YUD9WY','46533182-8','Usuario','16600408 6333','267-988 Egestas. Road');
INSERT INTO USUARIOS([NOMBRE],[CORREO],[CONTRASEÑA],[RUT],[ROL],[NUMEROTELEFONO],[DIRECCION]) VALUES('Colorado Kelley','egestas.blandit@at.co.uk','UBC66BVS5OF','34052653-8','Usuario','16870503 0610','P.O. Box 393, 7139 Sit Road'),('Griffith Bright','Mauris.magna.Duis@Suspendisseeleifend.net','XCF08TXG3GL','17007858-6','Usuario','16420617 8867','9473 Enim Street'),('Lester Velasquez','Nullam@semmollis.co.uk','BAC67YCG9HE','37639846-3','Usuario','16051228 5065','176-1843 Magna. Street'),('Dorian Blevins','eu@duinec.ca','TIY06KMY9SW','27237623-9','Admin','16220614 7908','1942 Dis St.'),('Xanthus Irwin','vestibulum.massa@quispedePraesent.co.uk','LXJ79TSR0JE','16348591-5','Admin','16900619 2927','378-5629 Velit Street'),('Reuben Joseph','auctor.velit.Aliquam@SuspendisseeleifendCras.edu','KJK43NEQ3VP','26924063-6','Admin','16800414 5416','174-9965 Diam Av.'),('William Simon','placerat@Fusce.org','WFF88MRV7ET','29667326-9','Admin','16130410 2864','P.O. Box 947, 4246 Suspendisse Rd.'),('Raphael Cantu','Cras.pellentesque@non.net','OBI62MKW0OP','5569928-3','Admin','16370912 5888','Ap #119-8890 Imperdiet St.'),('Honorato Lancaster','ullamcorper.Duis@natoque.com','HVY54FTN6DY','18867727-4','Usuario','16600815 5555','3963 Semper Avenue'),('Sean Rios','sociis@ultrices.net','FEI57XEL2BI','29644107-4','Usuario','16910817 0201','274 Risus Avenue');
INSERT INTO USUARIOS([NOMBRE],[CORREO],[CONTRASEÑA],[RUT],[ROL],[NUMEROTELEFONO],[DIRECCION]) VALUES('Daquan Travis','Duis.cursus@Integer.ca','ARV66TOD1WL','46742657-5','Admin','16750627 4609','P.O. Box 627, 9556 Sed Rd.'),('Jin Levine','scelerisque@MaurismagnaDuis.net','LWF23EVL4KH','12874408-8','Admin','16541114 9585','2112 Laoreet Ave'),('Graiden Obrien','ut.mi.Duis@idlibero.org','QRS33FWW1QG','13007900-8','Admin','16210123 4215','P.O. Box 245, 7205 Sodales. Street'),('Arsenio Mcbride','venenatis.vel@Proin.org','HYI29KKD6GW','39222106-9','Admin','16781207 1863','Ap #891-4426 Vel Rd.'),('Emery Durham','Sed.eget@dictummi.org','SNU88MQF3HN','26747527-K','Admin','16440430 4836','986-7314 Mattis Road'),('Devin Hyde','dictum.eu.eleifend@sitamet.ca','PIM10FLB3TX','17477761-6','Usuario','16120423 0948','P.O. Box 482, 8840 Habitant Avenue'),('Alec Avery','elit@justoPraesent.net','QPW64VXB0AG','19577002-6','Usuario','16731113 3289','P.O. Box 589, 1664 Etiam Ave'),('Stephen Holder','id.ante.dictum@Proinnon.ca','ZVZ56VDA2VG','22631506-3','Admin','16681118 3307','Ap #136-7261 Est. Av.'),('George Conley','ullamcorper.nisl.arcu@ametdapibus.com','YVC78WYW3MO','7624127-9','Admin','16780917 0280','885-9459 Tortor, St.'),('Nigel Cortez','Duis.volutpat@id.org','QLU60XVG9AW','44219015-1','Admin','16390613 2281','5926 Ac Av.');
select * from USUARIOS where ROL = 'Admin'


INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('Mala atencion','nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus,','06/23/1871','Resuelto','Lorem ipsum','34052653-8'),('SobreCargo','lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi.','02/12/1892','Pendiente','Lorem ipsum dolor sit amet,','34052653-8'),('Mala atencion','cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut,','06/04/1965','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','34052653-8'),('Mala atencion','euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet,','12/15/2002','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','34052653-8'),('SobreCargo','Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae,','10/29/1894','Resuelto','Lorem ipsum dolor sit amet, consectetuer','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('Mala atencion','nisi nibh lacinia orci, consectetuer euismod est arcu ac orci.','07/30/1915','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','34052653-8'),('Mala atencion','eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam','01/28/1964','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','34052653-8'),('Mala atencion','mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus.','01/26/2014','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing','34052653-8'),('Mala atencion','risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a','06/16/1846','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','34052653-8'),('SobreCargo','Cras sed leo. Cras vehicula aliquet libero. Integer in magna.','07/22/2010','Pendiente','Lorem ipsum dolor sit','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('SobreCargo','erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor.','06/09/1987','Pendiente','Lorem ipsum dolor sit amet,','34052653-8'),('SobreCargo','dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate','01/23/1832','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','34052653-8'),('Mala atencion','orci, in consequat enim diam vel arcu. Curabitur ut odio','03/14/1895','Pendiente','Lorem ipsum dolor','34052653-8'),('SobreCargo','tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet,','10/17/1869','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','34052653-8'),('Mala atencion','ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula.','07/31/2016','Resuelto','Lorem ipsum dolor sit amet,','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('SobreCargo','nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus','07/25/1867','Pendiente','Lorem ipsum dolor sit','34052653-8'),('Mala atencion','in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan','01/12/1943','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','34052653-8'),('SobreCargo','ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet','12/21/1968','Resuelto','Lorem ipsum dolor','34052653-8'),('Mala atencion','libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus','12/03/1980','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','34052653-8'),('SobreCargo','aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam','12/19/1822','Pendiente','Lorem ipsum dolor sit','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('SobreCargo','risus. Quisque libero lacus, varius et, euismod et, commodo at,','11/19/1973','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','34052653-8'),('SobreCargo','bibendum fermentum metus. Aenean sed pede nec ante blandit viverra.','08/06/1905','Pendiente','Lorem ipsum dolor sit amet, consectetuer','34052653-8'),('Mala atencion','mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida','06/08/1971','Pendiente','Lorem ipsum','34052653-8'),('Mala atencion','lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus','12/11/1926','Pendiente','Lorem ipsum dolor sit amet,','34052653-8'),('SobreCargo','Quisque ornare tortor at risus. Nunc ac sem ut dolor','10/24/1996','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('SobreCargo','vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt','03/27/1972','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing','34052653-8'),('SobreCargo','nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse','07/08/1823','Resuelto','Lorem ipsum dolor sit','34052653-8'),('Mala atencion','ornare sagittis felis. Donec tempor, est ac mattis semper, dui','02/10/1973','Pendiente','Lorem ipsum','34052653-8'),('Mala atencion','mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In','11/13/1899','Resuelto','Lorem ipsum dolor sit amet,','34052653-8'),('Mala atencion','aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non','01/27/1841','Resuelto','Lorem ipsum dolor','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('Mala atencion','Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis','09/19/1899','Pendiente','Lorem ipsum dolor sit amet,','34052653-8'),('Mala atencion','cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum','07/03/1997','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed','34052653-8'),('SobreCargo','id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque','11/11/1948','Resuelto','Lorem ipsum dolor sit amet,','34052653-8'),('Mala atencion','in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu','03/31/2013','Pendiente','Lorem ipsum dolor sit amet,','34052653-8'),('SobreCargo','Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra.','10/25/1888','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('SobreCargo','Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula','01/31/2010','Resuelto','Lorem ipsum dolor','34052653-8'),('SobreCargo','pede. Praesent eu dui. Cum sociis natoque penatibus et magnis','04/05/1943','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing','34052653-8'),('SobreCargo','augue id ante dictum cursus. Nunc mauris elit, dictum eu,','12/30/1925','Pendiente','Lorem ipsum dolor sit','34052653-8'),('SobreCargo','Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla','06/12/1862','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','34052653-8'),('SobreCargo','vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae','11/03/1936','Pendiente','Lorem ipsum dolor','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('Mala atencion','Duis elementum, dui quis accumsan convallis, ante lectus convallis est,','09/15/1925','Pendiente','Lorem ipsum dolor sit','34052653-8'),('Mala atencion','ante ipsum primis in faucibus orci luctus et ultrices posuere','12/13/2007','Resuelto','Lorem ipsum dolor','34052653-8'),('SobreCargo','aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu','05/22/1937','Resuelto','Lorem ipsum dolor sit','34052653-8'),('Mala atencion','eros turpis non enim. Mauris quis turpis vitae purus gravida','10/23/1839','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing','34052653-8'),('Mala atencion','posuere, enim nisl elementum purus, accumsan interdum libero dui nec','09/12/1885','Pendiente','Lorem ipsum dolor sit amet, consectetuer','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('Mala atencion','vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non','07/02/1972','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing','34052653-8'),('SobreCargo','scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit','08/30/1930','Pendiente','Lorem ipsum dolor sit amet, consectetuer','34052653-8'),('Mala atencion','faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare.','12/07/1918','Resuelto','Lorem ipsum dolor sit amet,','34052653-8'),('SobreCargo','bibendum fermentum metus. Aenean sed pede nec ante blandit viverra.','06/07/1995','Pendiente','Lorem','34052653-8'),('SobreCargo','amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis','11/18/1979','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('Mala atencion','mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed','02/12/1919','Resuelto','Lorem ipsum dolor sit amet,','34052653-8'),('SobreCargo','Donec non justo. Proin non massa non ante bibendum ullamcorper.','06/04/1910','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','34052653-8'),('Mala atencion','nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat.','01/27/1984','Resuelto','Lorem ipsum dolor sit amet,','34052653-8'),('SobreCargo','Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna.','09/14/1985','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','34052653-8'),('Mala atencion','enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus.','07/25/1860','Resuelto','Lorem ipsum dolor','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('Mala atencion','egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla','12/09/1840','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing','34052653-8'),('SobreCargo','pede sagittis augue, eu tempor erat neque non quam. Pellentesque','10/09/2005','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing','34052653-8'),('Mala atencion','Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus','04/09/1945','Pendiente','Lorem ipsum dolor sit amet, consectetuer','34052653-8'),('SobreCargo','dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero.','11/20/1962','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','34052653-8'),('SobreCargo','tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel,','07/04/2013','Pendiente','Lorem ipsum','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('Mala atencion','congue, elit sed consequat auctor, nunc nulla vulputate dui, nec','09/14/1904','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','34052653-8'),('Mala atencion','at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et','10/19/1930','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','34052653-8'),('Mala atencion','tortor at risus. Nunc ac sem ut dolor dapibus gravida.','09/04/1946','Pendiente','Lorem ipsum dolor sit amet, consectetuer','34052653-8'),('SobreCargo','Curabitur ut odio vel est tempor bibendum. Donec felis orci,','07/13/1822','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','34052653-8'),('SobreCargo','nibh enim, gravida sit amet, dapibus id, blandit at, nisi.','07/18/1868','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('Mala atencion','non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit','11/15/1944','Pendiente','Lorem ipsum dolor sit','34052653-8'),('SobreCargo','ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc','07/11/2020','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','34052653-8'),('SobreCargo','ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci','02/24/1954','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','34052653-8'),('Mala atencion','neque. Morbi quis urna. Nunc quis arcu vel quam dignissim','12/23/1946','Pendiente','Lorem','34052653-8'),('Mala atencion','eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit','04/12/1926','Resuelto','Lorem ipsum dolor','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('Mala atencion','auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi','10/28/1998','Resuelto','Lorem ipsum','34052653-8'),('Mala atencion','porta elit, a feugiat tellus lorem eu metus. In lorem.','01/27/1917','Pendiente','Lorem ipsum dolor sit amet, consectetuer','34052653-8'),('Mala atencion','fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit.','12/30/1867','Pendiente','Lorem ipsum dolor sit','34052653-8'),('SobreCargo','rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin','07/30/2006','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','34052653-8'),('SobreCargo','leo, in lobortis tellus justo sit amet nulla. Donec non','08/13/1994','Resuelto','Lorem ipsum dolor sit amet, consectetuer','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('Mala atencion','felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem,','11/03/1921','Pendiente','Lorem ipsum dolor sit amet, consectetuer','34052653-8'),('Mala atencion','semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices','09/26/1889','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','34052653-8'),('Mala atencion','nulla. Donec non justo. Proin non massa non ante bibendum','10/11/1845','Resuelto','Lorem ipsum dolor sit','34052653-8'),('Mala atencion','Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna,','07/28/1906','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed','34052653-8'),('SobreCargo','In mi pede, nonummy ut, molestie in, tempus eu, ligula.','11/26/1830','Resuelto','Lorem','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('Mala atencion','semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae','03/09/1927','Pendiente','Lorem ipsum dolor','34052653-8'),('Mala atencion','fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin','01/08/1906','Resuelto','Lorem ipsum dolor sit','34052653-8'),('SobreCargo','lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id,','04/20/1909','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','34052653-8'),('SobreCargo','nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula.','11/09/1917','Resuelto','Lorem ipsum','34052653-8'),('SobreCargo','libero. Proin sed turpis nec mauris blandit mattis. Cras eget','12/07/1988','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('SobreCargo','dui, in sodales elit erat vitae risus. Duis a mi','08/09/1968','Resuelto','Lorem','34052653-8'),('SobreCargo','ornare sagittis felis. Donec tempor, est ac mattis semper, dui','12/11/1961','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','34052653-8'),('SobreCargo','congue a, aliquet vel, vulputate eu, odio. Phasellus at augue','08/29/1858','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','34052653-8'),('Mala atencion','metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh.','11/22/1857','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','34052653-8'),('Mala atencion','netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus','02/25/1976','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('SobreCargo','porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor','11/22/1923','Pendiente','Lorem ipsum dolor sit amet,','34052653-8'),('SobreCargo','metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus','11/02/1918','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing','34052653-8'),('SobreCargo','imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,','01/14/1869','Pendiente','Lorem ipsum dolor sit','34052653-8'),('Mala atencion','volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean','02/14/1968','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','34052653-8'),('Mala atencion','nunc ac mattis ornare, lectus ante dictum mi, ac mattis','01/09/1933','Pendiente','Lorem ipsum dolor sit amet, consectetuer','34052653-8');
INSERT INTO RECLAMOS([TIPORECLAMO],[DESCRIPCION],[FECHA],[ESTADO],[ANTECEDENTES],[RUT]) VALUES('Mala atencion','eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed','10/03/1894','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','34052653-8'),('SobreCargo','risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed','04/19/2018','Resuelto','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','34052653-8'),('SobreCargo','nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in','10/13/1961','Pendiente','Lorem ipsum','34052653-8'),('Mala atencion','auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan','07/15/1977','Pendiente','Lorem ipsum dolor sit amet, consectetuer adipiscing','34052653-8'),('Mala atencion','in sodales elit erat vitae risus. Duis a mi fringilla','09/06/1922','Pendiente','Lorem ipsum','34052653-8');

SELECT * from RECLAMOS

use RECLAMOS
alter table RECLAMOS add COMENTARIOS varchar(8000)
use RECLAmos
alter table RECLAMOS alter COLUMN FECHA DATE
select * from RECLAMOS where NUMERORECLAMO = 74
use RECLAMOS
select * from USUARIOS where correo = 'Mauris.magna.Duis@Suspendisseeleifend.net'
use RECLAMOS
update RECLAMOS set estado = 'Resuelto' where NUMERORECLAMO = '8'