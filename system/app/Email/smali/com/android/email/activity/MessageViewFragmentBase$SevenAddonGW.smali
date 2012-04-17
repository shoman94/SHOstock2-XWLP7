.class public Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SevenAddonGW"
.end annotation


# instance fields
.field public mMessageView:Lcom/android/email/activity/MessageViewForSeven;

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 1
    .parameter

    .prologue
    .line 9964
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10053
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->SevenViewInstance:Lcom/android/email/activity/MessageViewForSeven;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/activity/MessageViewForSeven;

    invoke-direct {v0}, Lcom/android/email/activity/MessageViewForSeven;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->SevenViewInstance:Lcom/android/email/activity/MessageViewForSeven;

    :goto_0
    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    return-void

    :cond_0
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->SevenViewInstance:Lcom/android/email/activity/MessageViewForSeven;

    goto :goto_0
.end method


# virtual methods
.method public doFinishLoadAttachment(J)V
    .locals 2
    .parameter "attachmentId"

    .prologue
    .line 10037
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "btl : SevenAddonGW : doFinishLoadAttachment called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10038
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->finishAttachmentDownloadForZ7(J)V

    .line 10042
    return-void
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 9990
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 9966
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getContoller()Lcom/android/email/Controller;
    .locals 1

    .prologue
    .line 9974
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v0

    return-object v0
.end method

.method public getControllerCallback()Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;
    .locals 1

    .prologue
    .line 10011
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ControllerResultUiThreadWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    return-object v0
.end method

.method public getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    .locals 1

    .prologue
    .line 10006
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1

    .prologue
    .line 9970
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 9994
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v0

    return-wide v0
.end method

.method public loadContentFromServer(Z)V
    .locals 1
    .parameter "loadAttachment"

    .prologue
    .line 10031
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->loadContentFromServer(Z)V

    .line 10032
    return-void
.end method

.method public onCancelAttachment(J)V
    .locals 4
    .parameter "attachmentId"

    .prologue
    .line 10045
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v2, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    .line 10046
    .local v0, attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v0, :cond_0

    .line 10047
    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10048
    iget-object v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    .line 10049
    .local v1, bar:Landroid/widget/ProgressBar;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10051
    .end local v1           #bar:Landroid/widget/ProgressBar;
    :cond_0
    return-void
.end method

.method public reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "bodyText"
    .parameter "bodyHtml"
    .parameter "loadAttachment"

    .prologue
    .line 10027
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3000(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 10028
    return-void
.end method

.method public setWaitForLoadMessageId(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 10002
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mWaitForLoadMessageId:J
    invoke-static {v0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7402(Lcom/android/email/activity/MessageViewFragmentBase;J)J

    .line 10003
    return-void
.end method
