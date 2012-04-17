.class Lcom/android/email/activity/MessageViewFragmentBase$1;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter

    .prologue
    .line 833
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$1;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 835
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$1;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v5, v5, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v5, :cond_0

    .line 836
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$1;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v5, v5, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 837
    .local v0, result:Landroid/webkit/WebView$HitTestResult;
    if-nez v0, :cond_1

    .line 875
    .end local v0           #result:Landroid/webkit/WebView$HitTestResult;
    :cond_0
    :goto_0
    return v3

    .line 840
    .restart local v0       #result:Landroid/webkit/WebView$HitTestResult;
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    .line 841
    .local v1, type:I
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$1;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v5, v5, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 843
    .local v2, webSettings:Landroid/webkit/WebSettings;
    if-nez v1, :cond_2

    .line 844
    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v5

    if-ne v5, v3, :cond_0

    move v3, v4

    .line 847
    goto :goto_0

    .line 853
    :cond_2
    const/16 v5, 0x9

    if-eq v1, v5, :cond_0

    .line 856
    const/4 v5, 0x7

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_3

    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 859
    :cond_3
    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v4

    if-ne v4, v3, :cond_4

    .line 860
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$1;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageWebView;->selectLastTouchText()Z

    goto :goto_0

    .line 862
    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$1;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageWebView;->selectText()Z

    goto :goto_0

    .line 866
    :cond_5
    const/4 v5, 0x5

    if-ne v1, v5, :cond_0

    .line 867
    const-string v5, "Email"

    const-string v6, "HANATHEONE congrats"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$1;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v5, v5, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v5, v4, v3}, Lcom/android/email/activity/MessageWebView;->performHapticFeedback(II)Z

    .line 872
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$1;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v4, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->showPopUpOnImage(I)Landroid/app/Dialog;

    goto :goto_0
.end method
