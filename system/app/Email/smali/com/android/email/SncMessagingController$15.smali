.class Lcom/android/email/SncMessagingController$15;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/SncMessagingController;->loadMessageForView(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/SncMessagingController;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/SncMessagingController;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3309
    iput-object p1, p0, Lcom/android/email/SncMessagingController$15;->this$0:Lcom/android/email/SncMessagingController;

    iput-wide p2, p0, Lcom/android/email/SncMessagingController$15;->val$messageId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 3315
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$15;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/SncMessagingController$15;->val$messageId:J

    invoke-static {v1, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v14

    .line 3317
    .local v14, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v14, :cond_0

    .line 3318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$15;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/SncMessagingController$15;->val$messageId:J

    const/16 v8, 0x30

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/android/email/Controller$ServiceCallback;->loadMessageForViewStatus(JII)V

    .line 3407
    .end local v14           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_0
    return-void

    .line 3322
    .restart local v14       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_0
    iget v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    .line 3323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$15;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/SncMessagingController$15;->val$messageId:J

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/android/email/Controller$ServiceCallback;->loadMessageForViewStatus(JII)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3399
    .end local v14           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_0
    move-exception v13

    .line 3402
    .local v13, me:Lcom/android/emailcommon/mail/MessagingException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$15;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/SncMessagingController$15;->val$messageId:J

    invoke-virtual {v13}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/android/email/Controller$ServiceCallback;->loadMessageForViewStatus(JII)V

    goto :goto_0

    .line 3331
    .end local v13           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v14       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$15;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v1

    iget-wide v6, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v1, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 3333
    .local v2, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$15;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v1

    iget-wide v6, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v1, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 3335
    .local v3, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    .line 3336
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$15;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/SncMessagingController$15;->val$messageId:J

    const/16 v8, 0x24

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/android/email/Controller$ServiceCallback;->loadMessageForViewStatus(JII)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3403
    .end local v2           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v3           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v14           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_1
    move-exception v17

    .line 3404
    .local v17, rte:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$15;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/SncMessagingController$15;->val$messageId:J

    const/16 v8, 0x22

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/android/email/Controller$ServiceCallback;->loadMessageForViewStatus(JII)V

    goto :goto_0

    .line 3341
    .end local v17           #rte:Ljava/lang/RuntimeException;
    .restart local v2       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v3       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v14       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$15;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/SncMessagingController$15;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v16

    .line 3344
    .local v16, remoteStore:Lcom/android/email/mail/BaseSncStore;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$15;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v5

    .line 3346
    .local v5, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3372
    iget-object v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v15

    .line 3373
    .local v15, remoteMessage:Lcom/android/emailcommon/mail/Message;
    if-nez v15, :cond_4

    .line 3374
    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3375
    iget-object v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v15

    .line 3381
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3382
    .local v4, largeMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/SncMessagingController$15;->val$messageId:J

    invoke-virtual {v15, v6, v7}, Lcom/android/emailcommon/mail/Message;->setMessageId_original(J)V

    .line 3383
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$15;->this$0:Lcom/android/email/SncMessagingController;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/email/SncMessagingController;->downloadLargeMessages(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;Lcom/android/emailcommon/mail/Folder;ZZ)V

    .line 3392
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/SncMessagingController$15;->this$0:Lcom/android/email/SncMessagingController;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v15

    move-object v8, v2

    move-object v9, v3

    #calls: Lcom/android/email/SncMessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;IZZ)V
    invoke-static/range {v6 .. v12}, Lcom/android/email/SncMessagingController;->access$700(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;IZZ)V

    .line 3397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$15;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/SncMessagingController$15;->val$messageId:J

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/android/email/Controller$ServiceCallback;->loadMessageForViewStatus(JII)V
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
