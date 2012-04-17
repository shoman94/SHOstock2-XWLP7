.class Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;
.super Landroid/os/AsyncTask;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAccountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 800
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/email/activity/setup/AccountSettingsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 800
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Ljava/lang/Object;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    .line 803
    aget-object v5, p1, v8

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 804
    .local v1, accountId:J
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 805
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_1

    .line 806
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v5

    iput-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 808
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v5

    iput-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 810
    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v5, :cond_1

    .line 811
    :cond_0
    const/4 v0, 0x0

    .line 814
    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v3

    .line 815
    .local v3, defaultAccountId:J
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v8

    const/4 v6, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 800
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 5
    .parameter "results"

    .prologue
    const/4 v2, 0x0

    .line 822
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 823
    aget-object v0, p1, v2

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 824
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_1

    .line 825
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #setter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$302(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z

    .line 826
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;->abandonEdit()V

    .line 842
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_0
    :goto_0
    return-void

    .line 828
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #setter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v1, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$502(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 829
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    #setter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mDefaultAccountId:J
    invoke-static {v2, v3, v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$602(Lcom/android/email/activity/setup/AccountSettingsFragment;J)J

    .line 832
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    iput-object v2, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->securityPolicy:Lcom/android/email/SecurityPolicy;

    .line 833
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->securityPolicy:Lcom/android/email/SecurityPolicy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 834
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSettingsFragment;->securityPolicy:Lcom/android/email/SecurityPolicy;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v2

    iput-object v2, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    .line 837
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mStarted:Z
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$800(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #calls: Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$900(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    goto :goto_0
.end method
