.class public Lcom/android/email/EmailUtility;
.super Ljava/lang/Object;
.source "EmailUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;
    }
.end annotation


# static fields
.field private static m_seven_status:Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

.field static resource_ids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/EmailUtility;->resource_ids:Ljava/util/HashMap;

    .line 91
    sget-object v0, Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;->NOT_INITIALIZED:Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

    sput-object v0, Lcom/android/email/EmailUtility;->m_seven_status:Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static formatSize(Landroid/content/Context;F)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "size"

    .prologue
    const-wide/16 v9, 0x400

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 255
    .local v6, res:Landroid/content/res/Resources;
    const-wide/16 v2, 0x400

    .line 256
    .local v2, kb:J
    mul-long v4, v2, v9

    .line 257
    .local v4, mb:J
    mul-long v0, v4, v9

    .line 260
    .local v0, gb:J
    long-to-float v9, v2

    cmpg-float v9, p1, v9

    if-gez v9, :cond_0

    .line 261
    const v7, 0x7f0d000e

    .line 262
    .local v7, resId:I
    float-to-int v9, p1

    int-to-float v8, v9

    .line 273
    .local v8, value:F
    :goto_0
    float-to-int v9, v8

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 263
    .end local v7           #resId:I
    .end local v8           #value:F
    :cond_0
    long-to-float v9, v4

    cmpg-float v9, p1, v9

    if-gez v9, :cond_1

    .line 264
    const v7, 0x7f0d000f

    .line 265
    .restart local v7       #resId:I
    long-to-float v9, v2

    div-float v8, p1, v9

    .restart local v8       #value:F
    goto :goto_0

    .line 266
    .end local v7           #resId:I
    .end local v8           #value:F
    :cond_1
    long-to-float v9, v0

    cmpg-float v9, p1, v9

    if-gez v9, :cond_2

    .line 267
    const v7, 0x7f0d0010

    .line 268
    .restart local v7       #resId:I
    long-to-float v9, v4

    div-float v8, p1, v9

    .restart local v8       #value:F
    goto :goto_0

    .line 270
    .end local v7           #resId:I
    .end local v8           #value:F
    :cond_2
    const v7, 0x7f0d0011

    .line 271
    .restart local v7       #resId:I
    long-to-float v9, v0

    div-float v8, p1, v9

    .restart local v8       #value:F
    goto :goto_0
.end method

.method public static declared-synchronized getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 299
    const-class v3, Lcom/android/email/EmailUtility;

    monitor-enter v3

    if-nez p0, :cond_0

    move-object v0, v2

    .line 335
    :goto_0
    monitor-exit v3

    return-object v0

    .line 301
    :cond_0
    const/4 v0, 0x0

    .line 305
    .local v0, deviceId:Ljava/lang/String;
    :try_start_0
    sget-boolean v4, Lcom/android/email/activity/ActivityResourceInterface;->FEATURE_DISABLE_3G:Z

    if-eqz v4, :cond_5

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hardware_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, hardwareId:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 310
    const-string v4, "ro.serialno"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    const-string v4, "unknown"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 312
    const/4 v1, 0x0

    .line 314
    :cond_1
    if-nez v1, :cond_3

    .line 315
    sget-boolean v4, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v4, :cond_2

    .line 316
    const-string v4, "EAS"

    const-string v5, "Wifi Model, hardwareId : null "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v2

    .line 318
    goto :goto_0

    .line 320
    :cond_3
    invoke-static {p0, v1}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_4

    .line 322
    const-string v2, "EAS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wifi Model, hardware_id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .end local v1           #hardwareId:Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v2, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive deviceId from Email app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :catch_0
    move-exception v2

    goto :goto_0

    .line 327
    :cond_5
    invoke-static {p0}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 299
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getUnreadTotalCount(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 353
    const/4 v8, 0x0

    .line 355
    .local v8, unreadMessageCount:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "unreadCount"

    aput-object v4, v2, v5

    const-string v4, "type"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 360
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 361
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 364
    .local v7, count:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 365
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v8, v0

    goto :goto_0

    .line 370
    .end local v7           #count:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 371
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 373
    :cond_2
    return v8

    .line 370
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 371
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isAccountAddedRecently(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Landroid/util/Pair;
    .locals 6
    .parameter "unifiedMailbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 459
    if-nez p0, :cond_0

    .line 460
    const-string v0, "EmailUtility"

    const-string v1, "isAccountAddedRecently - Null params"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    new-instance v0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 479
    :goto_0
    return-object v0

    .line 464
    :cond_0
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v0, v1}, Lcom/android/email/Controller;->isUnifiedAccount(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncLookback:I

    if-gtz v0, :cond_2

    .line 466
    :cond_1
    const-string v0, "EmailUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAccountAddedRecently - not an unifiedAcc - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Or mSyncLookback is <= zero- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncLookback:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 471
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncLookback:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1c20

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 472
    const-string v0, "EmailUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAccountAddedRecently - Yes. but, it has been long time [true, true]- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncLookback:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 477
    :cond_3
    const-string v0, "EmailUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAccountAddedRecently - Yes. acc added recently [true, false] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncLookback:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    new-instance v0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static isMailboxType(Landroid/content/Context;JI)Z
    .locals 4
    .parameter "context"
    .parameter "mailboxId"
    .parameter "mailboxType"

    .prologue
    const/4 v2, 0x0

    .line 277
    const/4 v1, 0x0

    .line 279
    .local v1, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 284
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-ne v3, p3, :cond_0

    .line 285
    const/4 v2, 0x1

    .line 287
    :cond_0
    :goto_0
    return v2

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isNetworkConnected()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 487
    :try_start_0
    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v3

    const-string v5, "connectivity"

    invoke-virtual {v3, v5}, Lcom/android/email/Email;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 489
    .local v1, info:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 490
    const-string v3, "Email"

    const-string v5, "isNetworkConnected(): info is null"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 505
    :goto_0
    return v3

    .line 493
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 494
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 495
    .local v2, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_1

    .line 496
    const-string v3, "Email"

    const-string v5, "isNetworkConnected(): network is connected"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    const/4 v3, 0x1

    goto :goto_0

    .line 500
    .end local v2           #state:Landroid/net/NetworkInfo$DetailedState;
    :catch_0
    move-exception v0

    .line 501
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Email"

    const-string v5, "isNetworkConnected(): exception..."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v3, "Email"

    const-string v5, "isNetworkConnected(): network is disconnected"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 505
    goto :goto_0
.end method

.method public static makeDisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "packedTo"
    .parameter "packedCc"
    .parameter "packedBcc"

    .prologue
    .line 348
    invoke-static {p0, p1, p2, p3}, Lcom/android/email/activity/ActivityResourceInterface;->makeDisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static showToast(Landroid/app/Activity;II)V
    .locals 1
    .parameter "activity"
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 211
    if-nez p0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static showToast(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .parameter "activity"
    .parameter "message"
    .parameter "duration"

    .prologue
    .line 224
    new-instance v0, Lcom/android/email/EmailUtility$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/EmailUtility$1;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method

.method public static toPrimitiveStringArray(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    .line 235
    .local v4, size:I
    new-array v3, v4, [Ljava/lang/String;

    .line 237
    .local v3, ret:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 238
    .local v0, i:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 239
    .local v5, value:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aput-object v5, v3, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 241
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    return-object v3
.end method
