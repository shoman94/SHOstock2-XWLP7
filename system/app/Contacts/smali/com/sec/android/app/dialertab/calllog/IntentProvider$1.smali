.class final Lcom/sec/android/app/dialertab/calllog/IntentProvider$1;
.super Lcom/sec/android/app/dialertab/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$1;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 47
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$1;->val$number:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "sip"

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$1;->val$number:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 52
    .local v0, uri:Landroid/net/Uri;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1

    .line 50
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    const-string v1, "tel"

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$1;->val$number:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_0
.end method
