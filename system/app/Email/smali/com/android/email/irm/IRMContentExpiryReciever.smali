.class public Lcom/android/email/irm/IRMContentExpiryReciever;
.super Landroid/content/BroadcastReceiver;
.source "IRMContentExpiryReciever.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "expiry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "IRM"

    const-string v1, "IRMContentExpiryReciever:onreceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    const-string v0, "MessageId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 45
    .local v8, mMessageId:Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 46
    const/4 v6, 0x0

    .line 48
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "syncServerId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 54
    invoke-static {p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v7

    .line 55
    .local v7, mController:Lcom/android/email/Controller;
    if-eqz v6, :cond_2

    .line 56
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 57
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 58
    .local v9, messageId:Ljava/lang/Long;
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_1

    .line 59
    const-string v0, "IRM"

    const-string v1, "IRMContentExpiryReciever:start load more"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/android/email/Controller;->loadMore(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .end local v9           #messageId:Ljava/lang/Long;
    :cond_2
    if-eqz v6, :cond_3

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 69
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #mController:Lcom/android/email/Controller;
    .end local v8           #mMessageId:Ljava/lang/String;
    :cond_3
    return-void

    .line 64
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #mMessageId:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method
