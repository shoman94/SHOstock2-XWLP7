.class public Lcom/sec/android/provider/logsprovider/LogsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LogsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;
    }
.end annotation


# static fields
.field private static final LOGS_HISTORY_URI:Landroid/net/Uri;

.field private static final SNS_MESSAGE_GET_URI:Landroid/net/Uri;

.field private static final SNS_MSG_RECEIVER_MAP_GET_URI:Landroid/net/Uri;

.field private static final SNS_MSG_RECEIVER_MAP_URI:Landroid/net/Uri;

.field private static final SNS_URI:Landroid/net/Uri;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "content://logs/sns"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_URI:Landroid/net/Uri;

    .line 37
    const-string v0, "content://logs/historys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsReceiver;->LOGS_HISTORY_URI:Landroid/net/Uri;

    .line 39
    const-string v0, "content://logs/sns_msg_receiver_map"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_MSG_RECEIVER_MAP_URI:Landroid/net/Uri;

    .line 42
    const-string v0, "content://com.sec.android.app.provider.sns/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_MESSAGE_GET_URI:Landroid/net/Uri;

    .line 45
    const-string v0, "content://com.sec.android.app.provider.sns/msg_receiver_map"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_MSG_RECEIVER_MAP_GET_URI:Landroid/net/Uri;

    .line 63
    new-instance v0, Lcom/sec/android/provider/logsprovider/LogsReceiver$1;

    invoke-direct {v0}, Lcom/sec/android/provider/logsprovider/LogsReceiver$1;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/sec/android/provider/logsprovider/LogsReceiver;->updateSnsData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/sec/android/provider/logsprovider/LogsReceiver;->removeImAccount(Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;)V

    return-void
.end method

