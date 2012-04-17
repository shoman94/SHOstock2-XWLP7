.class Lcom/android/email/activity/MessageListXL$12;
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
    .line 3376
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 3388
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4700(Lcom/android/email/activity/MessageListXL;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3389
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 3390
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 3391
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->updateViewsVisibility()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$5000(Lcom/android/email/activity/MessageListXL;)V

    .line 3392
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3393
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 3394
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->clearFocus()V

    .line 3395
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->onDetachedFromWindow()V

    .line 3396
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$3900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    .line 3398
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->onResultSearchClose()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$5100(Lcom/android/email/activity/MessageListXL;)V

    .line 3399
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    .line 3400
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListXL;->access$4702(Lcom/android/email/activity/MessageListXL;Z)Z

    .line 3402
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 3384
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 3379
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$12;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v1, 0x1

    #setter for: Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListXL;->access$4702(Lcom/android/email/activity/MessageListXL;Z)Z

    .line 3380
    return-void
.end method
