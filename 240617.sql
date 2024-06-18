create table tbl_board (
	boardNo int auto_increment primary key,
    boardName varchar(20),
    boardTitle varchar(80),
    boardContent varchar(3000),
    boardDate datetime default now(),
    boardHit int default 0
);
insert into tbl_board(boardName, boardTitle, boardContent, boardHit) values('abc', 'abc1', 'aabbcc', 0);
select * from tbl_board;
