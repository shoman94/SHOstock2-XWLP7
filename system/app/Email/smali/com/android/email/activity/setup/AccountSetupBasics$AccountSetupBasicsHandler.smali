.class Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;
.super Landroid/os/Handler;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountSetupBasicsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter

    .prologue
    .line 2122
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2127
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2164
    :cond_0
    :goto_0
    return-void

    .line 2129
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2130
    .local v1, state:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2131
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$900(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    const v4, 0x7f0801d4

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2132
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$900(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2134
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$900(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2136
    :catch_0
    move-exception v0

    .line 2137
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Z7App"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #state:Ljava/lang/Boolean;
    :cond_1
    move v2, v4

    .line 2129
    goto :goto_1

    .line 2146
    .restart local v1       #state:Ljava/lang/Boolean;
    :cond_2
    sput-boolean v3, Lcom/android/email/activity/setup/SetupData;->mIsAutoSetupFinished:Z

    .line 2148
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$1000(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$1000(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_3

    .line 2150
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$1000(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->cancel(Z)Z

    .line 2151
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    const/4 v3, 0x0

    #setter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;
    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$1002(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;)Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    .line 2154
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$900(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$900(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2155
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$900(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2156
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->removeDialog(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2158
    :catch_1
    move-exception v0

    .line 2159
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 2127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public progress(Z)V
    .locals 2
    .parameter "progress"

    .prologue
    const/4 v1, 0x1

    .line 2167
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2168
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2169
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2170
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2171
    return-void

    .line 2169
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
