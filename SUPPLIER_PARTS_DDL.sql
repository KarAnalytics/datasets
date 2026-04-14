-- Create table SUPPLIERS
CREATE TABLE SUPPLIERS (
    SID      CHAR(3)       ,
    Sname    VARCHAR2(50),
    Status   NUMBER(2),
    Scity    VARCHAR2(20),
    CONSTRAINT SUPPLIERS_PK PRIMARY KEY (SID) );
 
-- Create table PART
CREATE TABLE PARTS (
    PID      CHAR(3)       ,
    Pname    VARCHAR2(50),
    Color    VARCHAR2(20),
    Weight   NUMERIC,
    Pcity    VARCHAR2(20),
    CONSTRAINT PARTS_PK PRIMARY KEY (PID) );


-- Create table SHIPMENTS
CREATE TABLE SHIPMENTS (
    SPID     CHAR(8)     ,
    SID      CHAR(3)     ,
    PID      CHAR(3)     ,
    Quantity INTEGER,
    CONSTRAINT SHIPMENTS_PK PRIMARY KEY (SPID, PID, SID),
    CONSTRAINT SHIPMENTS_PID_FK FOREIGN KEY (PID)
        REFERENCES PARTS,    
    CONSTRAINT SHIPMENTS_SID_FK FOREIGN KEY (SID) 
        REFERENCES SUPPLIERS (SID)  );

