.class Lcom/android/email/adapter/SncAdapter$SncResults;
.super Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
.source "SncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/adapter/SncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SncResults"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/adapter/SncAdapter;


# direct methods
.method private constructor <init>(Lcom/android/email/adapter/SncAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/email/adapter/SncAdapter$SncResults;->this$0:Lcom/android/email/adapter/SncAdapter;

    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;-><init>()V

    .line 388
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/adapter/SncAdapter;Lcom/android/email/adapter/SncAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/email/adapter/SncAdapter$SncResults;-><init>(Lcom/android/email/adapter/SncAdapter;)V

    return-void
.end method


# virtual methods
.method public onAddAccountFinished(Landroid/os/Bundle;J)V
    .locals 24
    .parameter "status"
    .parameter "accountId"

    .prologue
    .line 274
    const-string v3, "SNCEVENT@CONTR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAddAccountFinished - status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " accountId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v3, "status_code"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 277
    .local v19, resultCode:I
    const-string v3, "status_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 278
    .local v16, errorString:Ljava/lang/String;
    if-nez v19, :cond_3

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/adapter/SncAdapter$SncResults;->this$0:Lcom/android/email/adapter/SncAdapter;

    invoke-virtual {v3}, Lcom/android/email/adapter/SncAdapter;->createUnifiedAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v20

    .line 287
    .local v20, unifiedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    sget-object v3, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreUnifiedMailbox(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v21

    .line 288
    .local v21, unifiedInbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v12, v3, v5

    .line 289
    .local v12, currentTime:J
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v14, cv:Landroid/content/ContentValues;
    const-string v3, "syncLookback"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 291
    const-string v3, "syncKey"

    const-string v4, ""

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 294
    .local v22, uri:Landroid/net/Uri;
    sget-object v3, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v14, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/adapter/SncAdapter$SncResults;->this$0:Lcom/android/email/adapter/SncAdapter;

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/email/adapter/SncAdapter;->setMailboxSyncable(JJZ)V

    .line 296
    const-string v3, "SncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAddAccountFinished PUSH stopped for UnifiedInbox - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v3, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v10

    .line 302
    .local v10, accounts:[Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v10, :cond_2

    .line 303
    move-object v11, v10

    .local v11, arr$:[Lcom/android/emailcommon/provider/EmailContent$Account;
    array-length v0, v11

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget-object v9, v11, v17

    .line 304
    .local v9, a:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v20

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 306
    .local v15, cvHostAuth:Landroid/content/ContentValues;
    const-string v3, "hostAuthKeyRecv"

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 308
    const-string v3, "hostAuthKeySend"

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 310
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 312
    .local v23, uriAccount:Landroid/net/Uri;
    sget-object v3, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v15, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 314
    const-string v3, "SncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updated HostAuth entries of accid - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-boolean v3, Lcom/android/email/activity/utils/AppPreferences;->ENABLE_SNC_GET_TAGS:Z

    if-eqz v3, :cond_1

    .line 318
    sget-object v3, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;

    move-result-object v3

    iget-wide v4, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getTags(J)V

    .line 303
    .end local v15           #cvHostAuth:Landroid/content/ContentValues;
    .end local v23           #uriAccount:Landroid/net/Uri;
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 320
    .restart local v15       #cvHostAuth:Landroid/content/ContentValues;
    .restart local v23       #uriAccount:Landroid/net/Uri;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/adapter/SncAdapter$SncResults;->this$0:Lcom/android/email/adapter/SncAdapter;

    iget-wide v4, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/adapter/SncAdapter;->createDefaultMailbox(J)V

    goto :goto_1

    .line 330
    .end local v9           #a:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v11           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v15           #cvHostAuth:Landroid/content/ContentValues;
    .end local v17           #i$:I
    .end local v18           #len$:I
    .end local v23           #uriAccount:Landroid/net/Uri;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/adapter/SncAdapter$SncResults;->this$0:Lcom/android/email/adapter/SncAdapter;

    #getter for: Lcom/android/email/adapter/SncAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/email/adapter/SncAdapter;->access$300(Lcom/android/email/adapter/SncAdapter;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/email/adapter/SncAdapter$SncResults$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/email/adapter/SncAdapter$SncResults$2;-><init>(Lcom/android/email/adapter/SncAdapter$SncResults;)V

    const-wide/32 v5, 0x2bf20

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 342
    .end local v10           #accounts:[Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v12           #currentTime:J
    .end local v14           #cv:Landroid/content/ContentValues;
    .end local v20           #unifiedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v21           #unifiedInbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v22           #uri:Landroid/net/Uri;
    :cond_3
    if-nez v19, :cond_4

    if-eqz v16, :cond_4

    const-string v3, "Account added from web"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 344
    const-string v3, "SncAdapter"

    const-string v4, "Account Added from Web, hence avoid intimationg to UI"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_2
    return-void

    .line 347
    :cond_4
    sget-object v3, Lcom/android/email/adapter/ProtocolAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/email/Controller$ServiceCallback;->addUserAccountStatus(Landroid/os/Bundle;J)V

    goto :goto_2
.end method

.method public onAvailableAccountsReceived(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 3
    .parameter "status"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    const-string v0, "SNCEVENT@CONTR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAvailableAccountsReceived - Bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SncEndpointList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/Controller$ServiceCallback;->getAvailableAccountStatus(Landroid/os/Bundle;Ljava/util/List;)V

    .line 126
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter$SncResults;->this$0:Lcom/android/email/adapter/SncAdapter;

    const/4 v1, 0x1

    #setter for: Lcom/android/email/adapter/SncAdapter;->mAvailableAccountResponse:Z
    invoke-static {v0, v1}, Lcom/android/email/adapter/SncAdapter;->access$102(Lcom/android/email/adapter/SncAdapter;Z)Z

    .line 127
    return-void
.end method

.method public onConfiguredAccountsReceived(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 3
    .parameter "status"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncUserEndpoint;>;"
    const-string v0, "SNCEVENT@CONTR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfiguredAccountsReceived - Bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SncUserEndpointList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/Controller$ServiceCallback;->getUserConfiguredAccountStatus(Landroid/os/Bundle;Ljava/util/List;)V

    .line 133
    return-void
.end method

.method public onDeactivateSnc()V
    .locals 4

    .prologue
    .line 373
    const-string v1, "SNCEVENT@CONTR"

    const-string v2, "onDeactivateSnc "

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/android/email/adapter/SncAdapter$SncResults;->this$0:Lcom/android/email/adapter/SncAdapter;

    const-wide/16 v2, 0x0

    #calls: Lcom/android/email/adapter/SncAdapter;->stopPushForUnifiedAccount(J)V
    invoke-static {v1, v2, v3}, Lcom/android/email/adapter/SncAdapter;->access$400(Lcom/android/email/adapter/SncAdapter;J)V

    .line 375
    sget-object v1, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 376
    .local v0, unifiedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/email/adapter/SncAdapter$SncResults;->this$0:Lcom/android/email/adapter/SncAdapter;

    #getter for: Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;
    invoke-static {v1}, Lcom/android/email/adapter/SncAdapter;->access$200(Lcom/android/email/adapter/SncAdapter;)Lcom/android/email/SncMessagingController;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/SncMessagingController;->deleteUserAccount(J)V

    .line 379
    :cond_0
    sget-object v1, Lcom/android/email/adapter/ProtocolAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v1}, Lcom/android/email/Controller$ServiceCallback;->deactivateSnc()V

    .line 380
    return-void
.end method

.method public onDeleteAccountFinished(Landroid/os/Bundle;J)V
    .locals 3
    .parameter "status"
    .parameter "accountId"

    .prologue
    .line 356
    const-string v0, "SNCEVENT@CONTR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteAccountFinished - status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/Controller$ServiceCallback;->deleteUserAccountStatus(Landroid/os/Bundle;J)V

    .line 359
    return-void
.end method

.method public onDeleteAccountFromWebPortal(JLjava/lang/String;)V
    .locals 3
    .parameter "accountId"
    .parameter "emailId"

    .prologue
    .line 363
    const-string v0, "SNCEVENT@CONTR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteAccountFromWebPortal - accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and EmailId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter$SncResults;->this$0:Lcom/android/email/adapter/SncAdapter;

    const-wide/16 v1, 0x0

    #calls: Lcom/android/email/adapter/SncAdapter;->stopPushForUnifiedAccount(J)V
    invoke-static {v0, v1, v2}, Lcom/android/email/adapter/SncAdapter;->access$400(Lcom/android/email/adapter/SncAdapter;J)V

    .line 367
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/NotificationController;->cancelNewMessageNotification(J)V

    .line 368
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/Controller$ServiceCallback;->deleteAccountFromWebPortal(JLjava/lang/String;)V

    .line 369
    return-void
.end method

.method public onGetProfileFinished(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 3
    .parameter "status"
    .parameter "sncProfile"

    .prologue
    .line 136
    const-string v0, "SNCEVENT@CONTR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfiguredAccountsReceived - Bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SncProfile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/Controller$ServiceCallback;->getUserProfileStatus(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    .line 139
    return-void
.end method

.method public onModifyAccountFinished(Landroid/os/Bundle;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 351
    const-string v0, "SNCEVENT@CONTR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModifyAccountFinished - status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, p1}, Lcom/android/email/Controller$ServiceCallback;->modifyUserAccountStatus(Landroid/os/Bundle;)V

    .line 353
    return-void
.end method

.method public onNewMailNotificationReceived(I)V
    .locals 3
    .parameter "newMailCount"

    .prologue
    .line 150
    const-string v0, "SNCEVENT@CONTR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewMailNotificationReceived - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/android/email/adapter/SncAdapter$SncResults$1;

    invoke-direct {v0, p0, p1}, Lcom/android/email/adapter/SncAdapter$SncResults$1;-><init>(Lcom/android/email/adapter/SncAdapter$SncResults;I)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 267
    return-void
.end method

.method public onSyncAllReceived(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 3
    .parameter "b"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 559
    .local p2, serviceInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncServiceInfo;>;"
    const-string v0, "SNCEVENT@CONTR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncAllReceived - bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ServiceInfolist - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-super {p0, p1, p2}, Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;->onSyncAllReceived(Landroid/os/Bundle;Ljava/util/List;)V

    .line 563
    return-void
.end method

.method public onTagsReceived(Landroid/os/Bundle;JLjava/util/List;)V
    .locals 28
    .parameter "status"
    .parameter "accId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p4, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncTag;>;"
    const-string v2, "SNCEVENT@CONTR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTagsReceived - status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "list - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 408
    .local v25, tagList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;>;"
    const/16 v24, 0x0

    .line 409
    .local v24, tagInfo:Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;
    if-nez p4, :cond_0

    .line 412
    sget-object v2, Lcom/android/email/adapter/ProtocolAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/16 v3, 0x22

    const/4 v4, 0x0

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxListStatus(JII)V

    .line 555
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/email/syncnconnect/utils/SncTag;

    .line 417
    .local v23, tag:Lcom/android/email/syncnconnect/utils/SncTag;
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/syncnconnect/utils/SncTag;->getUserEndpointId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #tagInfo:Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;
    check-cast v24, Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;

    .line 418
    .restart local v24       #tagInfo:Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;
    if-nez v24, :cond_1

    .line 419
    new-instance v24, Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;

    .end local v24           #tagInfo:Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;-><init>(Lcom/android/email/adapter/SncAdapter$SncResults;)V

    .line 420
    .restart local v24       #tagInfo:Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/syncnconnect/utils/SncTag;->getUserEndpointId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_1
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;->mTagInfoList:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/syncnconnect/utils/SncTag;->getTagName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;->mTagNameList:Ljava/util/HashSet;

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/syncnconnect/utils/SncTag;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 424
    const-string v2, "SncAdapter"

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/syncnconnect/utils/SncTag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 455
    .end local v23           #tag:Lcom/android/email/syncnconnect/utils/SncTag;
    :cond_2
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v12           #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 456
    .local v11, endPointUserId:Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #tagInfo:Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;
    check-cast v24, Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;

    .line 457
    .restart local v24       #tagInfo:Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;
    sget-object v2, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v11}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getAccountIdFromUserEndpointId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    .line 460
    .local v8, accountId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-gtz v2, :cond_3

    .line 461
    const-string v2, "SncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No acc for UserEndPtId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 464
    :cond_3
    const-string v2, "SncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got acc - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for endPoint - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;->mTagNameList:Ljava/util/HashSet;

    move-object/from16 v21, v0

    .line 467
    .local v21, remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 468
    .local v17, localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 469
    .local v16, localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/MessagingController$LocalMailboxInfo;->PROJECTION:[Ljava/lang/String;

    const-string v5, "accountKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 474
    .local v15, localFolderCursor:Landroid/database/Cursor;
    :goto_3
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 475
    new-instance v14, Lcom/android/email/MessagingController$LocalMailboxInfo;

    invoke-direct {v14, v15}, Lcom/android/email/MessagingController$LocalMailboxInfo;-><init>(Landroid/database/Cursor;)V

    .line 476
    .local v14, info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    iget-object v2, v14, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v2, v14, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 479
    .end local v14           #info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    :cond_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 483
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 486
    new-instance v20, Ljava/util/HashSet;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 487
    .local v20, localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v2, "SncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locally Deleting non-existing folders for accId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n Local - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n Remote - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {v20 .. v21}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 491
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 492
    .local v19, localNameToDrop:Ljava/lang/String;
    const-string v2, "SncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Going to Delete folder - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for accId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/email/MessagingController$LocalMailboxInfo;

    .line 498
    .local v18, localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 508
    :pswitch_0
    const-string v2, "SncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[accId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Deleted Folder - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    sget-object v2, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget-wide v3, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v2, v8, v9, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 517
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    iget-wide v3, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v26

    .line 519
    .local v26, uri:Landroid/net/Uri;
    sget-object v2, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 504
    .end local v26           #uri:Landroid/net/Uri;
    :pswitch_1
    const-string v2, "SncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[accId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Error Deleting Folder - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 525
    .end local v18           #localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    .end local v19           #localNameToDrop:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 526
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 527
    .local v22, remoteNameToAdd:Ljava/lang/String;
    new-instance v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v10}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 528
    .local v10, box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, v22

    iput-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 531
    iput-wide v8, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 532
    sget-object v2, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 535
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/email/adapter/SncAdapter$SncResults$FolderTagInfo;->mTagInfoList:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/utils/SncTag;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncTag;->getTagId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 540
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 542
    const/16 v2, 0x19

    iput v2, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 543
    sget-object v2, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 544
    const-string v2, "SncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[accId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Added folder - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for accId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 550
    .end local v10           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v20           #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22           #remoteNameToAdd:Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/android/email/adapter/ProtocolAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-virtual {v2, v8, v9, v3, v4}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxListStatus(JII)V

    goto/16 :goto_2

    .line 554
    .end local v8           #accountId:J
    .end local v11           #endPointUserId:Ljava/lang/String;
    .end local v15           #localFolderCursor:Landroid/database/Cursor;
    .end local v16           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v17           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .end local v21           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_7
    sget-object v2, Lcom/android/email/adapter/ProtocolAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/4 v3, 0x0

    const/16 v4, 0x64

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxListStatus(JII)V

    goto/16 :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onUpdateProfileFinished(Landroid/os/Bundle;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 142
    const-string v0, "SNCEVENT@CONTR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateProfileFinished - Bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-virtual {v0, p1}, Lcom/android/email/Controller$ServiceCallback;->updateUserProfileStatus(Landroid/os/Bundle;)V

    .line 144
    return-void
.end method

.method public onValidateTokenComplete(Landroid/os/Bundle;)V
    .locals 4
    .parameter "b"

    .prologue
    .line 570
    const-string v1, "SNCEVENT@CONTR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onValidateTokenComplete - bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v1, "status_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 572
    .local v0, resultCode:I
    if-nez v0, :cond_0

    .line 573
    iget-object v1, p0, Lcom/android/email/adapter/SncAdapter$SncResults;->this$0:Lcom/android/email/adapter/SncAdapter;

    invoke-virtual {v1}, Lcom/android/email/adapter/SncAdapter;->updateUnifiedAccount()V

    .line 576
    :cond_0
    return-void
.end method
