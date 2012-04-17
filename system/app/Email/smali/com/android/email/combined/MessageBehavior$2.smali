.class Lcom/android/email/combined/MessageBehavior$2;
.super Ljava/lang/Object;
.source "MessageBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/combined/MessageBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/combined/MessageBehavior;

.field final synthetic val$remoteAccountId:I

.field final synthetic val$remoteFolderId:I

.field final synthetic val$remoteFolderName:Ljava/lang/String;


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v2, 0x1

    .line 486
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$2;->this$0:Lcom/android/email/combined/MessageBehavior;

    invoke-virtual {v0}, Lcom/android/email/combined/MessageBehavior;->notifyFolderStarted()V

    .line 488
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$2;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/email/combined/MessageBehavior$2;->val$remoteAccountId:I

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithSevenAccountId(Landroid/content/Context;I)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 490
    .local v6, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/email/combined/MessageBehavior$2;->val$remoteFolderId:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$2;->val$remoteFolderName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 491
    :cond_0
    const-string v0, "MessageBehavior"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFolder >> remoteFolderName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/combined/MessageBehavior$2;->val$remoteFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_1
    :goto_0
    return-void

    .line 494
    :cond_2
    const/4 v10, 0x0

    .line 495
    .local v10, localFolderCursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 498
    .local v8, info:Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;
    :try_start_0
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$2;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->access$100()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "accountKey=? AND sevenMailboxKey=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v13, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x1

    iget v13, p0, Lcom/android/email/combined/MessageBehavior$2;->val$remoteFolderId:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 506
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 507
    new-instance v9, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;

    invoke-direct {v9, v10}, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #info:Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;
    .local v9, info:Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;
    move-object v8, v9

    .line 509
    .end local v9           #info:Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;
    .restart local v8       #info:Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;
    :cond_3
    if-nez v8, :cond_4

    .line 523
    if-eqz v10, :cond_1

    .line 524
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 512
    :cond_4
    :try_start_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 513
    .local v11, updateValues:Landroid/content/ContentValues;
    const-string v0, "displayName"

    iget-object v1, p0, Lcom/android/email/combined/MessageBehavior$2;->val$remoteFolderName:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, v8, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 516
    .local v12, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$2;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v12, v11, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 517
    const-string v0, "MessageBehavior"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFolder >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$2;->this$0:Lcom/android/email/combined/MessageBehavior;

    iget-wide v1, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/combined/MessageBehavior;->notifyFolderFinished(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 523
    if-eqz v10, :cond_1

    .line 524
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 519
    .end local v11           #updateValues:Landroid/content/ContentValues;
    .end local v12           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 520
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MessageBehavior"

    const-string v1, "updateFolder: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$2;->this$0:Lcom/android/email/combined/MessageBehavior;

    new-instance v1, Lcom/android/email/combined/EmailException;

    invoke-direct {v1, v7}, Lcom/android/email/combined/EmailException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/android/email/combined/MessageBehavior;->notifyFolderFailed(Lcom/android/email/combined/EmailException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 523
    if-eqz v10, :cond_1

    .line 524
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 523
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_5

    .line 524
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method
