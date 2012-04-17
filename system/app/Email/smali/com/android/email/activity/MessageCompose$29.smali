.class Lcom/android/email/activity/MessageCompose$29;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onShowAccountDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 7449
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 7453
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    iget-wide v5, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$9900(Lcom/android/email/activity/MessageCompose;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getAccountId()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-eqz v4, :cond_1

    .line 7455
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z
    invoke-static {v4, v10}, Lcom/android/email/activity/MessageCompose;->access$10002(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 7457
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 7460
    .local v2, originalAddress:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$9900(Lcom/android/email/activity/MessageCompose;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getAccountId()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    #setter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v5, v4}, Lcom/android/email/activity/MessageCompose;->access$5502(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 7467
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->setFromAccount()V
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$6600(Lcom/android/email/activity/MessageCompose;)V

    .line 7470
    :try_start_0
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    #calls: Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    invoke-static {v4, v5}, Lcom/android/email/activity/MessageCompose;->access$6500(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7476
    :goto_0
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->IsEAS()Z
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$4500(Lcom/android/email/activity/MessageCompose;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 7477
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/email/activity/ToolBarScrollView;->SetEASIconDisplay(Z)V

    .line 7478
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$2700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/email/activity/ToolBarScrollView;->SetEASIconDisplay(Z)V

    .line 7480
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->changeSmimeOptions(ZZ)V
    invoke-static {v4, v9, v9}, Lcom/android/email/activity/MessageCompose;->access$10100(Lcom/android/email/activity/MessageCompose;ZZ)V

    .line 7482
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v4, v11}, Lcom/android/email/activity/MessageCompose;->access$1102(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 7497
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 7498
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget v3, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 7499
    .local v3, tempFlags:I
    new-array v1, v10, [J

    .line 7500
    .local v1, messageIds:[J
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v4, v1, v9

    .line 7501
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$5400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/email/Controller;->deleteMessage([JJ)V

    .line 7502
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v5, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v5}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    #setter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v4, v5}, Lcom/android/email/activity/MessageCompose;->access$1702(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 7505
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    iput v3, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 7509
    .end local v1           #messageIds:[J
    .end local v3           #tempFlags:I
    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 7511
    const-string v4, "Compose >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onShowAccountDialog : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 7512
    return-void

    .line 7471
    :catch_0
    move-exception v0

    .line 7472
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "Email"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7473
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    .line 7484
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/email/activity/ToolBarScrollView;->SetEASIconDisplay(Z)V

    .line 7485
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$2700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/email/activity/ToolBarScrollView;->SetEASIconDisplay(Z)V

    .line 7487
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$5700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$5700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    :goto_2
    #calls: Lcom/android/email/activity/MessageCompose;->configureSmimeOptions(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    invoke-static {v5, v4}, Lcom/android/email/activity/MessageCompose;->access$6400(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 7490
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7492
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v4, v11}, Lcom/android/email/activity/MessageCompose;->access$1102(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 7487
    :cond_5
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$29;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    goto :goto_2
.end method
