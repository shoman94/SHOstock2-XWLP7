.class public Lcom/android/email/SecurityPolicy$DeleteSdCardData;
.super Landroid/os/AsyncTask;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteSdCardData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/SecurityPolicy;


# direct methods
.method public constructor <init>(Lcom/android/email/SecurityPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/android/email/SecurityPolicy$DeleteSdCardData;->this$0:Lcom/android/email/SecurityPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 5
    .parameter "arg0"

    .prologue
    .line 1499
    const/4 v0, 0x1

    .line 1501
    .local v0, del:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/email/SecurityPolicy$DeleteSdCardData;->this$0:Lcom/android/email/SecurityPolicy;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/email/SecurityPolicy;->deleteSdCardFiles(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1505
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 1502
    :catch_0
    move-exception v1

    .line 1503
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SecurityPolicy"

    const-string v3, "deleteSdCardFiles exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1496
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/SecurityPolicy$DeleteSdCardData;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/android/email/SecurityPolicy$DeleteSdCardData;->this$0:Lcom/android/email/SecurityPolicy;

    #getter for: Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;
    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->access$100(Lcom/android/email/SecurityPolicy;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy$DeleteSdCardData;->this$0:Lcom/android/email/SecurityPolicy;

    #getter for: Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/email/SecurityPolicy;->access$000(Lcom/android/email/SecurityPolicy;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/variant/DPMWraper;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/android/email/SecurityPolicy$DeleteSdCardData;->this$0:Lcom/android/email/SecurityPolicy;

    #getter for: Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;
    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->access$100(Lcom/android/email/SecurityPolicy;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/variant/DPMWraper;->wipeData(I)V

    .line 1518
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1496
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/SecurityPolicy$DeleteSdCardData;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
