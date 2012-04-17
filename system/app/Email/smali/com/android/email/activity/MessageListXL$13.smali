.class Lcom/android/email/activity/MessageListXL$13;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->setLayoutAnim_slideSideToSide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter

    .prologue
    .line 3411
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3422
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1400()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3423
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 3424
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 3425
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 3426
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3427
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->requestFocus()Z

    .line 3428
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 3437
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListXL;->access$4702(Lcom/android/email/activity/MessageListXL;Z)Z

    .line 3438
    return-void

    .line 3430
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 3431
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x10001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 3433
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3434
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3435
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$13;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 3418
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 3414
    return-void
.end method
