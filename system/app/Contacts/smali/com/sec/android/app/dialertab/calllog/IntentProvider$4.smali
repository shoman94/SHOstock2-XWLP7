.class final Lcom/sec/android/app/dialertab/calllog/IntentProvider$4;
.super Lcom/sec/android/app/dialertab/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$rowId:J

.field final synthetic val$voicemailUri:Ljava/lang/String;


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .parameter

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$4;->val$rowId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$4;->val$voicemailUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "EXTRA_VOICEMAIL_URI"

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$4;->val$voicemailUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    :cond_0
    const-string v1, "EXTRA_VOICEMAIL_START_PLAYBACK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    return-object v0
.end method
