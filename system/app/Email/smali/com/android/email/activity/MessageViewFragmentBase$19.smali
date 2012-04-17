.class Lcom/android/email/activity/MessageViewFragmentBase$19;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;

.field final synthetic val$mToBubble:Lcom/android/email/bubblebutton/BubbleButton;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 9488
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$19;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$19;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mToEmail:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8700(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$19;->val$mToBubble:Lcom/android/email/bubblebutton/BubbleButton;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->onClickAddressButton(Ljava/lang/String;Lcom/android/email/bubblebutton/BubbleButton;I)V

    .line 9490
    return-void
.end method
