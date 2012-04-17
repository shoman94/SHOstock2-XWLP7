.class Lcom/android/email/activity/UNCSearchResultsList$1;
.super Landroid/content/BroadcastReceiver;
.source "UNCSearchResultsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UNCSearchResultsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UNCSearchResultsList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/UNCSearchResultsList;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 220
    if-eqz p2, :cond_0

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 222
    .local v13, action:Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 223
    const-string v1, "android.intent.action.EMAILDOCSEARCH_COMPLETED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "UNCSearchResultsList"

    const-string v2, "Broadcast received in UNCSearchResultsList"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v1, "SearchResult"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 228
    .local v21, result:I
    const-string v1, "Total"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 229
    .local v23, total:I
    const-string v1, "StartRange"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 230
    .local v22, startRange:I
    const-string v1, "EndRange"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 231
    .local v17, endRange:I
    const/16 v18, -0x1

    .line 232
    .local v18, isFolder:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const-string v2, "MailboxId"

    const-wide/16 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    #setter for: Lcom/android/email/activity/UNCSearchResultsList;->mMailboxId:J
    invoke-static {v1, v2, v3}, Lcom/android/email/activity/UNCSearchResultsList;->access$102(Lcom/android/email/activity/UNCSearchResultsList;J)J

    .line 233
    const-string v1, "LinkId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 234
    .local v19, linkId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mHistory:Ljava/util/Stack;
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$200(Lcom/android/email/activity/UNCSearchResultsList;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    .end local v13           #action:Ljava/lang/String;
    .end local v17           #endRange:I
    .end local v18           #isFolder:I
    .end local v19           #linkId:Ljava/lang/String;
    .end local v21           #result:I
    .end local v22           #startRange:I
    .end local v23           #total:I
    :cond_0
    :goto_0
    return-void

    .line 238
    .restart local v13       #action:Ljava/lang/String;
    .restart local v17       #endRange:I
    .restart local v18       #isFolder:I
    .restart local v19       #linkId:Ljava/lang/String;
    .restart local v21       #result:I
    .restart local v22       #startRange:I
    .restart local v23       #total:I
    :cond_1
    const-string v1, "UNCSearchResultsList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MailboxId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mMailboxId:J
    invoke-static {v3}, Lcom/android/email/activity/UNCSearchResultsList;->access$100(Lcom/android/email/activity/UNCSearchResultsList;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, 0x1

    move/from16 v0, v21

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mMailboxId:J
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$100(Lcom/android/email/activity/UNCSearchResultsList;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mMailboxId:J
    invoke-static {v2}, Lcom/android/email/activity/UNCSearchResultsList;->access$100(Lcom/android/email/activity/UNCSearchResultsList;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v20

    .line 243
    .local v20, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    move-object/from16 v0, v19

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Document;->restoreDocumentWithLinkId(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Document;

    move-result-object v16

    .line 246
    .local v16, document:Lcom/android/emailcommon/provider/EmailContent$Document;
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mFlagFolder:Z

    if-eqz v1, :cond_6

    .line 247
    if-eqz v20, :cond_2

    move-object/from16 v0, v20

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v2, 0x62

    if-ne v1, v2, :cond_2

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    new-instance v3, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    move-object/from16 v0, v20

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mHistory:Ljava/util/Stack;
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$200(Lcom/android/email/activity/UNCSearchResultsList;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;-><init>(Lcom/android/email/activity/UNCSearchResultsList;JLjava/lang/String;)V

    #setter for: Lcom/android/email/activity/UNCSearchResultsList;->mLoadSearchResultsTask:Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;
    invoke-static {v2, v3}, Lcom/android/email/activity/UNCSearchResultsList;->access$302(Lcom/android/email/activity/UNCSearchResultsList;Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;)Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mLoadSearchResultsTask:Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$300(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/UNCSearchResultsList$LoadSearchResultsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 270
    .end local v16           #document:Lcom/android/emailcommon/provider/EmailContent$Document;
    .end local v20           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_2
    :goto_1
    const/4 v1, 0x1

    move/from16 v0, v21

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mMailboxId:J
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$100(Lcom/android/email/activity/UNCSearchResultsList;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 281
    :cond_3
    packed-switch v21, :pswitch_data_0

    .line 319
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$400(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/ExtendedProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$400(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/ExtendedProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/ExtendedProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/UNCSearchResultsList;->dismissDialog(I)V

    .line 321
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mHistory:Ljava/util/Stack;
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$200(Lcom/android/email/activity/UNCSearchResultsList;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mHistory:Ljava/util/Stack;
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$200(Lcom/android/email/activity/UNCSearchResultsList;)Ljava/util/Stack;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mHistory:Ljava/util/Stack;
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$200(Lcom/android/email/activity/UNCSearchResultsList;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    invoke-virtual {v1}, Lcom/android/email/activity/UNCSearchResultsList;->finish()V

    goto/16 :goto_0

    .line 255
    .restart local v16       #document:Lcom/android/emailcommon/provider/EmailContent$Document;
    .restart local v20       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$400(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/ExtendedProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mFetchingListDialog:Lcom/android/email/ExtendedProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$400(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/ExtendedProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/ExtendedProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/UNCSearchResultsList;->dismissDialog(I)V

    .line 257
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    move-object/from16 v0, v16

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->getAttmtInfo(Lcom/android/emailcommon/provider/EmailContent$Document;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static {v1, v0}, Lcom/android/email/activity/UNCSearchResultsList;->access$500(Lcom/android/email/activity/UNCSearchResultsList;Lcom/android/emailcommon/provider/EmailContent$Document;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v15

    .line 258
    .local v15, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v14, args:Landroid/os/Bundle;
    invoke-static {}, Lcom/android/email/activity/UNCSearchResultsList;->access$600()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v14}, Lcom/android/email/activity/UNCSearchResultsList;->showDialog(ILandroid/os/Bundle;)Z

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const/4 v2, 0x0

    #setter for: Lcom/android/email/activity/UNCSearchResultsList;->mode:I
    invoke-static {v1, v2}, Lcom/android/email/activity/UNCSearchResultsList;->access$702(Lcom/android/email/activity/UNCSearchResultsList;I)I

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const/4 v2, 0x1

    #setter for: Lcom/android/email/activity/UNCSearchResultsList;->directFileOpen:Z
    invoke-static {v1, v2}, Lcom/android/email/activity/UNCSearchResultsList;->access$802(Lcom/android/email/activity/UNCSearchResultsList;Z)Z

    .line 263
    if-eqz v15, :cond_2

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mController:Lcom/android/email/Controller;
    invoke-static {v1}, Lcom/android/email/activity/UNCSearchResultsList;->access$1000(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v4, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mMailboxKey:J

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Document;->mAccountKey:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mControllerCallback:Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;
    invoke-static {v10}, Lcom/android/email/activity/UNCSearchResultsList;->access$900(Lcom/android/email/activity/UNCSearchResultsList;)Lcom/android/email/activity/UNCSearchResultsList$ControllerResults;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v1 .. v12}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;ZZ)V

    goto/16 :goto_1

    .line 283
    .end local v14           #args:Landroid/os/Bundle;
    .end local v15           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v16           #document:Lcom/android/emailcommon/provider/EmailContent$Document;
    .end local v20           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const v2, 0x7f08050d

    const/4 v3, 0x1

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->showToast(II)V
    invoke-static {v1, v2, v3}, Lcom/android/email/activity/UNCSearchResultsList;->access$1100(Lcom/android/email/activity/UNCSearchResultsList;II)V

    goto/16 :goto_2

    .line 287
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const v2, 0x7f08037b

    const/4 v3, 0x1

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->showToast(II)V
    invoke-static {v1, v2, v3}, Lcom/android/email/activity/UNCSearchResultsList;->access$1100(Lcom/android/email/activity/UNCSearchResultsList;II)V

    goto/16 :goto_2

    .line 291
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const v2, 0x7f08037e

    const/4 v3, 0x1

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->showToast(II)V
    invoke-static {v1, v2, v3}, Lcom/android/email/activity/UNCSearchResultsList;->access$1100(Lcom/android/email/activity/UNCSearchResultsList;II)V

    goto/16 :goto_2

    .line 295
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const v2, 0x7f08037d

    const/4 v3, 0x1

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->showToast(II)V
    invoke-static {v1, v2, v3}, Lcom/android/email/activity/UNCSearchResultsList;->access$1100(Lcom/android/email/activity/UNCSearchResultsList;II)V

    goto/16 :goto_2

    .line 299
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const v2, 0x7f08037c

    const/4 v3, 0x1

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->showToast(II)V
    invoke-static {v1, v2, v3}, Lcom/android/email/activity/UNCSearchResultsList;->access$1100(Lcom/android/email/activity/UNCSearchResultsList;II)V

    goto/16 :goto_2

    .line 303
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const v2, 0x7f08037e

    const/4 v3, 0x1

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->showToast(II)V
    invoke-static {v1, v2, v3}, Lcom/android/email/activity/UNCSearchResultsList;->access$1100(Lcom/android/email/activity/UNCSearchResultsList;II)V

    goto/16 :goto_2

    .line 307
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const v2, 0x7f08043c

    const/4 v3, 0x1

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->showToast(II)V
    invoke-static {v1, v2, v3}, Lcom/android/email/activity/UNCSearchResultsList;->access$1100(Lcom/android/email/activity/UNCSearchResultsList;II)V

    goto/16 :goto_2

    .line 311
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const v2, 0x7f08050d

    const/4 v3, 0x1

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->showToast(II)V
    invoke-static {v1, v2, v3}, Lcom/android/email/activity/UNCSearchResultsList;->access$1100(Lcom/android/email/activity/UNCSearchResultsList;II)V

    goto/16 :goto_2

    .line 316
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/UNCSearchResultsList$1;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const v2, 0x7f0800b4

    const/4 v3, 0x1

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->showToast(II)V
    invoke-static {v1, v2, v3}, Lcom/android/email/activity/UNCSearchResultsList;->access$1100(Lcom/android/email/activity/UNCSearchResultsList;II)V

    goto/16 :goto_2

    .line 281
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
