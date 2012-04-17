.class public abstract Lcom/android/email/activity/MessageViewBase;
.super Landroid/app/Activity;
.source "MessageViewBase.java"

# interfaces
.implements Lcom/android/email/activity/MessageViewFragmentBase$Callback;


# instance fields
.field private mController:Lcom/android/email/Controller;

.field private mFetchAttachmentProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getAccountId()J
.end method

.method protected abstract getFragment()Lcom/android/email/activity/MessageViewFragmentBase;
.end method

.method protected abstract getLayoutId()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewBase;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewBase;->setContentView(I)V

    .line 69
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewBase;->mFetchAttachmentProgressDialog:Landroid/app/ProgressDialog;

    .line 70
    iget-object v0, p0, Lcom/android/email/activity/MessageViewBase;->mFetchAttachmentProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/email/activity/MessageViewBase;->mFetchAttachmentProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewBase;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewBase;->mController:Lcom/android/email/Controller;

    .line 74
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "args"

    .prologue
    .line 100
    packed-switch p1, :pswitch_data_0

    .line 109
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 112
    .local v0, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 102
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewBase;->getFragment()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->changeBgColorDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 103
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 106
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewBase;->getFragment()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->saveRecipientAsGroupDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 107
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 89
    return-void
.end method

.method public onLoadMessageError(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewBase;->onLoadMessageFinished()V

    .line 158
    return-void
.end method

.method public onLoadMessageFinished()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewBase;->setProgressBarIndeterminateVisibility(Z)V

    .line 153
    return-void
.end method

.method public onLoadMessageStarted()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewBase;->setProgressBarIndeterminateVisibility(Z)V

    .line 148
    return-void
.end method

.method public onMessageNotExists()V
    .locals 0

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewBase;->finish()V

    .line 163
    return-void
.end method

.method public onMessageViewGone()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onMessageViewShown(I)V
    .locals 0
    .parameter "mailboxType"

    .prologue
    .line 129
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 84
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 79
    return-void
.end method

.method public onUrlInMessageClicked(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewBase;->getAccountId()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/android/email/activity/ActivityHelper;->openUrlInMessage(Landroid/app/Activity;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method
