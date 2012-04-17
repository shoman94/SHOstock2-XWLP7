.class Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LogsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/provider/logsprovider/LogsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 85
    const-string v0, "logs.db"

    const/4 v1, 0x0

    const/16 v2, 0x33

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 86
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 90
    const-string v0, "CREATE TABLE logs (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT,address TEXT,date INTEGER,duration INTEGER,type INTEGER,new INTEGER,name TEXT,name_reversed TEXT,numbertype INTEGER,numberlabel TEXT,voicemail_uri TEXT,is_read INTEGER,countryiso TEXT,geocoded_location TEXT,lookup_uri TEXT,matched_number TEXT,normalized_number TEXT,photo_id INTEGER NOT NULL DEFAULT 0,formatted_number TEXT,messageid TEXT,logtype INTEGER NOT NULL,frequent INTEGER,contactid INTEGER NOT NULL,raw_contact_id INTEGER,m_subject TEXT,m_content TEXT,sns_tid TEXT,sns_pkey TEXT,account_name TEXT,account_id TEXT,sns_receiver_count TEXT,sp_type TEXT,cnap_name TEXT,cdnip_number TEXT, service_type INTEGER, country_code TEXT,cityid TEXT,_data TEXT,has_content INTEGER,mime_type TEXT,source_data TEXT,source_package TEXT,state INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    const-string v0, "CREATE TABLE sns_msg_receiver_map (_id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INTEGER,receiver_id TEXT,receiver_name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    const-string v0, "CREATE TABLE duration_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,last_voice INTEGER,last_video INTEGER,last_voip INTEGER,last_chaton_voip INTEGER,last_chaton_vt INTEGER,dial_voice INTEGER,dial_video INTEGER,dial_voip INTEGER,dial_chaton_voip INTEGER,dial_chaton_vt INTEGER,rece_voice INTEGER,rece_video INTEGER,rece_voip INTEGER,rece_chaton_voip INTEGER,rece_chaton_vt INTEGER,all_voice INTEGER,all_video INTEGER,all_voip INTEGER,all_chaton_voip INTEGER,all_chaton_vt INTEGER,reset_date INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 165
    const-string v0, "INSERT INTO duration_table VALUES (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ,0, 0, 0, 0, 0, 0, 0, 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    const-string v0, "CREATE TRIGGER duration_update INSERT ON logs BEGIN UPDATE duration_table SET last_voice = new.duration WHERE new.logtype = 100;UPDATE duration_table SET last_video = new.duration WHERE new.logtype = 500;UPDATE duration_table SET last_voip = new.duration WHERE new.logtype = 800;UPDATE duration_table SET last_chaton_voip = new.duration WHERE new.logtype = 900;UPDATE duration_table SET last_chaton_vt = new.duration WHERE new.logtype = 1000;UPDATE duration_table SET dial_voice = dial_voice + new.duration WHERE new.logtype = 100 AND new.type = 2;UPDATE duration_table SET dial_video = dial_video + new.duration WHERE new.logtype = 500 AND new.type = 2;UPDATE duration_table SET dial_voip = dial_voip + new.duration WHERE new.logtype = 800 AND new.type = 2;UPDATE duration_table SET dial_chaton_voip = dial_chaton_voip + new.duration WHERE new.logtype = 900 AND new.type = 2;UPDATE duration_table SET dial_chaton_vt = dial_chaton_vt + new.duration WHERE new.logtype = 1000 AND new.type = 2;UPDATE duration_table SET rece_voice = rece_voice + new.duration WHERE new.logtype = 100 AND new.type = 1;UPDATE duration_table SET rece_video = rece_video + new.duration WHERE new.logtype = 500 AND new.type = 1;UPDATE duration_table SET rece_voip = rece_voip + new.duration WHERE new.logtype = 800 AND new.type = 1;UPDATE duration_table SET rece_chaton_voip = rece_chaton_voip + new.duration WHERE new.logtype = 900 AND new.type = 1;UPDATE duration_table SET rece_chaton_vt = rece_chaton_vt + new.duration WHERE new.logtype = 1000 AND new.type = 1;UPDATE duration_table SET all_voice = all_voice + new.duration WHERE new.logtype = 100;UPDATE duration_table SET all_video = all_video + new.duration WHERE new.logtype = 500;UPDATE duration_table SET all_voip = all_voip + new.duration WHERE new.logtype = 800;UPDATE duration_table SET all_voip = all_chaton_voip + new.duration WHERE new.logtype = 900;UPDATE duration_table SET all_voip = all_chaton_vt + new.duration WHERE new.logtype = 1000; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    const-string v0, "CREATE INDEX sns_map_id ON sns_msg_receiver_map (_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 224
    const-string v0, "CREATE INDEX sns_message_id ON sns_msg_receiver_map (message_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    const-string v0, "CREATE INDEX logs_contact_id ON logs (contactid);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    const-string v0, "CREATE INDEX logs_message_id ON logs (messageid);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    const-string v0, "CREATE INDEX logs_log_type ON logs (logtype);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 238
    const/16 v0, 0x29

    if-eq p2, v0, :cond_0

    const/16 v0, 0x2a

    if-ne p2, v0, :cond_1

    .line 239
    :cond_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will alter tables"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v0, "ALTER TABLE logs ADD country_code TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 254
    const-string v0, "ALTER TABLE logs ADD cityid TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 255
    const-string v0, "ALTER TABLE logs ADD voicemail_uri TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 256
    const-string v0, "ALTER TABLE logs ADD is_read INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    const-string v0, "ALTER TABLE logs ADD countryiso TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 258
    const-string v0, "ALTER TABLE logs ADD geocoded_location TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    const-string v0, "ALTER TABLE logs ADD lookup_uri TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 260
    const-string v0, "ALTER TABLE logs ADD matched_number TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 261
    const-string v0, "ALTER TABLE logs ADD normalized_number TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 262
    const-string v0, "ALTER TABLE logs ADD photo_id INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 263
    const-string v0, "ALTER TABLE logs ADD formatted_number TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 265
    const-string v0, "ALTER TABLE logs ADD _data TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 266
    const-string v0, "ALTER TABLE logs ADD has_content INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    const-string v0, "ALTER TABLE logs ADD mime_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 268
    const-string v0, "ALTER TABLE logs ADD source_data TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    const-string v0, "ALTER TABLE logs ADD source_package TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 270
    const-string v0, "ALTER TABLE logs ADD state INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will drop all tables"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v0, "DROP TABLE IF EXISTS logs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 275
    const-string v0, "DROP TABLE IF EXISTS sns_msg_receiver_map"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 276
    const-string v0, "DROP TABLE IF EXISTS duration_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0, p1}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
