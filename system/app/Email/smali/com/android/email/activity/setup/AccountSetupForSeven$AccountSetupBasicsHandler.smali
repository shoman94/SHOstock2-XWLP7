.class Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;
.super Landroid/os/Handler;
.source "AccountSetupForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountSetupBasicsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V
    .locals 0
    .parameter

    .prologue
    .line 999
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1004
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1006
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1007
    .local v0, state:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1008
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$600(Lcom/android/email/activity/setup/AccountSetupForSeven;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const v3, 0x7f0801d4

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1009
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$600(Lcom/android/email/activity/setup/AccountSetupForSeven;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 1006
    .end local v0           #state:Ljava/lang/Boolean;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 1011
    .restart local v0       #state:Ljava/lang/Boolean;
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$600(Lcom/android/email/activity/setup/AccountSetupForSeven;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$600(Lcom/android/email/activity/setup/AccountSetupForSeven;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$600(Lcom/android/email/activity/setup/AccountSetupForSeven;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1013
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupForSeven;->removeDialog(I)V

    goto :goto_0

    .line 1004
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