.method private static removeImAccount(Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 127
    iget-object v2, p0, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 128
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "logtype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const/16 v2, 0x2bc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v2, "sp_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget v2, p0, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;->mSptype:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v2, "account_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v2, "LogsReceiver"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsReceiver;->LOGS_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method private static updateSnsData(Landroid/content/Context;)V
    .locals 18
    .parameter "context"

    .prologue
    .line 147
    const-string v2, "LogsReceiver"

    const-string v3, "updateSnsData"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 149
    .local v1, cr:Landroid/content/ContentResolver;
    if-nez v1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 153
    :cond_0
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 154
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_MSG_RECEIVER_MAP_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 156
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_MESSAGE_GET_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->SNS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "send_time DESC limit 3000"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 158
    .local v13, snsCursor:Landroid/database/Cursor;
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_MSG_RECEIVER_MAP_GET_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->SNS_RECEIVER_MAP_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 161
    .local v14, snsReceiverMapCursor:Landroid/database/Cursor;
    if-eqz v14, :cond_3

    .line 162
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 163
    .local v9, mapCount:I
    const-string v2, "LogsReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number of receiver map : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-lez v9, :cond_2

    .line 165
    new-array v0, v9, [Landroid/content/ContentValues;

    move-object/from16 v17, v0

    .line 166
    .local v17, values:[Landroid/content/ContentValues;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 167
    const/4 v7, 0x0

    .local v7, index:I
    :goto_1
    if-ge v7, v9, :cond_1

    .line 168
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v17, v7

    .line 169
    aget-object v2, v17, v7

    const-string v3, "message_id"

    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    aget-object v2, v17, v7

    const-string v3, "receiver_id"

    const/4 v4, 0x2

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    aget-object v2, v17, v7

    const-string v3, "receiver_name"

    const/4 v4, 0x3

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 167
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 175
    :cond_1
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsReceiver;->SNS_MSG_RECEIVER_MAP_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 177
    .end local v7           #index:I
    .end local v17           #values:[Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 182
    .end local v9           #mapCount:I
    :goto_2
    if-eqz v13, :cond_a

    .line 183
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 184
    .local v12, snsCount:I
    const-string v2, "LogsReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number of sns messages : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    if-lez v12, :cond_9

    .line 186
    new-array v0, v12, [Landroid/content/ContentValues;

    move-object/from16 v17, v0

    .line 187
    .restart local v17       #values:[Landroid/content/ContentValues;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 188
    const/4 v7, 0x0

    .restart local v7       #index:I
    :goto_3
    if-ge v7, v12, :cond_8

    .line 189
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v17, v7

    .line 190
    aget-object v2, v17, v7

    const-string v3, "number"

    const/4 v4, 0x6

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    aget-object v2, v17, v7

    const-string v3, "date"

    const/4 v4, 0x5

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    aget-object v2, v17, v7

    const-string v3, "duration"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    aget-object v2, v17, v7

    const-string v3, "logtype"

    const/16 v4, 0x258

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    aget-object v2, v17, v7

    const-string v3, "sns_pkey"

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    const/16 v2, 0x8

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 200
    .local v16, type:Ljava/lang/String;
    if-nez v16, :cond_4

    .line 201
    const-string v2, "LogsReceiver"

    const-string v3, "Sns type is wrong value"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 179
    .end local v7           #index:I
    .end local v12           #snsCount:I
    .end local v16           #type:Ljava/lang/String;
    .end local v17           #values:[Landroid/content/ContentValues;
    :cond_3
    const-string v2, "LogsReceiver"

    const-string v3, "snsReceiverMapCursor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 204
    .restart local v7       #index:I
    .restart local v12       #snsCount:I
    .restart local v16       #type:Ljava/lang/String;
    .restart local v17       #values:[Landroid/content/ContentValues;
    :cond_4
    const/4 v8, 0x0

    .line 205
    .local v8, itype:I
    const-string v10, ""

    .line 206
    .local v10, name:Ljava/lang/String;
    const-string v11, ""

    .line 207
    .local v11, peopleId:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 208
    const-string v2, "inbox"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 209
    const/4 v8, 0x1

    .line 210
    const/4 v2, 0x6

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 211
    const/4 v2, 0x7

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 224
    :goto_5
    aget-object v2, v17, v7

    const-string v3, "type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    aget-object v2, v17, v7

    const-string v3, "new"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    aget-object v2, v17, v7

    const-string v3, "name"

    invoke-virtual {v2, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    aget-object v2, v17, v7

    const-string v3, "messageid"

    const/4 v4, 0x2

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    aget-object v2, v17, v7

    const-string v3, "contactid"

    invoke-virtual {v2, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    aget-object v2, v17, v7

    const-string v3, "m_content"

    const/4 v4, 0x4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    aget-object v2, v17, v7

    const-string v3, "m_subject"

    const/4 v4, 0x3

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    aget-object v2, v17, v7

    const-string v3, "sns_receiver_count"

    const/16 v4, 0xc

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v15, 0x0

    .line 234
    .local v15, spType:I
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 261
    :pswitch_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 212
    .end local v15           #spType:I
    :cond_5
    const-string v2, "outbox"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 213
    const/4 v8, 0x2

    .line 214
    const/16 v2, 0xa

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 215
    const/16 v2, 0xb

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 217
    :cond_6
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 221
    :cond_7
    const-string v2, "LogsReceiver"

    const-string v3, "Sns type is wrong value2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 236
    .restart local v15       #spType:I
    :pswitch_1
    const/4 v15, 0x0

    .line 237
    aget-object v2, v17, v7

    const-string v3, "sns_tid"

    const/16 v4, 0x9

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_6
    aget-object v2, v17, v7

    const-string v3, "sp_type"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 240
    :pswitch_2
    const/4 v15, 0x1

    .line 241
    goto :goto_6

    .line 243
    :pswitch_3
    const/4 v15, 0x2

    .line 244
    goto :goto_6

    .line 246
    :pswitch_4
    const/16 v15, 0xe

    .line 247
    goto :goto_6

    .line 250
    :pswitch_5
    const/4 v15, 0x6

    .line 251
    aget-object v2, v17, v7

    const-string v3, "sns_tid"

    const/16 v4, 0x9

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 254
    :pswitch_6
    const/4 v15, 0x7

    .line 255
    aget-object v2, v17, v7

    const-string v3, "sns_tid"

    const/16 v4, 0x9

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 258
    :pswitch_7
    const/16 v15, 0xf

    .line 259
    goto :goto_6

    .line 267
    .end local v8           #itype:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #peopleId:Ljava/lang/String;
    .end local v15           #spType:I
    .end local v16           #type:Ljava/lang/String;
    :cond_8
    const-string v2, "content://logs/sns"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 269
    .end local v7           #index:I
    .end local v17           #values:[Landroid/content/ContentValues;
    :cond_9
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 271
    .end local v12           #snsCount:I
    :cond_a
    const-string v2, "LogsReceiver"

    const-string v3, "sns cursor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 98
    const-string v3, "LogsReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v3, "com.sec.android.app.sns.action.UPDATE_MESSAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 101
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 102
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    const-string v3, "LogsReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    const-string v3, "com.seven.Z7.ACCOUNT_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    new-instance v1, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;-><init>(Lcom/sec/android/provider/logsprovider/LogsReceiver$1;)V

    .line 110
    .local v1, ainfo:Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;
    iput-object p1, v1, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;->mContext:Landroid/content/Context;

    .line 111
    const-string v3, "account_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;->mAccountName:Ljava/lang/String;

    .line 112
    const-string v3, "sp_type"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;->mSptype:I

    .line 114
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 115
    .restart local v2       #msg:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 116
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 120
    .end local v1           #ainfo:Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;
    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    const-string v3, "LogsReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong Action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_3
    const-string v3, "LogsReceiver"

    const-string v4, "Action value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
