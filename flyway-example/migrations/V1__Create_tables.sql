create table TRACKER (
    BOT_ID varchar(35) not null,
    SESSION_ID varchar(35) not null,
    BOT_VERSION varchar(12) not null,
    MODIFIED_AT timestamp,
    TRACKER_DATA bytea,
    PRIMARY KEY (BOT_ID, SESSION_ID)
);

create table CONVERSATION_LOG (
    ID BIGSERIAL not null PRIMARY KEY,
    BOT_ID varchar(35) not null,
    SESSION_ID varchar(35) not null,
    BOT_VERSION varchar(12) not null,
    CHANNEL_ID varchar(35),
    EVENT_TYPE varchar(50),
    MESSAGE varchar(250),
    EVENT_DATA jsonb,
    CREATED_AT timestamp not null
);

CREATE INDEX "conversation_log_bot_id_session_id" ON "public"."conversation_log" USING btree ("bot_id", "session_id");
