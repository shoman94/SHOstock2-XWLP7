.class Lcom/android/email/activity/QuickReplyActivity$1;
.super Ljava/lang/Object;
.source "QuickReplyActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/QuickReplyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/QuickReplyActivity;


# direct methods
.method constructor <init>(Lcom/android/email/activity/QuickReplyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/email/activity/QuickReplyActivity$1;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "paramEditable"

    .prologue
    .line 109
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 106
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 98
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/email/activity/QuickReplyActivity$1;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    #getter for: Lcom/android/email/activity/QuickReplyActivity;->replyTextButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/QuickReplyActivity;->access$000(Lcom/android/email/activity/QuickReplyActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/email/activity/QuickReplyActivity$1;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/email/activity/QuickReplyActivity;->setButtonEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/email/activity/QuickReplyActivity;->access$100(Lcom/android/email/activity/QuickReplyActivity;Z)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/QuickReplyActivity$1;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/email/activity/QuickReplyActivity;->setButtonEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/email/activity/QuickReplyActivity;->access$100(Lcom/android/email/activity/QuickReplyActivity;Z)V

    goto :goto_0
.end method
