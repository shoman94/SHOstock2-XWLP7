.class Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/emailcommon/provider/EmailContent$Message;",
        ">;"
    }
.end annotation


# instance fields
.field private mId:J

.field private mMailboxType:I

.field private final mOkToFetch:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V
    .locals 0
    .parameter
    .parameter "messageId"
    .parameter "okToFetch"

    .prologue
    .line 3542
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 3543
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3544
    iput-wide p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mId:J

    .line 3545
    iput-boolean p4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mOkToFetch:Z

    .line 3546
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;JZZ)V
    .locals 2
    .parameter
    .parameter "messageId"
    .parameter "okToFetch"
    .parameter "elmSvcCancelled"

    .prologue
    .line 3531
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 3532
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3533
    iput-wide p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mId:J

    .line 3534
    iput-boolean p4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mOkToFetch:Z

    .line 3536
    const-string v0, "chandra"

    const-string v1, "Portrait Inside LoadMessageTask -> Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .locals 0
    .parameter
    .parameter "okToFetch"

    .prologue
    .line 3522
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3523
    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mOkToFetch:Z

    .line 3524
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 5
    .parameter "params"

    .prologue
    .line 3554
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3555
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 3556
    .local v1, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_0

    .line 3557
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 3560
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3561
    const/4 v2, 0x0

    .line 3569
    :goto_0
    return-object v2

    .line 3563
    :cond_1
    if-eqz v1, :cond_2

    .line 3564
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mMailboxType:I

    .line 3565
    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mMailboxType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 3566
    const/4 v1, 0x0

    :cond_2
    move-object v2, v1

    .line 3569
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3513
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 11
    .parameter "message"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3574
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3689
    :cond_0
    :goto_0
    return-void

    .line 3577
    :cond_1
    if-nez p1, :cond_2

    .line 3578
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mIsEMLView:Z

    if-eq v3, v9, :cond_0

    .line 3582
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 3583
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onMessageNotExists()V

    goto :goto_0

    .line 3587
    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mIsDestoryStart:Z

    if-eq v3, v9, :cond_0

    .line 3590
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$402(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 3591
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v3, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1502(Lcom/android/email/activity/MessageViewFragmentBase;J)J

    .line 3592
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMailboxId:J
    invoke-static {v3, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2302(Lcom/android/email/activity/MessageViewFragmentBase;J)J

    .line 3594
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->checkITPolicy_AllowPOPIMAP()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3597
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->onMarkAsRead(Z)V
    invoke-static {v3, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2400(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    .line 3601
    :cond_3
    const-string v3, "MessageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jebarlin >>> message.mIsMimeLoaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v5, 0x7f08030e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->changeLoadMoreBtnText(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2500(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V

    .line 3606
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v4, "__attachment_message_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3608
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object p1

    .line 3611
    :cond_4
    iget-boolean v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v3, :cond_5

    iget-boolean v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v3, :cond_c

    :cond_5
    iget-boolean v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v3, :cond_c

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v5, v5, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    const/4 v8, 0x4

    invoke-static {v5, v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    .line 3621
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3, p1, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    .line 3622
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2600()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/html"

    const-string v6, "utf-8"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/email/activity/MessageWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3623
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v3, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1602(Lcom/android/email/activity/MessageViewFragmentBase;J)J

    .line 3626
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 3627
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 3628
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/android/email/activity/MessageViewFragmentBase;->versionDouble:Ljava/lang/Double;

    .line 3631
    :cond_6
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getAlwaysDecryptOrVerifyMails()Z

    move-result v1

    .line 3632
    .local v1, always:Z
    if-eqz v1, :cond_8

    .line 3634
    sget-boolean v3, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialogCancelled:Z

    if-nez v3, :cond_7

    .line 3635
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->showSmimeUserChoiceDialog()V

    .line 3675
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v1           #always:Z
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {v4, v5, v10}, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2902(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;)Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    .line 3676
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2900(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3678
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    iget v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mMailboxType:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->onMessageShown(JI)V

    .line 3680
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->versionDouble:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x402c333333333333L

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_e

    .line 3681
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v2

    .line 3682
    .local v2, enforcer:Lcom/android/email/irm/IRMEnforcer;
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/email/irm/IRMEnforcer;->isExtractAllowed(J)Z

    move-result v3

    if-nez v3, :cond_d

    .line 3683
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    goto/16 :goto_0

    .line 3640
    .end local v2           #enforcer:Lcom/android/email/irm/IRMEnforcer;
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v1       #always:Z
    :cond_8
    sget-boolean v3, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialogCancelled:Z

    if-nez v3, :cond_7

    .line 3641
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_a

    .line 3645
    :cond_9
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    iput-object v4, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    .line 3646
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    new-array v4, v10, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 3647
    :cond_a
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v3, :cond_7

    .line 3655
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v4, "__attachment_message_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3656
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    iput-object v4, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    .line 3657
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    new-array v4, v10, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 3659
    :cond_b
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->onMoreMessage()V
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2800(Lcom/android/email/activity/MessageViewFragmentBase;)V

    goto/16 :goto_1

    .line 3665
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v1           #always:Z
    :cond_c
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3667
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadMessageTask - reloadUiFromMessage ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3669
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mOkToFetch:Z

    invoke-virtual {v3, p1, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    goto/16 :goto_1

    .line 3685
    .restart local v2       #enforcer:Lcom/android/email/irm/IRMEnforcer;
    :cond_d
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    goto/16 :goto_0

    .line 3687
    .end local v2           #enforcer:Lcom/android/email/irm/IRMEnforcer;
    :cond_e
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3513
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Message;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    return-void
.end method
