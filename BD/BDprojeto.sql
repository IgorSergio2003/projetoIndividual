 
 create database rhythm;
 use rhythm;
 
 create table album(
 idAlbum int primary key auto_increment,
 nomeAlbum varchar(45),
 generoAlbum varchar(45),
 dataLancamento date,	
  fkCantor int,
 foreign key (fkCantor) references cantor(idCantor)
 );
 
 
 create table Cantor(
 idCantor int primary key auto_increment,
 nomeCantor varchar(45),
 generoMusical varchar(45),
 nacionalidade varchar(45)
 
 );
 
 
 create table musica(
 idMusica int primary key auto_increment,
 nomeMusica varchar(45),
 generoMusica varchar(45),
 tempoMusica varchar(45)
 );
 
 create table albumMusica(
 fkAlbum int,
 foreign key (fkAlbum) references album(idalbum),
 fkMusica int,
  foreign key (fkMusica) references musica(idmusica),
 numOuvintes int,
 primary key(fkAlbum,fkAlbum)
 );
 
 
 create table usuario(
 idUsuario int primary key auto_increment,
 nomeUsuario varchar(45),
 emailUsuario varchar(45),
 senhaUsuario char(16),
generoFavorito varchar(45),
cantorFavorito varchar(45),
musicaFavorita varchar(45)	
 );
 
 create table votacao(
 fkusuario int,
 foreign key (fkusuario) references usuario(idusuario),
 fkmusica int,
 foreign key (fkmusica) references musica(idMusica),
 descricao varchar(60),
 tipoVotacao varchar(20),
 ranking varchar(60)
 );