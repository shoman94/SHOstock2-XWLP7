.class Lcom/android/email/activity/MessageViewFragmentBase$22;
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

.field final synthetic val$mCcbubble:Lcom/android/email/bubblebutton/BubbleButton;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 9613
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$22;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$22;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCcEmail:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8800(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$22;->val$mCcbubble:Lcom/android/email/bubblebutton/BubbleButton;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->onClickAddressButton(Ljava/lang/String;Lcom/android/email/bubblebutton/BubbleButton;I)V

    .line 9616
    return-void
.end method
