.class Lcom/android/email/activity/MessageViewForSeven$2;
.super Ljava/lang/Object;
.source "MessageViewForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewForSeven;->readMoreAction(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewForSeven;

.field final synthetic val$contentType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewForSeven;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iput-object p2, p0, Lcom/android/email/activity/MessageViewForSeven$2;->val$contentType:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-nez v0, :cond_0

    .line 584
    const-string v0, "MessageViewForSeven >>"

    const-string v1, "readMoreAction(): mMessage == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->setWaitForLoadMessageId(J)V

    .line 589
    sget-object v0, Lcom/android/email/activity/MessageViewForSeven;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    if-eqz v0, :cond_1

    .line 590
    sget-object v0, Lcom/android/email/activity/MessageViewForSeven;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    const/16 v1, 0x5d

    iget-object v2, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewForSeven;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/seven/Z7/app/Z7ServiceClient;->registerCallback(ILandroid/os/Handler;)V

    .line 591
    sget-object v0, Lcom/android/email/activity/MessageViewForSeven;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    const/16 v1, 0x44

    iget-object v2, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewForSeven;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/seven/Z7/app/Z7ServiceClient;->registerCallback(ILandroid/os/Handler;)V

    .line 595
    :cond_1
    iget-object v8, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    long-to-int v1, v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    long-to-int v2, v2

    int-to-long v2, v2

    const v4, 0x8000

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven$2;->val$contentType:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/digc/seven/Z7MailHandler;->downloadMailBody(IJIZLjava/lang/String;)I

    move-result v0

    #setter for: Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I
    invoke-static {v8, v0}, Lcom/android/email/activity/MessageViewForSeven;->access$002(Lcom/android/email/activity/MessageViewForSeven;I)I

    .line 600
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 603
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    const/4 v1, 0x1

    #setter for: Lcom/android/email/activity/MessageViewForSeven;->mLoadingScreenType:I
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewForSeven;->access$102(Lcom/android/email/activity/MessageViewForSeven;I)I

    .line 608
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$2;->val$contentType:Ljava/lang/String;

    #setter for: Lcom/android/email/activity/MessageViewForSeven;->mContentTypeForReadMore:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewForSeven;->access$202(Lcom/android/email/activity/MessageViewForSeven;Ljava/lang/String;)Ljava/lang/String;

    .line 609
    const-string v0, "MessageViewForSeven >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readMoreAction(): downloadMailBody() has been called. task id=#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    #getter for: Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I
    invoke-static {v2}, Lcom/android/email/activity/MessageViewForSeven;->access$000(Lcom/android/email/activity/MessageViewForSeven;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 612
    :catch_0
    move-exception v7

    .line 613
    .local v7, e:Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    const/4 v1, -0x1

    #setter for: Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewForSeven;->access$002(Lcom/android/email/activity/MessageViewForSeven;I)I

    .line 614
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->setWaitForLoadMessageId(J)V

    .line 615
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    #calls: Lcom/android/email/activity/MessageViewForSeven;->showDialogExceptionOnThread(Ljava/lang/Exception;)V
    invoke-static {v0, v7}, Lcom/android/email/activity/MessageViewForSeven;->access$300(Lcom/android/email/activity/MessageViewForSeven;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 605
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$2;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    const/4 v1, 0x2

    #setter for: Lcom/android/email/activity/MessageViewForSeven;->mLoadingScreenType:I
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewForSeven;->access$102(Lcom/android/email/activity/MessageViewForSeven;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 616
    :catch_1
    move-exception v7

    .line 617
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MessageViewForSeven >>"

    const-string v1, "Read more FAILED"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
