.class Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$1;
.super Landroid/webkit/WebViewClient;
.source "AccountSetupDisclaimerWeb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$1;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 211
    const-string v0, "AccountSetupDisclaimerWeb"

    const-string v2, "Disclaimer onPageFinished()"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$1;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    #getter for: Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->acceptCheck:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->access$100(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$1;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    #getter for: Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->isErrorReceived:Z
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->access$000(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$1;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    #getter for: Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->isErrorReceived:Z
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->access$000(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$1;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$1;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$1;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    #setter for: Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->isErrorReceived:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->access$002(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;Z)Z

    .line 221
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$1;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->dismissWebViewProgressDialog()V

    .line 222
    return-void

    :cond_1
    move v0, v1

    .line 214
    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "AccountSetupDisclaimerWeb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disclaimer onReceivedError(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$1;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    const/4 v1, 0x1

    #setter for: Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->isErrorReceived:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->access$002(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;Z)Z

    .line 233
    return-void
.end method
