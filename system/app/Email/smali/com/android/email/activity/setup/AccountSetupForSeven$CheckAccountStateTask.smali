.class Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckAccountStateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountId:J

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 1250
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->mAccountId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$1800()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1254
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1256
    .local v7, flags:I
    and-int/lit8 v0, v7, 0x20

    if-eqz v0, :cond_0

    .line 1257
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1263
    .end local v7           #flags:I
    :goto_0
    return-object v0

    .line 1261
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1263
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1245
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "isSecurityHold"

    .prologue
    const/4 v4, 0x0

    .line 1268
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1269
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1270
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->mAccountId:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 1272
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v1, v0, v4}, Lcom/android/email/activity/setup/AccountSetupForSeven;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1277
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1274
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupForSeven;->completeAddBasicAccount()V
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$1900(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1245
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
