--liquibase formatted sql

--changeset MikeO:createtable-1 labels:jira-100
CREATE TABLE SALES (ID BIGINT AUTO_INCREMENT, ITEM VARCHAR(255), QUANTITY NUMBER, AMOUNT FLOAT, CONSTRAINT SALES_PK PRIMARY KEY (ID));
--rollback DROP TABLE SALES;

--changeset MikeO:insertsales-2 labels:jira-100
INSERT INTO SALES (ITEM, QUANTITY, AMOUNT) VALUES ('Leather sofa By Maxo', 4, 5026.69);
--rollback DELETE FROM SALES WHERE ITEM='Leather sofa By Maxo';

--changeset MikeO:insertsales-3 labels:jira-101
INSERT INTO SALES (ITEM, QUANTITY, AMOUNT) VALUES ('Round coffee table By Maxo', 1, 800.29);
--rollback DELETE FROM SALES WHERE ITEM='Round coffee table By Maxo';
