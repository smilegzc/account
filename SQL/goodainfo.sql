create table ypxx
(
  shotName char(15) primary key,
  goodsName char(15),
  factory char(4),
  sale char(4),
  num char(4)
);

insert into ypxx values ('qxdg', '全效底改', '0', '75', 100);
insert into ypxx values ('qxdj', '强效底净', '0', '25', 100);
insert into ypxx values ('cqdj', '超强底净', '0', '30', 100);
insert into ypxx values ('yzy', '原子氧', '0', '24', 100);
insert into ypxx values ('slj', '水立净', '0', '26', 100);
insert into ypxx values ('yjb', '益菌宝', '0', '65', 100);
insert into ypxx values ('gdtl', '肝胆泰乐', '0', '18', 100);
insert into ypxx values ('gwwx', '高稳维西', '0', '18', 100);
insert into ypxx values ('smy', '生命元', '0', '45', 100);
insert into ypxx values ('hjdt', '黄金多糖', '0', '20', 100);
insert into ypxx values ('skl', '速康灵', '0', '18', 100);
insert into ypxx values ('dnk', '迪诺康', '0', '18', 100);
insert into ypxx values ('gcs', '肝肠舒', '0', '30', 100);
insert into ypxx values ('xct', '新肠泰', '0', '28', 100);
insert into ypxx values ('sbs', '水博士','0', '32', 100);
insert into ypxx values ('jdl', '解毒灵', '0', '70', 100);
insert into ypxx values ('kjl', '抗激灵', '0', '18', 100);
insert into ypxx values ('hf', '活肥', '0', '80', 100);
insert into ypxx values ('wjg', '乌金膏', '0', '150', 100);
insert into ypxx values ('nmhj', '纳米黑金', '0', '110', 100);
insert into ypxx values ('hlyss', '活力益水素', '0', '20', 100);
insert into ypxx values ('yjysj', '优加益生菌', '0', '18', 100);
insert into ypxx values ('hjyjs', '黄金益菌素', '0', '110', 100);
insert into ypxx values ('dsmnsyb', '大水面浓缩芽孢', '0', '360', 100);
insert into ypxx values ('hjtd', '弧菌天敌', '0', '35', 100);
insert into ypxx values ('cd', '超碘', '0', '25', 100);
insert into ypxx values ('jd', '金碘', '0', '50', 100);
insert into ypxx values ('jdbk', '菌毒必克', '0', '26', 100);
insert into ypxx values ('lhlk', '联合立克', '0', '18', 100);
insert into ypxx values ('zxt', '止血停', '0', '15', 100);

create table kc
(
  rdate date,
  goodsName varchar(255),
  goodsNum varchar(120)
);