.class Lcom/android/email/SncMessagingController$9;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/SncMessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/SncMessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field final synthetic val$localMapCopy:Ljava/util/HashMap;

.field final synthetic val$newMessages:Ljava/util/ArrayList;

.field final synthetic val$opsMessage:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/email/SncMessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/android/email/SncMessagingController$9;->this$0:Lcom/android/email/SncMessagingController;

    iput-object p2, p0, Lcom/android/email/SncMessagingController$9;->val$localMapCopy:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/android/email/SncMessagingController$9;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object p4, p0, Lcom/android/email/SncMessagingController$9;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p5, p0, Lcom/android/email/SncMessagingController$9;->val$opsMessage:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/android/email/SncMessagingController$9;->val$newMessages:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V
    .locals 0
    .parameter "progress"
    .parameter "status"

    .prologue
    .line 1496
    return-void
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .locals 10
    .parameter "message"

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/email/SncMessagingController$9;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mRemoteSync:Z
    invoke-static {v0}, Lcom/android/email/SncMessagingController;->access$600(Lcom/android/email/SncMessagingController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1423
    const-string v0, "SncMessagingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Sync is not enabled: mRemoteSync -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/SncMessagingController$9;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mRemoteSync:Z
    invoke-static {v3}, Lcom/android/email/SncMessagingController;->access$600(Lcom/android/email/SncMessagingController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    :cond_0
    :goto_0
    return-void

    .line 1431
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/email/SncMessagingController$9;->val$localMapCopy:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/SncMessagingController$LocalMessageInfo;

    .line 1433
    .local v8, localMessageInfo:Lcom/android/email/SncMessagingController$LocalMessageInfo;
    const/4 v1, 0x0

    .line 1434
    .local v1, localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v8, :cond_3

    .line 1435
    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    .end local v1           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1441
    .restart local v1       #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_1
    if-eqz v1, :cond_0

    .line 1445
    :try_start_1
    iget-object v0, p0, Lcom/android/email/SncMessagingController$9;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/SncMessagingController$9;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v2, p0, Lcom/android/email/SncMessagingController$9;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v2, p0, Lcom/android/email/SncMessagingController$9;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v7, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/android/email/LegacyConversions;->updateMessageFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJI)Z

    .line 1459
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1464
    iget-object v0, p0, Lcom/android/email/SncMessagingController$9;->val$opsMessage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    :cond_2
    :goto_2
    const-string v0, "SncMessagingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added to an array for the batch update: - localMessage.isSaved:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1482
    :catch_0
    move-exception v9

    .line 1483
    .local v9, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_2
    const-string v0, "SncMessagingController"

    const-string v2, "syncMailboxGeneric | Error while copying downloaded message."

    invoke-static {v0, v9, v2}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1488
    .end local v1           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v8           #localMessageInfo:Lcom/android/email/SncMessagingController$LocalMessageInfo;
    .end local v9           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v9

    .line 1489
    .local v9, me:Ljava/lang/Exception;
    const-string v0, "SncMessagingController"

    const-string v2, "syncMailboxGeneric | Error while storing downloaded message."

    invoke-static {v0, v9, v2}, Lcom/android/email/EmailLog;->dumpException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 1437
    .end local v9           #me:Ljava/lang/Exception;
    .restart local v1       #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v8       #localMessageInfo:Lcom/android/email/SncMessagingController$LocalMessageInfo;
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/email/SncMessagingController$9;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v2, v8, Lcom/android/email/SncMessagingController$LocalMessageInfo;->mId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    goto :goto_1

    .line 1469
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/android/email/SncMessagingController$9;->val$opsMessage:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)I

    .line 1472
    sget-object v0, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1473
    iget-object v0, p0, Lcom/android/email/SncMessagingController$9;->val$newMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2
.end method
