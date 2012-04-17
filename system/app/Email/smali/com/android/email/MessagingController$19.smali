.class Lcom/android/email/MessagingController$19;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->loadAttachment(JJJJLcom/android/email/MessagingListener;ZZZ)V
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

.field final synthetic val$prune:Z


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;ZJJJJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4874
    iput-object p1, p0, Lcom/android/email/MessagingController$19;->this$0:Lcom/android/email/MessagingController;

    iput-boolean p2, p0, Lcom/android/email/MessagingController$19;->val$prune:Z

    iput-wide p3, p0, Lcom/android/email/MessagingController$19;->val$accountId:J

    iput-wide p5, p0, Lcom/android/email/MessagingController$19;->val$mailboxId:J

    iput-wide p7, p0, Lcom/android/email/MessagingController$19;->val$messageId:J

    iput-wide p9, p0, Lcom/android/email/MessagingController$19;->val$attachmentId:J

    iput-boolean p11, p0, Lcom/android/email/MessagingController$19;->val$background:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 4883
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/email/MessagingController$19;->val$prune:Z

    if-eqz v2, :cond_0

    .line 4884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$19;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$19;->val$accountId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/MessagingController;->pruneCachedAttachments(J)V

    .line 4890
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$19;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$19;->val$accountId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v11

    .line 4892
    .local v11, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$19;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$19;->val$mailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v15

    .line 4894
    .local v15, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$19;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$19;->val$messageId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v16

    .line 4896
    .local v16, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$19;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$19;->val$attachmentId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v12

    .line 4898
    .local v12, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v11, :cond_1

    if-eqz v15, :cond_1

    if-eqz v16, :cond_1

    if-nez v12, :cond_2

    .line 4899
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$19;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$19;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$19;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$19;->val$attachmentId:J

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "Account, mailbox, message or attachment are null"

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/email/MessagingController$19;->val$background:Z

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    .line 5023
    .end local v11           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v12           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v15           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v16           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_0
    return-void

    .line 4906
    .restart local v11       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v12       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v15       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v16       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$19;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$19;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v19

    .line 4908
    .local v19, remoteStore:Lcom/android/email/mail/Store;
    iget-object v2, v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v18

    .line 4914
    .local v18, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 4925
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/Folder;->createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v20

    .line 4926
    .local v20, storeMessage:Lcom/android/emailcommon/mail/Message;
    new-instance v21, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct/range {v21 .. v21}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 4927
    .local v21, storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    iget-wide v2, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v2, v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;->setSize(I)V

    .line 4928
    const-string v2, "X-Android-Attachment-StoreData"

    iget-object v3, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4930
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

    .line 4942
    const-string v2, "Content-Transfer-Encoding"

    const-string v3, "base64"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4944
    new-instance v17, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct/range {v17 .. v17}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 4945
    .local v17, multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    const-string v2, "mixed"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 4946
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 4948
    const-string v2, "Content-Type"

    const-string v3, "multipart/mixed"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4949
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 4953
    new-instance v14, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v14}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 4954
    .local v14, fp:Lcom/android/emailcommon/mail/FetchProfile;
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 4957
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/emailcommon/mail/Message;

    const/4 v3, 0x0

    aput-object v20, v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v14, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 4984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$19;->this$0:Lcom/android/email/MessagingController;

    #calls: Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    invoke-static {v2, v11}, Lcom/android/email/MessagingController;->access$1000(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$19;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$19;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$19;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$19;->val$attachmentId:J

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "MessagingException.SECURITY_POLICIES_REQUIRED"

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/email/MessagingController$19;->val$background:Z

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5017
    .end local v11           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v12           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v14           #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .end local v15           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v16           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v17           #multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    .end local v18           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v19           #remoteStore:Lcom/android/email/mail/Store;
    .end local v20           #storeMessage:Lcom/android/emailcommon/mail/Message;
    .end local v21           #storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    :catch_0
    move-exception v13

    .line 5020
    .local v13, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$19;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$19;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$19;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$19;->val$attachmentId:J

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/email/MessagingController$19;->val$background:Z

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    goto/16 :goto_0

    .line 4995
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v11       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v12       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v14       #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .restart local v15       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v16       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v17       #multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    .restart local v18       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v19       #remoteStore:Lcom/android/email/mail/Store;
    .restart local v20       #storeMessage:Lcom/android/emailcommon/mail/Message;
    .restart local v21       #storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$19;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$19;->val$accountId:J

    move-object/from16 v0, v21

    invoke-static {v2, v0, v12, v3, v4}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    .line 4999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$19;->this$0:Lcom/android/email/MessagingController;

    #calls: Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    invoke-static {v2, v11}, Lcom/android/email/MessagingController;->access$1000(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$19;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$19;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$19;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$19;->val$attachmentId:J

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v10, "MessagingException.SECURITY_POLICIES_REQUIRED"

    invoke-direct {v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/email/MessagingController$19;->val$background:Z

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    goto/16 :goto_0

    .line 5014
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$19;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$19;->val$accountId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$19;->val$messageId:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$19;->val$attachmentId:J

    iget-object v9, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    :goto_1
    invoke-virtual/range {v2 .. v9}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFinished(JJJZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_5
    const/4 v9, 0x0

    goto :goto_1
.end method
