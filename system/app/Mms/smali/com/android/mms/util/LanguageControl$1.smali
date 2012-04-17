.class Lcom/android/mms/util/LanguageControl$1;
.super Landroid/os/Handler;
.source "LanguageControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/LanguageControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/LanguageControl;


# direct methods
.method constructor <init>(Lcom/android/mms/util/LanguageControl;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/mms/util/LanguageControl$1;->this$0:Lcom/android/mms/util/LanguageControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 91
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/LanguageControl;->access$000()Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/mms/util/LanguageControl;->access$000()Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    invoke-static {}, Lcom/android/mms/util/LanguageControl;->access$000()Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "detectResult"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, detectResultCode:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "error_type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 100
    .local v2, errorType:I
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.instanttranslator.action.COMPLETE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "type"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    const-string v4, "detect_result"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v4, "error_type"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    iget-object v4, p0, Lcom/android/mms/util/LanguageControl$1;->this$0:Lcom/android/mms/util/LanguageControl;

    #getter for: Lcom/android/mms/util/LanguageControl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/util/LanguageControl;->access$200(Lcom/android/mms/util/LanguageControl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    return-void

    .line 93
    .end local v0           #detectResultCode:Ljava/lang/String;
    .end local v2           #errorType:I
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/mms/util/LanguageControl;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IllegalArgumentException - during show ProgressDialog for DETECT"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
