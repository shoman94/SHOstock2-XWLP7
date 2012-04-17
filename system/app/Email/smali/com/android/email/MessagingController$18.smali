.class Lcom/android/email/MessagingController$18;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$accountId:J

.field final synthetic val$attachmentId:J

.field final synthetic val$background:Z

.field final synthetic val$mailboxId:J

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;JJJZJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4715
    iput-object p1, p0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    iput-wide p4, p0, Lcom/android/email/MessagingController$18;->val$accountId:J

    iput-wide p6, p0, Lcom/android/email/MessagingController$18;->val$messageId:J

    iput-boolean p8, p0, Lcom/android/email/MessagingController$18;->val$background:Z

    iput-wide p9, p0, Lcom/android/email/MessagingController$18;->val$mailboxId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 4720
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v12

    .line 4722
    .local v12, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v12, :cond_1

    .line 4723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "The attachment is null"

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/email/MessagingController$18;->val$background:Z

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    .line 4846
    .end local v12           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_0
    :goto_0
    return-void

    .line 4727
    .restart local v12       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v12}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    iget-object v9, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    invoke-virtual/range {v2 .. v9}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFinished(JJJZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4840
    .end local v12           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catch_0
    move-exception v13

    .line 4843
    .local v13, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/email/MessagingController$18;->val$background:Z

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    goto :goto_0

    .line 4728
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v12       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 4735
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v11

    .line 4737
    .local v11, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$18;->val$mailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v15

    .line 4739
    .local v15, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v16

    .line 4742
    .local v16, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v11, :cond_4

    if-eqz v15, :cond_4

    if-nez v16, :cond_5

    .line 4743
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "Account, mailbox, message or attachment are null"

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/email/MessagingController$18;->val$background:Z

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    goto/16 :goto_0

    .line 4750
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v19

    .line 4752
    .local v19, remoteStore:Lcom/android/email/mail/Store;
    iget-object v2, v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    .line 4755
    .local v18, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    :try_start_2
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 4762
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/Folder;->createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v20

    .line 4763
    .local v20, storeMessage:Lcom/android/emailcommon/mail/Message;
    new-instance v21, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct/range {v21 .. v21}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 4764
    .local v21, storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    iget-wide v2, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v2, v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;->setSize(I)V

    .line 4765
    const-string v2, "X-Android-Attachment-StoreData"

    iget-object v3, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4767
    const-string v2, "Content-Type"

    const-string v3, "%s;\n name=\"%s\""

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4781
    const-string v2, "Content-Transfer-Encoding"

    const-string v3, "base64"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4783
    new-instance v17, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct/range {v17 .. v17}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 4784
    .local v17, multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    const-string v2, "mixed"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 4785
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 4787
    const-string v2, "Content-Type"

    const-string v3, "multipart/mixed"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4788
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 4791
    new-instance v14, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v14}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 4792
    .local v14, fp:Lcom/android/emailcommon/mail/FetchProfile;
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 4793
    const/4 v2, 0x1

    new-array v8, v2, [Lcom/android/emailcommon/mail/Message;

    const/4 v2, 0x0

    aput-object v20, v8, v2

    new-instance v2, Lcom/android/email/Controller$MessageRetrievalListenerBridge;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$1100(Lcom/android/email/MessagingController;)Lcom/android/email/Controller;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    invoke-direct/range {v2 .. v7}, Lcom/android/email/Controller$MessageRetrievalListenerBridge;-><init>(Lcom/android/email/Controller;JJ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v14, v2}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 4802
    invoke-virtual/range {v21 .. v21}, Lcom/android/emailcommon/internet/MimeBodyPart;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v2

    if-nez v2, :cond_7

    .line 4803
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Attachment not loaded."

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4836
    .end local v14           #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .end local v17           #multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    .end local v20           #storeMessage:Lcom/android/emailcommon/mail/Message;
    .end local v21           #storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    :catchall_0
    move-exception v2

    if-eqz v18, :cond_6

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4837
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_6
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 4807
    .restart local v14       #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .restart local v17       #multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    .restart local v20       #storeMessage:Lcom/android/emailcommon/mail/Message;
    .restart local v21       #storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #calls: Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    invoke-static {v2, v11}, Lcom/android/email/MessagingController;->access$1000(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 4808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "MessagingException.SECURITY_POLICIES_REQUIRED"

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/email/MessagingController$18;->val$background:Z

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4836
    if-eqz v18, :cond_0

    :try_start_5
    invoke-virtual/range {v18 .. v18}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4837
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 4819
    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    move-object/from16 v0, v21

    invoke-static {v2, v0, v12, v3, v4}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    .line 4823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #calls: Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    invoke-static {v2, v11}, Lcom/android/email/MessagingController;->access$1000(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 4824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "MessagingException.SECURITY_POLICIES_REQUIRED"

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/email/MessagingController$18;->val$background:Z

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4836
    if-eqz v18, :cond_0

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4837
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 4833
    :cond_9
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$18;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$18;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$18;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$18;->val$attachmentId:J

    iget-object v9, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    :goto_2
    invoke-virtual/range {v2 .. v9}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFinished(JJJZ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4836
    if-eqz v18, :cond_0

    :try_start_9
    invoke-virtual/range {v18 .. v18}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4837
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 4833
    :cond_a
    const/4 v9, 0x0

    goto :goto_2
.end method
