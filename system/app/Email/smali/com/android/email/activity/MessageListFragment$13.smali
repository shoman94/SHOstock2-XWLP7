.class Lcom/android/email/activity/MessageListFragment$13;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 4717
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7
    .parameter "view"
    .parameter "first"
    .parameter "visible_count"
    .parameter "total_count"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4725
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5200(Lcom/android/email/activity/MessageListFragment;)Landroid/view/ScaleGestureDetector;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4726
    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4727
    .local v1, tView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mFirstPosition:I
    invoke-static {v2, p2}, Lcom/android/email/activity/MessageListFragment;->access$4902(Lcom/android/email/activity/MessageListFragment;I)I

    .line 4728
    if-eqz v1, :cond_0

    .line 4729
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListViewPos:Lcom/android/email/activity/MessageListFragment$ListViewPos;
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$ListViewPos;

    move-result-object v2

    iput p2, v2, Lcom/android/email/activity/MessageListFragment$ListViewPos;->mPos:I

    .line 4730
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListViewPos:Lcom/android/email/activity/MessageListFragment$ListViewPos;
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$ListViewPos;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Lcom/android/email/activity/MessageListFragment$ListViewPos;->mTop:I

    .line 4732
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mUseFlickDown:Z
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5400(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4733
    if-eq p2, v5, :cond_1

    if-nez p2, :cond_2

    .line 4734
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5500(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mCurrentState:I
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5100(Lcom/android/email/activity/MessageListFragment;)I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 4735
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2, v4}, Lcom/android/email/activity/MessageListFragment;->setSelection(I)V

    .line 4752
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mUseFlickUp:Z
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5700(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4753
    if-eqz p2, :cond_4

    add-int/lit8 v2, p4, -0x20

    if-ge v2, p2, :cond_4

    .line 4754
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mLastPos:I
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5800(Lcom/android/email/activity/MessageListFragment;)I

    move-result v2

    if-ge v2, p2, :cond_6

    .line 4755
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->bIsScrollingDown:Z
    invoke-static {v2, v5}, Lcom/android/email/activity/MessageListFragment;->access$5902(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 4761
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mLastPos:I
    invoke-static {v2, p2}, Lcom/android/email/activity/MessageListFragment;->access$5802(Lcom/android/email/activity/MessageListFragment;I)I

    .line 4762
    if-ge p2, v4, :cond_7

    .line 4777
    .end local v1           #tView:Landroid/view/View;
    :cond_4
    :goto_2
    return-void

    .line 4738
    .restart local v1       #tView:Landroid/view/View;
    :cond_5
    const-string v2, "MessageListFragment"

    const-string v3, "U1"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4739
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->bIsDown:Z
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5600(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 4740
    const-string v2, "MessageListFragment"

    const-string v3, "U2"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4741
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v2, v2, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5500(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4742
    const-string v2, "MessageListFragment"

    const-string v3, "U3"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4743
    if-nez p2, :cond_2

    .line 4744
    const-string v2, "MessageListFragment"

    const-string v3, "U5"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4745
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->onRelease()V

    goto :goto_0

    .line 4756
    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mLastPos:I
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5800(Lcom/android/email/activity/MessageListFragment;)I

    move-result v2

    if-eq v2, p2, :cond_3

    .line 4759
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->bIsScrollingDown:Z
    invoke-static {v2, v6}, Lcom/android/email/activity/MessageListFragment;->access$5902(Lcom/android/email/activity/MessageListFragment;Z)Z

    goto :goto_1

    .line 4764
    :cond_7
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->bIsLoading:Z
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$6000(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->bEnableFlickUp:Z
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$6100(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v2

    if-ne v2, v5, :cond_4

    .line 4765
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5000(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 4766
    .local v0, last:I
    const-string v2, "MessageListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScroll() last = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , total = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4768
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->bIsScrollingDown:Z
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$5900(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v2

    if-eq v2, v5, :cond_8

    add-int/lit8 v2, p4, -0x1

    if-ne v0, v2, :cond_4

    .line 4769
    :cond_8
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->bIsScrollingDown:Z
    invoke-static {v2, v6}, Lcom/android/email/activity/MessageListFragment;->access$5902(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 4770
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->onFlickUp()V

    .line 4771
    const-string v2, "scroll"

    const-string v3, "onFlickUp"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "state"

    .prologue
    .line 4720
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$13;->this$0:Lcom/android/email/activity/MessageListFragment;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mCurrentState:I
    invoke-static {v0, p2}, Lcom/android/email/activity/MessageListFragment;->access$5102(Lcom/android/email/activity/MessageListFragment;I)I

    .line 4721
    return-void
.end method
