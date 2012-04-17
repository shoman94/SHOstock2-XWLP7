.class public Lcom/android/email/mail/store/LocalStore;
.super Lcom/android/email/mail/Store;
.source "LocalStore.java"

# interfaces
.implements Lcom/android/email/mail/Store$PersistentDataCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;,
        Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;,
        Lcom/android/email/mail/store/LocalStore$LocalMessage;,
        Lcom/android/email/mail/store/LocalStore$LocalFolder;,
        Lcom/android/email/mail/store/LocalStore$PendingCommand;
    }
.end annotation


# static fields
.field private static final PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;


# instance fields
.field private final mAttachmentsDir:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mPath:Ljava/lang/String;

.field private mVisibleLimitDefault:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/emailcommon/mail/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->X_DESTROYED:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/mail/store/LocalStore;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 11
    .parameter "_uri"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x16

    const/16 v9, 0x15

    const/16 v8, 0x14

    const/16 v7, 0x13

    const/16 v6, 0x18

    .line 107
    invoke-direct {p0}, Lcom/android/email/mail/Store;-><init>()V

    .line 94
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/email/mail/store/LocalStore;->mVisibleLimitDefault:I

    .line 108
    iput-object p2, p0, Lcom/android/email/mail/store/LocalStore;->mContext:Landroid/content/Context;

    .line 109
    const/4 v3, 0x0

    .line 111
    .local v3, uri:Ljava/net/URI;
    :try_start_0
    new-instance v3, Ljava/net/URI;

    .end local v3           #uri:Ljava/net/URI;
    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .restart local v3       #uri:Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "local"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    const-string v5, "Invalid scheme"

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 112
    .end local v3           #uri:Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    const-string v5, "Invalid uri for LocalStore"

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #uri:Ljava/net/URI;
    :cond_0
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mPath:Ljava/lang/String;

    .line 120
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 121
    .local v2, parentDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 122
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 124
    :cond_1
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mPath:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    .line 130
    .local v1, oldVersion:I
    if-eq v1, v6, :cond_9

    .line 135
    const/16 v4, 0x12

    if-ge v1, v4, :cond_3

    .line 139
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DROP TABLE IF EXISTS folders"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CREATE TABLE folders (id INTEGER PRIMARY KEY, name TEXT, last_updated INTEGER, unread_count INTEGER, visible_limit INTEGER)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DROP TABLE IF EXISTS messages"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CREATE TABLE messages (id INTEGER PRIMARY KEY, folder_id INTEGER, uid TEXT, subject TEXT, date INTEGER, flags TEXT, sender_list TEXT, to_list TEXT, cc_list TEXT, bcc_list TEXT, reply_to_list TEXT, html_content TEXT, text_content TEXT, attachment_count INTEGER, internal_date INTEGER, message_id TEXT, store_flag_1 INTEGER, store_flag_2 INTEGER, flag_downloaded_full INTEGER,flag_downloaded_partial INTEGER, flag_deleted INTEGER, x_headers TEXT)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CREATE TABLE attachments (id INTEGER PRIMARY KEY, message_id INTEGER,store_data TEXT, content_uri TEXT, size INTEGER, name TEXT,mime_type TEXT, content_id TEXT)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DROP TABLE IF EXISTS pending_commands"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CREATE TABLE pending_commands (id INTEGER PRIMARY KEY, command TEXT, arguments TEXT)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/android/email/mail/store/LocalStore;->addRemoteStoreDataTable()V

    .line 163
    invoke-direct {p0}, Lcom/android/email/mail/store/LocalStore;->addFolderDeleteTrigger()V

    .line 165
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DROP TRIGGER IF EXISTS delete_message"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "CREATE TRIGGER delete_message BEFORE DELETE ON messages BEGIN DELETE FROM attachments WHERE old.id = message_id; END;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 228
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    if-eq v4, v6, :cond_9

    .line 229
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Database upgrade failed!"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 169
    :cond_3
    if-ge v1, v7, :cond_4

    .line 173
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN message_id TEXT;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 176
    :cond_4
    if-ge v1, v8, :cond_5

    .line 180
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE attachments ADD COLUMN content_id TEXT;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 183
    :cond_5
    if-ge v1, v9, :cond_6

    .line 188
    invoke-direct {p0}, Lcom/android/email/mail/store/LocalStore;->addRemoteStoreDataTable()V

    .line 189
    invoke-direct {p0}, Lcom/android/email/mail/store/LocalStore;->addFolderDeleteTrigger()V

    .line 190
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 192
    :cond_6
    if-ge v1, v10, :cond_7

    .line 197
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN store_flag_1 INTEGER;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN store_flag_2 INTEGER;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 201
    :cond_7
    const/16 v4, 0x17

    if-ge v1, v4, :cond_8

    .line 207
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 209
    :try_start_1
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN flag_downloaded_full INTEGER;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 210
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN flag_downloaded_partial INTEGER;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 211
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN flag_deleted INTEGER;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/android/email/mail/store/LocalStore;->migrateMessageFlags()V

    .line 213
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 214
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 219
    :cond_8
    if-ge v1, v6, :cond_2

    .line 223
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "ALTER TABLE messages ADD COLUMN x_headers TEXT;"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 224
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    goto/16 :goto_0

    .line 216
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 232
    :cond_9
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/email/mail/store/LocalStore;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_att"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    .line 233
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a

    .line 234
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 236
    :cond_a
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/mail/store/LocalStore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/email/mail/store/LocalStore;->mVisibleLimitDefault:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/mail/store/LocalStore;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/mail/store/LocalStore;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$700()[Lcom/android/emailcommon/mail/Flag;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/email/mail/store/LocalStore;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/mail/store/LocalStore;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/mail/store/LocalStore;->getPersistentString(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addFolderDeleteTrigger()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS delete_folder"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER delete_folder BEFORE DELETE ON folders BEGIN DELETE FROM messages WHERE old.id = folder_id; DELETE FROM remote_store_data WHERE old.id = folder_id; END;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private addRemoteStoreDataTable()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS remote_store_data"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE remote_store_data (id INTEGER PRIMARY KEY, folder_id INTEGER, data_key TEXT, data TEXT, UNIQUE (folder_id, data_key) ON CONFLICT REPLACE)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private getPersistentString(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "folderId"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 546
    move-object v9, p4

    .line 547
    .local v9, result:Ljava/lang/String;
    const/4 v8, 0x0

    .line 549
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "remote_store_data"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data"

    aput-object v4, v2, v3

    const-string v3, "folder_id = ? AND data_key = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 554
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 558
    :cond_0
    if-eqz v8, :cond_1

    .line 559
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 562
    :cond_1
    return-object v9

    .line 558
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 559
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private migrateMessageFlags()V
    .locals 18

    .prologue
    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "flags"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 269
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 270
    .local v10, columnId:I
    const-string v1, "flags"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 272
    .local v9, columnFlags:I
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 274
    .local v15, oldFlags:Ljava/lang/String;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 275
    .local v17, values:Landroid/content/ContentValues;
    const/4 v13, 0x0

    .line 276
    .local v13, newFlagDlFull:I
    const/4 v14, 0x0

    .line 277
    .local v14, newFlagDlPartial:I
    const/4 v12, 0x0

    .line 278
    .local v12, newFlagDeleted:I
    if-eqz v15, :cond_2

    .line 279
    sget-object v1, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    const/4 v13, 0x1

    .line 282
    :cond_0
    sget-object v1, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    const/4 v14, 0x1

    .line 285
    :cond_1
    sget-object v1, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    const/4 v12, 0x1

    .line 295
    :cond_2
    const-string v1, "flag_downloaded_full"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    const-string v1, "flag_downloaded_partial"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    const-string v1, "flag_deleted"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 299
    .local v16, rowId:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 302
    .end local v9           #columnFlags:I
    .end local v10           #columnId:I
    .end local v12           #newFlagDeleted:I
    .end local v13           #newFlagDlFull:I
    .end local v14           #newFlagDlPartial:I
    .end local v15           #oldFlags:Ljava/lang/String;
    .end local v16           #rowId:I
    .end local v17           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v9       #columnFlags:I
    .restart local v10       #columnId:I
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 304
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/store/LocalStore;
    .locals 1
    .parameter "uri"
    .parameter "context"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/android/email/mail/store/LocalStore;

    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/LocalStore;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method private setPersistentString(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "folderId"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 573
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 574
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "folder_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v1, "data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "remote_store_data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 579
    return-void
.end method


# virtual methods
.method public checkSettings()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 343
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 347
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception while closing localstore db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public delete()V
    .locals 7

    .prologue
    .line 357
    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 362
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 363
    .local v2, attachments:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 364
    .local v1, attachment:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 365
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 363
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 368
    .end local v1           #attachment:Ljava/io/File;
    :cond_1
    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 369
    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #attachments:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    :goto_2
    :try_start_2
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/email/mail/store/LocalStore;->mPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 378
    :goto_3
    return-void

    .line 375
    :catch_0
    move-exception v5

    goto :goto_3

    .line 371
    :catch_1
    move-exception v5

    goto :goto_2

    .line 358
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method public getAllFolders()[Lcom/android/emailcommon/mail/Folder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v1, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Folder;>;"
    const/4 v0, 0x0

    .line 318
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT name FROM folders"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 319
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    new-instance v2, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/email/mail/store/LocalStore$LocalFolder;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v2

    .line 323
    :cond_1
    if-eqz v0, :cond_2

    .line 324
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_2
    new-array v2, v5, [Lcom/android/emailcommon/mail/Folder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/emailcommon/mail/Folder;

    return-object v2
.end method

.method public getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 308
    new-instance v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPersistentCallbacks()Lcom/android/email/mail/Store$PersistentDataCallbacks;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 526
    return-object p0
.end method

.method public getPersistentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 530
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/email/mail/store/LocalStore;->getPersistentString(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1831
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStoredAttachmentCount()I
    .locals 3

    .prologue
    .line 386
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 387
    .local v0, attachments:[Ljava/io/File;
    array-length v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v0           #attachments:[Ljava/io/File;
    :goto_0
    return v2

    .line 388
    :catch_0
    move-exception v1

    .line 389
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I
    .locals 1
    .parameter "message"
    .parameter "flag"

    .prologue
    .line 1753
    invoke-virtual {p1, p2}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeFlagsString(Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;
    .locals 7
    .parameter "message"

    .prologue
    .line 1727
    const/4 v5, 0x0

    .line 1728
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1729
    .local v4, nonEmpty:Z
    invoke-static {}, Lcom/android/emailcommon/mail/Flag;->values()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v0

    .local v0, arr$:[Lcom/android/emailcommon/mail/Flag;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 1730
    .local v1, flag:Lcom/android/emailcommon/mail/Flag;
    sget-object v6, Lcom/android/emailcommon/mail/Flag;->X_STORE_1:Lcom/android/emailcommon/mail/Flag;

    if-eq v1, v6, :cond_2

    sget-object v6, Lcom/android/emailcommon/mail/Flag;->X_STORE_2:Lcom/android/emailcommon/mail/Flag;

    if-eq v1, v6, :cond_2

    sget-object v6, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/emailcommon/mail/Flag;

    if-eq v1, v6, :cond_2

    sget-object v6, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/emailcommon/mail/Flag;

    if-eq v1, v6, :cond_2

    sget-object v6, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    if-eq v1, v6, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1733
    if-nez v5, :cond_0

    .line 1734
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1736
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    :cond_0
    if-eqz v4, :cond_1

    .line 1737
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1739
    :cond_1
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    const/4 v4, 0x1

    .line 1729
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1743
    .end local v1           #flag:Lcom/android/emailcommon/mail/Flag;
    :cond_3
    if-nez v5, :cond_4

    const/4 v6, 0x0

    :goto_1
    return-object v6

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public removeFolder(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1840
    return-void
.end method

.method public renameFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "orgName"
    .parameter "newName"

    .prologue
    .line 1836
    return-void
.end method

.method public resetVisibleLimits(I)V
    .locals 4
    .parameter "visibleLimit"

    .prologue
    const/4 v3, 0x0

    .line 450
    iput p1, p0, Lcom/android/email/mail/store/LocalStore;->mVisibleLimitDefault:I

    .line 452
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 453
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "visible_limit"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "folders"

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 455
    return-void
.end method

.method public setPersistentString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 534
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/email/mail/store/LocalStore;->setPersistentString(JLjava/lang/String;Ljava/lang/String;)V

    .line 535
    return-void
.end method
