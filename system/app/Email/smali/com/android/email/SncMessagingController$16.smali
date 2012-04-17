.class Lcom/android/email/SncMessagingController$16;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/SncMessagingController;->loadAttachment(JJJJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/SncMessagingController;

.field final synthetic val$accountId:J

.field final synthetic val$attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field final synthetic val$attachmentId:J

.field final synthetic val$mId:J

.field final synthetic val$mailboxId:J

.field final synthetic val$messageId:J

.field final synthetic val$prune:Z


# direct methods
.method constructor <init>(Lcom/android/email/SncMessagingController;ZJJJLcom/android/emailcommon/provider/EmailContent$Attachment;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3436
    iput-object p1, p0, Lcom/android/email/SncMessagingController$16;->this$0:Lcom/android/email/SncMessagingController;

    iput-boolean p2, p0, Lcom/android/email/SncMessagingController$16;->val$prune:Z

    iput-wide p3, p0, Lcom/android/email/SncMessagingController$16;->val$accountId:J

    iput-wide p5, p0, Lcom/android/email/SncMessagingController$16;->val$mailboxId:J

    iput-wide p7, p0, Lcom/android/email/SncMessagingController$16;->val$messageId:J

    iput-object p9, p0, Lcom/android/email/SncMessagingController$16;->val$attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iput-wide p10, p0, Lcom/android/email/SncMessagingController$16;->val$mId:J

    iput-wide p12, p0, Lcom/android/email/SncMessagingController$16;->val$attachmentId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 3459
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/SncMessagingController$16;->val$prune:Z

    if-eqz v1, :cond_0

    .line 3460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$16;->this$0:Lcom/android/email/SncMessagingController;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/SncMessagingController$16;->val$accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/SncMessagingController;->pruneCachedAttachments(J)V

    .line 3466
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$16;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/SncMessagingController$16;->val$accountId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 3468
    .local v8, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$16;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/SncMessagingController$16;->val$mailboxId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v12

    .line 3470
    .local v12, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$16;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/SncMessagingController$16;->val$messageId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v14

    .line 3473
    .local v14, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v8, :cond_1

    if-eqz v12, :cond_1

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$16;->val$attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    if-nez v1, :cond_2

    .line 3474
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$16;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/SncMessagingController$16;->val$mId:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/SncMessagingController$16;->val$attachmentId:J

    const/16 v6, 0x30

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/email/Controller$ServiceCallback;->loadAttachmentStatus(JJII)V

    .line 3570
    .end local v8           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v12           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v14           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_0
    return-void

    .line 3479
    .restart local v8       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v12       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v14       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$16;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$16;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/BaseSncStore;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/BaseSncStore$PersistentDataCallbacks;)Lcom/android/email/mail/BaseSncStore;

    move-result-object v17

    .line 3482
    .local v17, remoteStore:Lcom/android/email/mail/BaseSncStore;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$16;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v12}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/email/mail/BaseSncStore;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v16

    .line 3484
    .local v16, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3495
    iget-object v1, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v18

    .line 3496
    .local v18, storeMessage:Lcom/android/emailcommon/mail/Message;
    new-instance v19, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct/range {v19 .. v19}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 3497
    .local v19, storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$16;->val$attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v1, v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeBodyPart;->setSize(I)V

    .line 3498
    const-string v1, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$16;->val$attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3500
    const-string v1, "Content-Type"

    const-string v2, "%s;\n name=\"%s\""

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/SncMessagingController$16;->val$attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/SncMessagingController$16;->val$attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3515
    const-string v1, "SncMessagingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attachment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/SncMessagingController$16;->val$attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    const-string v9, "base64"

    .line 3517
    .local v9, encoding:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$16;->val$attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$16;->val$attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 3518
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$16;->val$attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 3520
    :cond_3
    const-string v1, "Content-Transfer-Encoding"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v9}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3522
    new-instance v15, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {v15}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 3523
    .local v15, multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    const-string v1, "mixed"

    invoke-virtual {v15, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 3524
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 3526
    const-string v1, "Content-Type"

    const-string v2, "multipart/mixed"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3527
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/emailcommon/mail/Message;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 3531
    new-instance v10, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v10}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 3532
    .local v10, fp:Lcom/android/emailcommon/mail/FetchProfile;
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3533
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    const/4 v2, 0x0

    aput-object v18, v1, v2

    new-instance v2, Lcom/android/email/SncMessagingController$16$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/email/SncMessagingController$16$1;-><init>(Lcom/android/email/SncMessagingController$16;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 3548
    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/internet/MimeBodyPart;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v1

    if-nez v1, :cond_4

    .line 3549
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "Attachment not loaded."

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3563
    .end local v8           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v9           #encoding:Ljava/lang/String;
    .end local v10           #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .end local v12           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v14           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v15           #multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    .end local v16           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v17           #remoteStore:Lcom/android/email/mail/BaseSncStore;
    .end local v18           #storeMessage:Lcom/android/emailcommon/mail/Message;
    .end local v19           #storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    :catch_0
    move-exception v13

    .line 3564
    .local v13, me:Lcom/android/emailcommon/mail/MessagingException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$16;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/SncMessagingController$16;->val$mId:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/SncMessagingController$16;->val$attachmentId:J

    invoke-virtual {v13}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/email/Controller$ServiceCallback;->loadAttachmentStatus(JJII)V

    goto/16 :goto_0

    .line 3553
    .end local v13           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v8       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v9       #encoding:Ljava/lang/String;
    .restart local v10       #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .restart local v12       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v14       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v15       #multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    .restart local v16       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v17       #remoteStore:Lcom/android/email/mail/BaseSncStore;
    .restart local v18       #storeMessage:Lcom/android/emailcommon/mail/Message;
    .restart local v19       #storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$16;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SncMessagingController$16;->val$attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/SncMessagingController$16;->val$accountId:J

    move-object/from16 v0, v19

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    .line 3560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$16;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/SncMessagingController$16;->val$mId:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/SncMessagingController$16;->val$attachmentId:J

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/SncMessagingController$16;->val$attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v7, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v7, :cond_5

    const/16 v7, 0xc8

    :goto_1
    invoke-virtual/range {v1 .. v7}, Lcom/android/email/Controller$ServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3565
    .end local v8           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v9           #encoding:Ljava/lang/String;
    .end local v10           #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .end local v12           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v14           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v15           #multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    .end local v16           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v17           #remoteStore:Lcom/android/email/mail/BaseSncStore;
    .end local v18           #storeMessage:Lcom/android/emailcommon/mail/Message;
    .end local v19           #storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    :catch_1
    move-exception v11

    .line 3566
    .local v11, ioe:Ljava/io/IOException;
    const-string v1, "Z7App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while storing attachment."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/SncMessagingController$16;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v1}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/SncMessagingController$16;->val$mId:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/SncMessagingController$16;->val$attachmentId:J

    invoke-static {v11}, Lcom/android/emailcommon/mail/MessagingException;->decodeIOException(Ljava/io/IOException;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/email/Controller$ServiceCallback;->loadAttachmentStatus(JJII)V

    goto/16 :goto_0

    .line 3560
    .end local v11           #ioe:Ljava/io/IOException;
    .restart local v8       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v9       #encoding:Ljava/lang/String;
    .restart local v10       #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .restart local v12       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v14       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v15       #multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    .restart local v16       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v17       #remoteStore:Lcom/android/email/mail/BaseSncStore;
    .restart local v18       #storeMessage:Lcom/android/emailcommon/mail/Message;
    .restart local v19       #storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    :cond_5
    const/16 v7, 0x64

    goto :goto_1
.end method
