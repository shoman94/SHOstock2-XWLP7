.class Lcom/android/email/activity/MessageListFragment$PositionScroller;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# instance fields
.field private bIsScrolling:Z

.field private final mExtraScroll:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 4642
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$PositionScroller;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment$PositionScroller;->bIsScrolling:Z

    .line 4643
    #getter for: Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/email/activity/MessageListFragment;->access$3600(Lcom/android/email/activity/MessageListFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageListFragment$PositionScroller;->mExtraScroll:I

    .line 4644
    return-void
.end method


# virtual methods
.method public isScrolling()Z
    .locals 1

    .prologue
    .line 4670
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment$PositionScroller;->bIsScrolling:Z

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 4681
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$PositionScroller;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mFirstPosition:I
    invoke-static {v4}, Lcom/android/email/activity/MessageListFragment;->access$4900(Lcom/android/email/activity/MessageListFragment;)I

    move-result v1

    .line 4683
    .local v1, firstPos:I
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$PositionScroller;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/email/activity/MessageListFragment;->access$5000(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4685
    .local v2, firstView:Landroid/view/View;
    if-nez v2, :cond_0

    .line 4698
    :goto_0
    return-void

    .line 4688
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 4689
    .local v3, firstViewTop:I
    if-lez v1, :cond_1

    iget v0, p0, Lcom/android/email/activity/MessageListFragment$PositionScroller;->mExtraScroll:I

    .line 4691
    .local v0, extraScroll:I
    :goto_1
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$PositionScroller;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/email/activity/MessageListFragment;->access$5000(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ListView;

    move-result-object v4

    sub-int v5, v3, v0

    iget v6, p0, Lcom/android/email/activity/MessageListFragment$PositionScroller;->mScrollDuration:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 4693
    iget v4, p0, Lcom/android/email/activity/MessageListFragment$PositionScroller;->mTargetPos:I

    if-le v1, v4, :cond_2

    .line 4694
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$PositionScroller;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/email/activity/MessageListFragment;->access$5000(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4689
    .end local v0           #extraScroll:I
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$PositionScroller;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/email/activity/MessageListFragment;->access$5000(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    goto :goto_1

    .line 4696
    .restart local v0       #extraScroll:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment$PositionScroller;->stop()V

    goto :goto_0
.end method

.method stop()V
    .locals 2

    .prologue
    .line 4674
    const-string v0, "MessageListFragment"

    const-string v1, "run() stop to scrolling!"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment$PositionScroller;->bIsScrolling:Z

    .line 4676
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$PositionScroller;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$5000(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4677
    return-void
.end method
