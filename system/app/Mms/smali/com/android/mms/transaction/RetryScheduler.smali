.class public Lcom/android/mms/transaction/RetryScheduler;
.super Ljava/lang/Object;
.source "RetryScheduler.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# static fields
.field private static sInstance:Lcom/android/mms/transaction/RetryScheduler;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    .line 52
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/mms/transaction/RetryScheduler;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/RetryScheduler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    .line 60
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    return-object v0
.end method

.method private getResponseStatus(J)I
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v3, 0x0

    .line 216
    const/4 v8, 0x0

    .line 217
    .local v8, respStatus:I
    iget-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 220
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "resp_st"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 224
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 226
    if-eqz v8, :cond_1

    .line 227
    const-string v0, "Mms/RetryScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_1
    return v8

    .line 224
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isConnected()Z
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 66
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1
.end method

.method private scheduleRetry(Landroid/net/Uri;)V
    .locals 34
    .parameter "uri"

    .prologue
    .line 101
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v22

    .line 103
    .local v22, msgId:J
    sget-object v3, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v33

    .line 104
    .local v33, uriBuilder:Landroid/net/Uri$Builder;
    const-string v3, "protocol"

    const-string v4, "mms"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 105
    const-string v3, "message"

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 110
    .local v17, cursor:Landroid/database/Cursor;
    if-eqz v17, :cond_4

    .line 112
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 113
    const-string v3, "msg_type"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 116
    .local v24, msgType:I
    const-string v3, "retry_index"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v29, v3, 0x1

    .line 120
    .local v29, retryIndex:I
    const/16 v18, 0x1

    .line 122
    .local v18, errorType:I
    new-instance v30, Lcom/android/mms/transaction/DefaultRetryScheme;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-direct {v0, v3, v1}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;I)V

    .line 124
    .local v30, scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    new-instance v10, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v10, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 125
    .local v10, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 126
    .local v15, current:J
    const/16 v3, 0x82

    move/from16 v0, v24

    if-ne v0, v3, :cond_5

    const/16 v21, 0x1

    .line 127
    .local v21, isRetryDownloading:Z
    :goto_0
    const/16 v26, 0x1

    .line 128
    .local v26, retry:Z
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/RetryScheduler;->getResponseStatus(J)I

    move-result v25

    .line 129
    .local v25, respStatus:I
    const/16 v3, 0x84

    move/from16 v0, v25

    if-ne v0, v3, :cond_0

    .line 130
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const v4, 0x7f09004d

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 132
    const/16 v26, 0x0

    .line 138
    :cond_0
    const/16 v3, 0xe0

    move/from16 v0, v25

    if-lt v0, v3, :cond_1

    const/16 v3, 0xff

    move/from16 v0, v25

    if-gt v0, v3, :cond_1

    .line 140
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const v4, 0x7f090173

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 142
    const/16 v26, 0x0

    .line 147
    :cond_1
    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v3

    move/from16 v0, v29

    if-ge v0, v3, :cond_6

    if-eqz v26, :cond_6

    .line 148
    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/transaction/DefaultRetryScheme;->getWaitingInterval()J

    move-result-wide v3

    add-long v27, v15, v3

    .line 150
    .local v27, retryAt:J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    const-string v3, "Mms/RetryScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduleRetry: retry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is scheduled at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v27, v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms from now"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_2
    const-string v3, "due_time"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    if-eqz v21, :cond_3

    .line 159
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const/16 v4, 0x82

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 198
    .end local v27           #retryAt:J
    :cond_3
    :goto_1
    const-string v3, "err_type"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string v3, "retry_index"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v3, "last_try"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    const-string v3, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 203
    .local v14, columnIndex:I
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 204
    .local v19, id:J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v14           #columnIndex:I
    .end local v15           #current:J
    .end local v18           #errorType:I
    .end local v19           #id:J
    .end local v21           #isRetryDownloading:Z
    .end local v24           #msgType:I
    .end local v25           #respStatus:I
    .end local v26           #retry:Z
    .end local v29           #retryIndex:I
    .end local v30           #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    :goto_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_4
    return-void

    .line 126
    .restart local v10       #values:Landroid/content/ContentValues;
    .restart local v15       #current:J
    .restart local v18       #errorType:I
    .restart local v24       #msgType:I
    .restart local v29       #retryIndex:I
    .restart local v30       #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 163
    .restart local v21       #isRetryDownloading:Z
    .restart local v25       #respStatus:I
    .restart local v26       #retry:Z
    :cond_6
    const/16 v18, 0xa

    .line 164
    if-eqz v21, :cond_a

    .line 165
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "thread_id"

    aput-object v7, v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 170
    .local v13, c:Landroid/database/Cursor;
    const-wide/16 v31, -0x1

    .line 171
    .local v31, threadId:J
    if-eqz v13, :cond_8

    .line 173
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 174
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v31

    .line 177
    :cond_7
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_8
    const-wide/16 v3, -0x1

    cmp-long v3, v31, v3

    if-eqz v3, :cond_9

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v31

    invoke-static {v3, v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifyDownloadFailed(Landroid/content/Context;J)V

    .line 186
    :cond_9
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const/16 v4, 0x87

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 210
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v13           #c:Landroid/database/Cursor;
    .end local v15           #current:J
    .end local v18           #errorType:I
    .end local v21           #isRetryDownloading:Z
    .end local v24           #msgType:I
    .end local v25           #respStatus:I
    .end local v26           #retry:Z
    .end local v29           #retryIndex:I
    .end local v30           #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    .end local v31           #threadId:J
    :catchall_0
    move-exception v3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v3

    .line 177
    .restart local v10       #values:Landroid/content/ContentValues;
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v15       #current:J
    .restart local v18       #errorType:I
    .restart local v21       #isRetryDownloading:Z
    .restart local v24       #msgType:I
    .restart local v25       #respStatus:I
    .restart local v26       #retry:Z
    .restart local v29       #retryIndex:I
    .restart local v30       #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    .restart local v31       #threadId:J
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 190
    .end local v13           #c:Landroid/database/Cursor;
    .end local v31           #threadId:J
    :cond_a
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 191
    .local v6, readValues:Landroid/content/ContentValues;
    const-string v3, "read"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 207
    .end local v6           #readValues:Landroid/content/ContentValues;
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v15           #current:J
    .end local v18           #errorType:I
    .end local v21           #isRetryDownloading:Z
    .end local v24           #msgType:I
    .end local v25           #respStatus:I
    .end local v26           #retry:Z
    .end local v29           #retryIndex:I
    .end local v30           #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    :cond_b
    const-string v3, "Mms/RetryScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot found correct pending status for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method public static setRetryAlarm(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    .line 233
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_1

    .line 236
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "due_time"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_ONALARM"

    const/4 v5, 0x0

    const-class v6, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v4, v5, p0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    const/4 v4, 0x0

    const/high16 v5, 0x4000

    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 245
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 246
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 248
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "Mms/RetryScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Next retry is scheduled at"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms from now"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_1
    return-void

    .line 255
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 7
    .parameter "observable"

    .prologue
    .line 71
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object v2, v0

    .line 73
    .local v2, t:Lcom/android/mms/transaction/Transaction;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    const-string v4, "Mms/RetryScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RetryScheduler] update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    instance-of v4, v2, Lcom/android/mms/transaction/NotificationTransaction;

    if-nez v4, :cond_1

    instance-of v4, v2, Lcom/android/mms/transaction/RetrieveTransaction;

    if-nez v4, :cond_1

    instance-of v4, v2, Lcom/android/mms/transaction/ReadRecTransaction;

    if-nez v4, :cond_1

    instance-of v4, v2, Lcom/android/mms/transaction/SendTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    .line 82
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v1

    .line 83
    .local v1, state:Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 84
    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 85
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 86
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/RetryScheduler;->scheduleRetry(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .end local v3           #uri:Landroid/net/Uri;
    :cond_2
    :try_start_2
    invoke-virtual {v2, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    .end local v1           #state:Lcom/android/mms/transaction/TransactionState;
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/transaction/RetryScheduler;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 95
    iget-object v4, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 98
    :cond_4
    return-void

    .line 90
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v2, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    .end local v2           #t:Lcom/android/mms/transaction/Transaction;
    :catchall_1
    move-exception v4

    invoke-direct {p0}, Lcom/android/mms/transaction/RetryScheduler;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 95
    iget-object v5, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    :cond_5
    throw v4
.end method
