.class Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;
.super Landroid/os/AsyncTask;
.source "AccountSettingsXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAccountIdFromAccountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V
    .locals 0
    .parameter

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1271
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Long;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 1275
    aget-object v9, p1, v6

    .line 1276
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "account"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/accounts/Account;

    .line 1278
    .local v8, acct:Landroid/accounts/Account;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1271
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .parameter "accountId"

    .prologue
    .line 1286
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    #setter for: Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$1102(Lcom/android/email/activity/setup/AccountSettingsXL;J)J

    .line 1288
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateHeaders()V

    .line 1290
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1271
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
