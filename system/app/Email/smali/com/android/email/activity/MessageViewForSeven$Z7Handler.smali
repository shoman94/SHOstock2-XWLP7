.class Lcom/android/email/activity/MessageViewForSeven$Z7Handler;
.super Landroid/os/Handler;
.source "MessageViewForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Z7Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewForSeven;)V
    .locals 0
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/16 v11, 0x64

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 698
    sget-object v6, Lcom/android/email/activity/MessageViewForSeven;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    if-eqz v6, :cond_0

    .line 699
    sget-object v6, Lcom/android/email/activity/MessageViewForSeven;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    const/16 v7, 0x5d

    iget-object v8, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v8}, Lcom/android/email/activity/MessageViewForSeven;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/seven/Z7/app/Z7ServiceClient;->registerCallback(ILandroid/os/Handler;)V

    .line 700
    sget-object v6, Lcom/android/email/activity/MessageViewForSeven;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    const/16 v7, 0x44

    iget-object v8, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v8}, Lcom/android/email/activity/MessageViewForSeven;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/seven/Z7/app/Z7ServiceClient;->registerCallback(ILandroid/os/Handler;)V

    .line 704
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 706
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "MessageViewForSeven >>"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EmailViewer got a message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with data "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 770
    const-string v6, "MessageViewForSeven >>"

    const-string v7, "Received unknown message"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_1
    :goto_0
    return-void

    .line 710
    :sswitch_0
    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    #calls: Lcom/android/email/activity/MessageViewForSeven;->showReportDialog(Landroid/os/Bundle;)V
    invoke-static {v6, v0}, Lcom/android/email/activity/MessageViewForSeven;->access$400(Lcom/android/email/activity/MessageViewForSeven;Landroid/os/Bundle;)V

    goto :goto_0

    .line 714
    :sswitch_1
    const-string v6, "messageId"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 716
    .local v2, messageId:J
    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 720
    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_2

    .line 721
    const-string v6, "MessageViewForSeven >>"

    const-string v7, "Received a download notification for wrong message ID"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 725
    :cond_2
    const-string v6, "errorCode"

    invoke-static {}, Lcom/android/email/activity/MessageViewForSeven;->access$500()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 727
    .local v4, resultValue:I
    invoke-static {}, Lcom/android/email/activity/MessageViewForSeven;->access$500()I

    move-result v6

    if-eq v4, v6, :cond_3

    .line 728
    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    #setter for: Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z
    invoke-static {v6, v10}, Lcom/android/email/activity/MessageViewForSeven;->access$602(Lcom/android/email/activity/MessageViewForSeven;Z)Z

    .line 729
    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageViewForSeven;->getControllerCallback()Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageKey:J

    invoke-virtual {v6, v9, v7, v8, v11}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 731
    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v7, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    #getter for: Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z
    invoke-static {v7}, Lcom/android/email/activity/MessageViewForSeven;->access$600(Lcom/android/email/activity/MessageViewForSeven;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/email/activity/MessageViewForSeven;->setBusyIndicator(Z)V

    .line 732
    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    #calls: Lcom/android/email/activity/MessageViewForSeven;->showReportDialog(Landroid/os/Bundle;)V
    invoke-static {v6, v0}, Lcom/android/email/activity/MessageViewForSeven;->access$400(Lcom/android/email/activity/MessageViewForSeven;Landroid/os/Bundle;)V

    goto :goto_0

    .line 736
    :cond_3
    const-string v6, "isDownloading"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 737
    .local v1, isDownloading:Z
    const-string v6, "sizeChanged"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 739
    .local v5, sizeChanged:Z
    if-eqz v5, :cond_4

    if-nez v1, :cond_4

    .line 740
    const-string v6, "MessageViewForSeven >>"

    const-string v7, "Body size changed"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageViewForSeven;->getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v6

    new-instance v7, Lcom/android/email/activity/MessageViewForSeven$Z7Handler$1;

    invoke-direct {v7, p0}, Lcom/android/email/activity/MessageViewForSeven$Z7Handler$1;-><init>(Lcom/android/email/activity/MessageViewForSeven$Z7Handler;)V

    invoke-virtual {v6, v7}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->post(Ljava/lang/Runnable;)Z

    .line 754
    :cond_4
    if-eqz v1, :cond_6

    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    #getter for: Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z
    invoke-static {v6}, Lcom/android/email/activity/MessageViewForSeven;->access$600(Lcom/android/email/activity/MessageViewForSeven;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 755
    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageViewForSeven;->getControllerCallback()Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageKey:J

    invoke-virtual {v6, v9, v7, v8, v10}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 757
    const-string v6, "MessageViewForSeven >>"

    const-string v7, "Body downloading in progress"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    #setter for: Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z
    invoke-static {v6, v1}, Lcom/android/email/activity/MessageViewForSeven;->access$602(Lcom/android/email/activity/MessageViewForSeven;Z)Z

    goto/16 :goto_0

    .line 758
    :cond_6
    if-nez v1, :cond_5

    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    #getter for: Lcom/android/email/activity/MessageViewForSeven;->mIsDownloading:Z
    invoke-static {v6}, Lcom/android/email/activity/MessageViewForSeven;->access$600(Lcom/android/email/activity/MessageViewForSeven;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 759
    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageViewForSeven;->getControllerCallback()Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v7}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageKey:J

    invoke-virtual {v6, v9, v7, v8, v11}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 761
    const-string v6, "MessageViewForSeven >>"

    const-string v7, "Body downloading stopped"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v6, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    const/4 v7, -0x1

    #setter for: Lcom/android/email/activity/MessageViewForSeven;->mBodyDownloadTaskId:I
    invoke-static {v6, v7}, Lcom/android/email/activity/MessageViewForSeven;->access$002(Lcom/android/email/activity/MessageViewForSeven;I)I

    goto :goto_1

    .line 708
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch
.end method
