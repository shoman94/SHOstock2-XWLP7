.class Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetInfoFromWDSTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;",
        ">;"
    }
.end annotation


# instance fields
.field mDomain:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 1
    .parameter

    .prologue
    .line 2174
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 6
    .parameter "domain"

    .prologue
    const/4 v2, 0x0

    .line 2180
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mHandler:Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$1100(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->progress(Z)V

    .line 2181
    const/4 v4, 0x0

    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    .line 2188
    new-instance v3, Lcom/android/email/wds/ServicemineClient;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v3, v4}, Lcom/android/email/wds/ServicemineClient;-><init>(Landroid/content/Context;)V

    .line 2190
    .local v3, sc:Lcom/android/email/wds/ServicemineClient;
    const/4 v1, 0x0

    .line 2193
    .local v1, ep:Lcom/android/email/wds/EmailProviderWds;
    :try_start_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/email/wds/ServicemineClient;->getWDSResponce(Ljava/lang/String;)Lcom/android/email/wds/EmailProviderWds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2197
    if-nez v1, :cond_1

    .line 2211
    :cond_0
    :goto_0
    return-object v2

    .line 2194
    :catch_0
    move-exception v0

    .line 2195
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v4, "Email"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2197
    if-eqz v1, :cond_0

    .line 2200
    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-direct {v2}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V

    .line 2201
    .local v2, provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    const-string v4, ""

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    .line 2202
    const-string v4, ""

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    .line 2203
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    .line 2204
    throw v1

    throw v2

    .line 2205
    throw v1

    throw v2

    .line 2206
    throw v1

    throw v2

    .line 2207
    throw v1

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/lang/String;

    goto :goto_0

    .line 2197
    .end local v2           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_0

    .line 2200
    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-direct {v2}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V

    .line 2201
    .restart local v2       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    const-string v4, ""

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    .line 2202
    const-string v4, ""

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    .line 2203
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    .line 2204
    throw v1

    throw v2

    .line 2205
    throw v1

    throw v2

    .line 2206
    throw v1

    throw v2

    .line 2207
    throw v1

    goto :goto_1

    .line 2200
    .end local v2           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :cond_1
    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-direct {v2}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V

    .line 2201
    .restart local v2       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    const-string v4, ""

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    .line 2202
    const-string v4, ""

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    .line 2203
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    .line 2204
    iget-object v4, v1, Lcom/android/email/wds/EmailProviderWds;->authNameFormat:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    .line 2205
    iget-object v4, v1, Lcom/android/email/wds/EmailProviderWds;->authNameFormat:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    .line 2206
    iget-object v4, v1, Lcom/android/email/wds/EmailProviderWds;->incomingUriTemplate:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/lang/String;

    .line 2207
    iget-object v4, v1, Lcom/android/email/wds/EmailProviderWds;->outgoingUriTemplate:Ljava/lang/String;

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2174
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->doInBackground([Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$900(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2217
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    if-eqz p1, :cond_2

    .end local p1
    :goto_0
    #calls: Lcom/android/email/activity/setup/AccountSetupBasics;->onNextManualSetup(Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V
    invoke-static {v0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$1200(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V

    .line 2218
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mHandler:Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$1100(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->progress(Z)V

    .line 2221
    :cond_0
    sget-boolean v0, Lcom/android/email/activity/setup/SetupData;->mIsAutoSetupFinished:Z

    if-nez v0, :cond_1

    .line 2222
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    const/4 v1, 0x1

    #calls: Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$1300(Lcom/android/email/activity/setup/AccountSetupBasics;Z)V

    .line 2224
    :cond_1
    return-void

    .line 2217
    .restart local p1
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2174
    check-cast p1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->onPostExecute(Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V

    return-void
.end method
