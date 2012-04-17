.class public Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;
.super Ljava/lang/Object;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChildItemViewMgr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    }
.end annotation


# instance fields
.field protected mChildItemViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;",
            ">;"
        }
    .end annotation
.end field

.field protected mVisibleChildCount:I

.field final synthetic this$0:Lcom/android/mms/ui/MessageListView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListView;)V
    .locals 1
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    .line 713
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mVisibleChildCount:I

    .line 716
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    .line 717
    return-void
.end method


# virtual methods
.method public addChildViewBelowWithInvisible([I)V
    .locals 24
    .parameter "orginalIndexes"

    .prologue
    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v17

    .line 764
    .local v17, size:I
    if-nez v17, :cond_1

    .line 817
    :cond_0
    return-void

    .line 767
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->removeChildWithAll()V

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v14

    .line 770
    .local v14, positionTop:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 771
    .local v23, viewBottom:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getLastVisiblePosition()I

    move-result v13

    .line 773
    .local v13, positionBottom:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mVisibleChildCount:I

    .line 774
    const/16 v21, 0x0

    .line 775
    .local v21, totalRemainViewSize:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getBottom()I

    move-result v22

    .line 776
    .local v22, totalScreenSize:I
    move/from16 v16, v13

    .line 777
    .local v16, realUnderPosition:I
    const/4 v11, 0x0

    .line 779
    .local v11, isChecked:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v19

    .line 780
    .local v19, sizeScreen:I
    const/16 v18, 0x0

    .line 781
    .local v18, sizeOfInvisibleBelowItems:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move/from16 v0, v19

    if-ge v4, v0, :cond_5

    .line 784
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    new-instance v2, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    add-int v5, v14, v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;IIZLandroid/view/View;)V

    invoke-virtual {v9, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 785
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v12, v2, :cond_3

    .line 786
    aget v2, p1, v12

    if-ne v4, v2, :cond_2

    const/4 v11, 0x1

    .line 785
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 788
    :cond_3
    if-nez v11, :cond_4

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v21, v21, v2

    .line 790
    :cond_4
    const/4 v11, 0x0

    .line 781
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 794
    .end local v12           #j:I
    :cond_5
    add-int/lit8 v2, v17, -0x1

    if-ge v13, v2, :cond_0

    .line 796
    move-object/from16 v15, v23

    .line 797
    .local v15, previousView:Landroid/view/View;
    const/4 v10, 0x0

    .line 799
    .local v10, thisView:Landroid/view/View;
    add-int/lit8 v2, v17, -0x1

    sub-int v18, v2, v13

    .line 800
    const/4 v4, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v4, v0, :cond_0

    .line 801
    add-int v7, v19, v4

    .line 802
    .local v7, index:I
    add-int/lit8 v2, v13, 0x1

    add-int v8, v2, v4

    .line 803
    .local v8, position:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v7, v8, v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->makeChildView(Landroid/view/View;II[I)Landroid/view/View;

    move-result-object v10

    .line 804
    if-nez v10, :cond_7

    .line 800
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 806
    :cond_7
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    new-instance v5, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    const/4 v9, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;IIZLandroid/view/View;)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 808
    add-int/lit8 v16, v16, 0x1

    .line 809
    move-object v15, v10

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 812
    .local v20, tmpView:Landroid/view/View;
    if-eqz v20, :cond_6

    .line 813
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v21, v21, v2

    goto :goto_3
.end method

.method public calculateOffsetForTransDelAnim(IF)V
    .locals 2
    .parameter "index"
    .parameter "interpolatedTime"

    .prologue
    .line 866
    new-instance v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;Lcom/android/mms/ui/MessageListView$1;)V

    .line 867
    .local v0, childView:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    .line 869
    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userCalculateOffsetTransfer(IF)V

    .line 871
    :cond_0
    return-void
.end method

.method public getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 750
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v2

    if-gtz v2, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-object v1

    .line 753
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v0

    .line 754
    .local v0, size:I
    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    if-le v0, p1, :cond_0

    .line 757
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    goto :goto_0
.end method

.method public getChildItemCountWithAll()I
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getChildItemViewAt(I)Landroid/view/View;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 740
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v0

    .line 742
    .local v0, size:I
    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    if-gt v0, p1, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-object v1

    .line 745
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userGetChildView()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getVisibleChildItemViewCount()I
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mVisibleChildCount:I

    return v0
.end method

.method public isAlignLeft(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    return v0
.end method

.method protected makeChildView(Landroid/view/View;II[I)Landroid/view/View;
    .locals 11
    .parameter "previousView"
    .parameter "index"
    .parameter "position"
    .parameter "orginalIndexes"

    .prologue
    .line 821
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, p4

    if-ge v2, v6, :cond_1

    .line 822
    aget v6, p4, v2

    if-ne p3, v6, :cond_0

    const/4 v5, 0x0

    .line 854
    :goto_1
    return-object v5

    .line 821
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 825
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-interface {v6, p3, v7, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 827
    .local v5, thisView:Landroid/view/View;
    iget-object v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->getCacheColorHint()I

    move-result v6

    if-eqz v6, :cond_2

    .line 828
    iget-object v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->getCacheColorHint()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 830
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 831
    .local v4, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v4, :cond_3

    .line 832
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    .end local v4           #p:Landroid/widget/AbsListView$LayoutParams;
    const/4 v6, -0x1

    const/4 v7, -0x2

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 834
    .restart local v4       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 839
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListView;->getListPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListView;->getListPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v4, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v6, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 841
    .local v1, childWidthSpec:I
    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 843
    .local v3, lpHeight:I
    if-lez v3, :cond_4

    .line 844
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 848
    .local v0, childHeightSpec:I
    :goto_2
    invoke-virtual {v5, v1, v0}, Landroid/view/View;->measure(II)V

    .line 849
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 852
    iget-object v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    const/4 v7, -0x1

    #calls: Lcom/android/mms/ui/MessageListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    invoke-static {v6, v5, v7, v4}, Lcom/android/mms/ui/MessageListView;->access$000(Lcom/android/mms/ui/MessageListView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto/16 :goto_1

    .line 846
    .end local v0           #childHeightSpec:I
    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_2
.end method

.method public removeChildWithAll()V
    .locals 4

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v2

    .line 721
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 722
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    .line 723
    .local v0, childView:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->releaseChildView()V

    .line 721
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 728
    .end local v0           #childView:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    .line 729
    return-void
.end method

.method public userSetTransfer(IFFFF)V
    .locals 2
    .parameter "index"
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"

    .prologue
    .line 859
    new-instance v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;Lcom/android/mms/ui/MessageListView$1;)V

    .line 860
    .local v0, childView:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    .line 861
    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userSetTransfer(FFFF)V

    .line 863
    :cond_0
    return-void
.end method
