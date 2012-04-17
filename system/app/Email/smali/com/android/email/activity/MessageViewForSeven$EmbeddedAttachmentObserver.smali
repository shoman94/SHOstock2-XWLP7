.class Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;
.super Lcom/android/email/Email$Z7ConnectionListener;
.source "MessageViewForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmbeddedAttachmentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewForSeven;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewForSeven;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    .line 1351
    invoke-direct {p0, p2}, Lcom/android/email/Email$Z7ConnectionListener;-><init>(Landroid/os/Handler;)V

    .line 1352
    return-void
.end method


# virtual methods
.method public countIncompleteEmbeddedAttachments()I
    .locals 5

    .prologue
    .line 1409
    const/4 v2, 0x0

    .line 1410
    .local v2, incompleteEmbeddedCount:I
    iget-object v3, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    #getter for: Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewForSeven;->access$1000(Lcom/android/email/activity/MessageViewForSeven;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1411
    iget-object v3, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    #getter for: Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewForSeven;->access$1000(Lcom/android/email/activity/MessageViewForSeven;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;

    .line 1412
    .local v0, attachmentInfo:Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;
    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->getContentId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1414
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1418
    .end local v0           #attachmentInfo:Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return v2
.end method

.method public findAttachmentByPosition(I)Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;
    .locals 3
    .parameter "position"

    .prologue
    .line 1428
    iget-object v2, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    #getter for: Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewForSeven;->access$1000(Lcom/android/email/activity/MessageViewForSeven;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1429
    iget-object v2, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    #getter for: Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewForSeven;->access$1000(Lcom/android/email/activity/MessageViewForSeven;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;

    .line 1430
    .local v0, attachmentInfo:Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;
    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->getPosition()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1435
    .end local v0           #attachmentInfo:Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCallback(Lcom/seven/Z7/common/Z7ServiceCallback;)V
    .locals 13
    .parameter "callback"

    .prologue
    const/4 v12, 0x0

    .line 1442
    const-string v0, "MessageViewForSeven >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Embedded attachment download listener. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getEventId()I

    move-result v0

    invoke-static {v0}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->fromId(I)Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v8

    .line 1446
    .local v8, callbackType:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;
    const-string v0, "messageId"

    invoke-virtual {p1, v0}, Lcom/seven/Z7/common/Z7ServiceCallback;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1447
    .local v10, messageId:I
    const-string v0, "position"

    invoke-virtual {p1, v0}, Lcom/seven/Z7/common/Z7ServiceCallback;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 1448
    .local v11, position:I
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-eqz v0, :cond_0

    int-to-long v0, v10

    iget-object v2, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1449
    if-eqz v8, :cond_0

    .line 1450
    const-string v0, "MessageViewForSeven >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    sget-object v0, Lcom/android/email/activity/MessageViewForSeven$6;->$SwitchMap$com$seven$Z7$shared$Z7ServiceConstants$SystemCallbackType:[I

    invoke-virtual {v8}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1453
    :pswitch_0
    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->findAttachmentByPosition(I)Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;

    move-result-object v4

    .line 1454
    .local v4, z7attachmentInfo:Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;
    if-eqz v4, :cond_0

    .line 1455
    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setStatus(I)V

    .line 1457
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->getAttachmentContentUri(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setContentUri(Ljava/lang/String;)V

    .line 1462
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/digc/seven/Z7MailHandler;->clearDownloadNotification(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1470
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewForSeven;->getMessageId()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    #getter for: Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/email/activity/MessageViewForSeven;->access$1000(Lcom/android/email/activity/MessageViewForSeven;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageViewForSeven;->findAttachmentId(Landroid/content/Context;JLcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;I)J

    move-result-wide v6

    .line 1473
    .local v6, attachmentId:J
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    #calls: Lcom/android/email/activity/MessageViewForSeven;->updateAttachment(JLcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)V
    invoke-static {v0, v6, v7, v4}, Lcom/android/email/activity/MessageViewForSeven;->access$1100(Lcom/android/email/activity/MessageViewForSeven;JLcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1478
    .end local v6           #attachmentId:J
    :goto_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->countIncompleteEmbeddedAttachments()I

    move-result v0

    if-nez v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/email/activity/MessageViewForSeven;->reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1480
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0, v12}, Lcom/android/email/activity/MessageViewForSeven;->loadContentFromServer(Z)V

    goto :goto_0

    .line 1464
    :catch_0
    move-exception v9

    .line 1465
    .local v9, e:Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageList;

    invoke-static {v0, v9}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1474
    .end local v9           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 1475
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "MessageViewForSeven >>"

    const-string v1, "updateAttachment() failed"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1487
    .end local v4           #z7attachmentInfo:Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;
    .end local v9           #e:Ljava/lang/Exception;
    :pswitch_1
    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->findAttachmentByPosition(I)Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;

    move-result-object v4

    .line 1488
    .restart local v4       #z7attachmentInfo:Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;
    if-eqz v4, :cond_0

    .line 1489
    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->setStatus(I)V

    .line 1492
    :try_start_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewForSeven;->getMessageId()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    #getter for: Lcom/android/email/activity/MessageViewForSeven;->mZ7AttachmentInfo:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/email/activity/MessageViewForSeven;->access$1000(Lcom/android/email/activity/MessageViewForSeven;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageViewForSeven;->findAttachmentId(Landroid/content/Context;JLcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;I)J

    move-result-wide v6

    .line 1495
    .restart local v6       #attachmentId:J
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0, v6, v7}, Lcom/android/email/activity/MessageViewForSeven;->onCancelAttachment(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1496
    .end local v6           #attachmentId:J
    :catch_2
    move-exception v9

    .line 1497
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v0, "MessageViewForSeven >>"

    const-string v1, "onCancelAttachment() failed"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1451
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public start()V
    .locals 3

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewForSeven;->mApp:Lcom/android/email/Email;

    if-nez v0, :cond_0

    .line 1377
    :goto_0
    return-void

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewForSeven;->mApp:Lcom/android/email/Email;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewForSeven;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver$1;-><init>(Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Email;->callWhenServiceConnected(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewForSeven;->mApp:Lcom/android/email/Email;

    if-nez v0, :cond_0

    .line 1401
    :goto_0
    return-void

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewForSeven;->mApp:Lcom/android/email/Email;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewForSeven;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver$2;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver$2;-><init>(Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Email;->callWhenServiceConnected(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
