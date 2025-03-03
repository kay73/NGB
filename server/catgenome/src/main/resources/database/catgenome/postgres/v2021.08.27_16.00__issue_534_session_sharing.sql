INSERT INTO catgenome.acl_class (class) VALUES ('com.epam.catgenome.entity.session.NGBSession');

CREATE SEQUENCE IF NOT EXISTS CATGENOME.S_SESSION START WITH 1 INCREMENT BY 1;

CREATE TABLE IF NOT EXISTS CATGENOME.NGB_SESSION (
    ID                  BIGINT NOT NULL PRIMARY KEY,
    NAME                TEXT NOT NULL,
    DESCRIPTION         TEXT DEFAULT NULL,
    REFERENCE_ID        BIGINT NOT NULL,
    CHROMOSOME          VARCHAR DEFAULT NULL,
    START_POSITION      BIGINT DEFAULT NULL,
    END_POSITION        BIGINT DEFAULT NULL,
    OWNER               TEXT DEFAULT NULL,
    SESSION_VALUE       TEXT DEFAULT NULL,
    CONSTRAINT session_reference_fkey FOREIGN KEY (REFERENCE_ID) REFERENCES CATGENOME.REFERENCE_GENOME (REFERENCE_GENOME_ID) ON DELETE CASCADE
);
