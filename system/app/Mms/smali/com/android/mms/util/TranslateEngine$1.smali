.class Lcom/android/mms/util/TranslateEngine$1;
.super Landroid/os/Handler;
.source "TranslateEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/TranslateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/TranslateEngine;


# direct methods
.method constructor <init>(Lcom/android/mms/util/TranslateEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/mms/util/TranslateEngine$1;->this$0:Lcom/android/mms/util/TranslateEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/TranslateEngine;->access$000()Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/mms/util/TranslateEngine;->access$000()Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    invoke-static {}, Lcom/android/mms/util/TranslateEngine;->access$000()Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 80
    .local v2, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "com.android.instanttranslator.action.COMPLETE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "transResult"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, transResult:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "error_type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, errorType:I
    if-eqz v2, :cond_1

    .line 85
    const-string v4, "type"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string v4, "result_string"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v4, "error_type"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    iget-object v4, p0, Lcom/android/mms/util/TranslateEngine$1;->this$0:Lcom/android/mms/util/TranslateEngine;

    iget-object v4, v4, Lcom/android/mms/util/TranslateEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    :cond_1
    return-void

    .line 75
    .end local v1           #errorType:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #transResult:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "Mms/TranslateEngine"

    const-string v5, "IllegalArgumentException-during dismiss ProgressDialog for TRANSLATE"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
