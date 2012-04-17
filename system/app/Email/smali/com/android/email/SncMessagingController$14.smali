.class Lcom/android/email/SncMessagingController$14;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/SncMessagingController;->loadMore(J)V
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
    .line 3181
    iput-object p1, p0, Lcom/android/email/SncMessagingController$14;->this$0:Lcom/android/email/SncMessagingController;

    iput-wide p2, p0, Lcom/android/email/SncMessagingController$14;->val$messageId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 3187
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$14;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/SncMessagingController$14;->val$messageId:J

    invoke-static {v2, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    .line 3189
    .local v11, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v11, :cond_0

    .line 3190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$14;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/SncMessagingController$14;->val$messageId:J

    const/16 v17, 0x30

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v7, v8, v0, v1}, Lcom/android/email/Controller$ServiceCallback;->loadMoreStatus(JII)V

    .line 3297
    .end local v11           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_0
    return-void

    .line 3194
    .restart local v11       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_0
    iget v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1

    .line 3195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$14;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/SncMessagingController$14;->val$messageId:J

    const/16 v17, 0x0

    const/16 v18, 0x64

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v7, v8, v0, v1}, Lcom/android/email/Controller$ServiceCallback;->loadMoreStatus(JII)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 3276
    .end local v11           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_0
    move-exception v10

    .line 3280
    .local v10, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$14;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/SncMessagingController$14;->val$messageId:J

    invoke-virtual {v10}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v7, v8, v0, v1}, Lcom/android/email/Controller$ServiceCallback;->loadMoreStatus(JII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3281
    :catch_1
    move-exception v9

    .line 3283
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3202
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v10           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v11       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$14;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v2

    iget-wide v7, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    .line 3204
    .local v3, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$14;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v2

    iget-wide v7, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v4

    .line 3206
    .local v4, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    .line 3207
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$14;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/SncMessagingController$14;->val$messageId:J

    const/16 v17, 0x24

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v7, v8, v0, v1}, Lcom/android/email/Controller$ServiceCallback;->loadMoreStatus(JII)V
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 3285
    .end local v3           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v4           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v11           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_2
    move-exception v14

    .line 3287
    .local v14, rte:Ljava/lang/RuntimeException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$14;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/SncMessagingController$14;->val$messageId:J

    const/16 v17, 0x22

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v7, v8, v0, v1}, Lcom/android/email/Controller$ServiceCallback;->loadMoreStatus(JII)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 3289
    :catch_3
    move-exception v9

    .line 3291
    .restart local v9       #e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 3212
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v14           #rte:Ljava/lang/RuntimeException;
    .restart local v3       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v4       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v11       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$14;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/SncMessagingController$14;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v13

    .line 3215
    .local v13, remoteStore:Lcom/android/email/mail/BaseSncStore;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$14;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v6

    .line 3217
    .local v6, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3243
    iget-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v12

    .line 3244
    .local v12, remoteMessage:Lcom/android/emailcommon/mail/Message;
    if-nez v12, :cond_4

    .line 3245
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3246
    iget-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v12

    .line 3261
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3262
    .local v5, largeMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/SncMessagingController$14;->val$messageId:J

    invoke-virtual {v12, v7, v8}, Lcom/android/emailcommon/mail/Message;->setMessageId_original(J)V

    .line 3263
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$14;->this$0:Lcom/android/email/SncMessagingController;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/email/SncMessagingController;->downloadLargeMessages(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;Lcom/android/emailcommon/mail/Folder;ZZ)V

    .line 3267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$14;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/SncMessagingController$14;->val$messageId:J

    const/16 v17, 0x0

    const/16 v18, 0x64

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v7, v8, v0, v1}, Lcom/android/email/Controller$ServiceCallback;->loadMoreStatus(JII)V

    .line 3272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$14;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v2

    iget-wide v7, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v17, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SncMessagingController$14;->this$0:Lcom/android/email/SncMessagingController;

    move-object/from16 v18, v0

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f080010

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v2, v7, v8, v0, v1}, Lcom/android/emailcommon/utility/Utility;->findOrCreateMailboxOfType(Landroid/content/Context;JILjava/lang/String;)J

    move-result-wide v15

    .line 3275
    .local v15, sentFolderId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$14;->this$0:Lcom/android/email/SncMessagingController;

    move-wide v0, v15

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/email/SncMessagingController;->sendPendingMessages(Lcom/android/emailcommon/provider/EmailContent$Account;J)V
    :try_end_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 3293
    .end local v3           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v4           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v5           #largeMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    .end local v6           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v11           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v12           #remoteMessage:Lcom/android/emailcommon/mail/Message;
    .end local v13           #remoteStore:Lcom/android/email/mail/BaseSncStore;
    .end local v15           #sentFolderId:J
    :catch_4
    move-exception v9

    .line 3295
    .restart local v9       #e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method
