.class Lcom/android/email/MessagingController$15;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->processPendingAccountMoveActions(Ljava/util/ArrayList;JJJJJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$messageId:Ljava/util/ArrayList;

.field final synthetic val$orig_boxkey:J

.field final synthetic val$source_accountId:J

.field final synthetic val$source_server_type:I

.field final synthetic val$source_trashMailboxId:J

.field final synthetic val$target_accountId:J

.field final synthetic val$target_boxkey:J

.field final synthetic val$target_server_type:I


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Ljava/util/ArrayList;JJJJJII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3174
    iput-object p1, p0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$15;->val$messageId:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    iput-wide p5, p0, Lcom/android/email/MessagingController$15;->val$orig_boxkey:J

    iput-wide p7, p0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    iput-wide p9, p0, Lcom/android/email/MessagingController$15;->val$target_boxkey:J

    iput-wide p11, p0, Lcom/android/email/MessagingController$15;->val$source_trashMailboxId:J

    iput p13, p0, Lcom/android/email/MessagingController$15;->val$target_server_type:I

    iput p14, p0, Lcom/android/email/MessagingController$15;->val$source_server_type:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 34

    .prologue
    .line 3176
    const/4 v9, 0x1

    .line 3179
    .local v9, bret:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->val$messageId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    move/from16 v28, v9

    .end local v9           #bret:Z
    .end local v30           #i$:Ljava/util/Iterator;
    .local v28, bret:Z
    :goto_0
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    .line 3181
    .local v29, cur_messageId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v33

    .line 3183
    .local v33, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v33, :cond_0

    .line 3184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$15;->val$orig_boxkey:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/MessagingController$15;->val$target_boxkey:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/email/MessagingController$15;->val$source_trashMailboxId:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$target_server_type:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$source_server_type:I

    move/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/android/email/GroupMessagingListener;->movemessageToOtherAccountCallback(ZJJJJJJII)V

    goto :goto_0

    .line 3188
    :cond_0
    move-object/from16 v0, v33

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 3189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    #calls: Lcom/android/email/MessagingController;->loadMessageForViewSyncronous(J)Z
    invoke-static {v2, v3, v4}, Lcom/android/email/MessagingController;->access$800(Lcom/android/email/MessagingController;J)Z

    move-result v28

    .line 3190
    if-nez v28, :cond_1

    .line 3191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$15;->val$orig_boxkey:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/MessagingController$15;->val$target_boxkey:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/email/MessagingController$15;->val$source_trashMailboxId:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$target_server_type:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$source_server_type:I

    move/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/android/email/GroupMessagingListener;->movemessageToOtherAccountCallback(ZJJJJJJII)V

    goto/16 :goto_0

    .line 3199
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->IsAllAttachmentFilesExist(Landroid/content/Context;JJ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3201
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    .line 3203
    .local v27, attachmentId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->getAllAttachmentId(Landroid/content/Context;J)Ljava/util/HashSet;

    move-result-object v27

    .line 3206
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3207
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    .line 3208
    .local v26, attachId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/MessagingController$15;->val$orig_boxkey:J

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/MessagingController;->loadAttachmentSyncronous(JJJJ)Z

    goto :goto_1

    .line 3215
    .end local v26           #attachId:Ljava/lang/Long;
    .end local v27           #attachmentId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v31           #i$:Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->IsAllAttachmentFilesExist(Landroid/content/Context;JJ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$15;->val$orig_boxkey:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/MessagingController$15;->val$target_boxkey:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/email/MessagingController$15;->val$source_trashMailboxId:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$target_server_type:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$source_server_type:I

    move/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/android/email/GroupMessagingListener;->movemessageToOtherAccountCallback(ZJJJJJJII)V

    goto/16 :goto_0

    .line 3225
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    .line 3227
    .local v7, target_account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v7, :cond_4

    .line 3228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$15;->val$orig_boxkey:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/MessagingController$15;->val$target_boxkey:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/email/MessagingController$15;->val$source_trashMailboxId:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$target_server_type:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$source_server_type:I

    move/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/android/email/GroupMessagingListener;->movemessageToOtherAccountCallback(ZJJJJJJII)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3240
    .end local v7           #target_account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :catch_0
    move-exception v32

    move/from16 v9, v28

    .line 3244
    .end local v28           #bret:Z
    .restart local v9       #bret:Z
    .local v32, me:Lcom/android/emailcommon/mail/MessagingException;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$orig_boxkey:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$target_boxkey:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$source_trashMailboxId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$target_server_type:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$source_server_type:I

    move/from16 v25, v0

    invoke-virtual/range {v10 .. v25}, Lcom/android/email/GroupMessagingListener;->movemessageToOtherAccountCallback(ZJJJJJJII)V

    move/from16 v28, v9

    .line 3247
    .end local v9           #bret:Z
    .restart local v28       #bret:Z
    goto/16 :goto_0

    .line 3234
    .end local v32           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v7       #target_account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$15;->val$target_boxkey:J

    #calls: Lcom/android/email/MessagingController;->processPendingAccountMoveActionsSynchronous(JJLcom/android/emailcommon/provider/EmailContent$Account;J)Z
    invoke-static/range {v2 .. v9}, Lcom/android/email/MessagingController;->access$900(Lcom/android/email/MessagingController;JJLcom/android/emailcommon/provider/EmailContent$Account;J)Z
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .line 3237
    .end local v28           #bret:Z
    .restart local v9       #bret:Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$15;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v8

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/MessagingController$15;->val$source_accountId:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/email/MessagingController$15;->val$orig_boxkey:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$target_accountId:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$target_boxkey:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$15;->val$source_trashMailboxId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$target_server_type:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/MessagingController$15;->val$source_server_type:I

    move/from16 v23, v0

    invoke-virtual/range {v8 .. v23}, Lcom/android/email/GroupMessagingListener;->movemessageToOtherAccountCallback(ZJJJJJJII)V
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v28, v9

    .line 3249
    .end local v9           #bret:Z
    .restart local v28       #bret:Z
    goto/16 :goto_0

    .line 3250
    .end local v7           #target_account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v29           #cur_messageId:Ljava/lang/Long;
    .end local v33           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_5
    return-void

    .line 3240
    .end local v28           #bret:Z
    .restart local v7       #target_account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v9       #bret:Z
    .restart local v29       #cur_messageId:Ljava/lang/Long;
    .restart local v33       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_1
    move-exception v32

    goto/16 :goto_2
.end method
