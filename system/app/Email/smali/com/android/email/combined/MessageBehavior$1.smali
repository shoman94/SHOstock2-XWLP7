.class Lcom/android/email/combined/MessageBehavior$1;
.super Ljava/lang/Object;
.source "MessageBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/combined/MessageBehavior;->addMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/combined/MessageBehavior;

.field final synthetic val$attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field final synthetic val$body:Lcom/android/emailcommon/provider/EmailContent$Body;

.field final synthetic val$message:Lcom/android/emailcommon/provider/EmailContent$Message;


# direct methods
.method constructor <init>(Lcom/android/email/combined/MessageBehavior;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    iput-object p2, p0, Lcom/android/email/combined/MessageBehavior$1;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object p3, p0, Lcom/android/email/combined/MessageBehavior$1;->val$body:Lcom/android/emailcommon/provider/EmailContent$Body;

    iput-object p4, p0, Lcom/android/email/combined/MessageBehavior$1;->val$attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    invoke-virtual {v2}, Lcom/android/email/combined/MessageBehavior;->notifyMessageStarted()V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/combined/MessageBehavior$1;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    long-to-int v3, v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithSevenAccountId(Landroid/content/Context;I)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v9

    .line 219
    .local v9, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v9, :cond_0

    .line 295
    :goto_0
    return-void

    .line 223
    :cond_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v17, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 226
    .local v10, b:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/combined/MessageBehavior$1;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-virtual {v2, v3}, Lcom/android/email/combined/MessageBehavior;->toContentValues(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    const/16 v16, 0x0

    .line 232
    .local v16, needNotification:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/combined/MessageBehavior$1;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-virtual {v4, v5}, Lcom/android/email/combined/MessageBehavior;->toContentValues(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v19

    .line 235
    .local v19, uri:Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 237
    .local v15, mId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/combined/MessageBehavior$1;->val$body:Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-virtual {v4, v5, v15}, Lcom/android/email/combined/MessageBehavior;->toContentValuesBody(Lcom/android/emailcommon/provider/EmailContent$Body;I)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$MessageCB;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/combined/MessageBehavior$1;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-virtual {v4, v5}, Lcom/android/email/combined/MessageBehavior;->toContentValuesSeven(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "messageKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$1;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-nez v2, :cond_1

    .line 247
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 248
    .local v11, cv:Landroid/content/ContentValues;
    const-string v2, "newMessageCount"

    iget v3, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v0, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 253
    const-string v2, "MessageBehavior"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account.mNewMessageCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/16 v16, 0x1

    .line 258
    .end local v11           #cv:Landroid/content/ContentValues;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$1;->val$attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    if-eqz v2, :cond_3

    .line 259
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v17           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local v18, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$1;->val$attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    array-length v14, v2

    .line 261
    .local v14, leng:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v14, :cond_2

    .line 262
    const-string v2, "#####"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/combined/MessageBehavior$1;->val$attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    aget-object v3, v3, v13

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/combined/MessageBehavior$1;->val$attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    aget-object v3, v3, v13

    invoke-virtual {v2, v3, v15, v14}, Lcom/android/email/combined/MessageBehavior;->toContentAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;II)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 267
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.email.provider"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v18

    .line 272
    .end local v13           #i:I
    .end local v14           #leng:I
    .end local v18           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v17       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v4, 0x19a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 284
    .end local v15           #mId:I
    .end local v19           #uri:Landroid/net/Uri;
    :goto_2
    if-eqz v16, :cond_4

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    iget-object v2, v2, Lcom/android/email/combined/MessageBehavior;->mNotificationTimestamp:Lcom/android/email/combined/MessageBehavior$NotificationTimestamp;

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/combined/MessageBehavior$NotificationTimestamp;->elapsedTime(J)J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 286
    const-string v2, "MessageBehavior"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call MailService.actionNotifyNewMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/email/service/MailService;->actionNotifyNewMessages(Landroid/content/Context;J)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    iget-object v2, v2, Lcom/android/email/combined/MessageBehavior;->mNotificationTimestamp:Lcom/android/email/combined/MessageBehavior$NotificationTimestamp;

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/combined/MessageBehavior$NotificationTimestamp;->set(J)V

    .line 294
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/MessageBehavior$1;->this$0:Lcom/android/email/combined/MessageBehavior;

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/combined/MessageBehavior;->notifyMessageFinished(J)V

    goto/16 :goto_0

    .line 277
    :catch_0
    move-exception v12

    .line 278
    .local v12, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string v2, "#####"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "behavior=>exception=>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 279
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_4
    throw v2

    .end local v17           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v15       #mId:I
    .restart local v18       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v19       #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v2

    move-object/from16 v17, v18

    .end local v18           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v17       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    goto :goto_4

    .line 277
    .end local v17           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v18       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_1
    move-exception v12

    move-object/from16 v17, v18

    .end local v18           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v17       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    goto :goto_3
.end method
