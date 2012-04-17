.class Lcom/android/email/activity/MessageCompose$16;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 2495
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    const v1, 0x7f080039

    .line 2504
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2505
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$3000(Lcom/android/email/activity/MessageCompose;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 2506
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$3100(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2511
    :goto_0
    return-void

    .line 2508
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$3000(Lcom/android/email/activity/MessageCompose;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2509
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$3100(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 2497
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 2501
    return-void
.end method
