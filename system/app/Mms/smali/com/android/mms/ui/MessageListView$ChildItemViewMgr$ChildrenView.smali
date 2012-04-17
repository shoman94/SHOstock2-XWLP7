.class Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
.super Ljava/lang/Object;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildrenView"
.end annotation


# instance fields
.field protected mFromXDeltaTransfer:F

.field protected mFromYDeltaTransfer:F

.field protected mIsAlignLeft:Z

.field protected mIsNewChildView:Z

.field protected mIsTransfer:Z

.field protected mMoveXTransfer:F

.field protected mMoveYTransfer:F

.field protected mToXDeltaTransfer:F

.field protected mToYDeltaTransfer:F

.field protected mView:Landroid/view/View;

.field final synthetic this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 899
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 879
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 881
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 883
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    .line 885
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    .line 887
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 889
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 891
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    .line 893
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    .line 895
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    .line 897
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    .line 901
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 902
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 903
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;IIZLandroid/view/View;)V
    .locals 3
    .parameter
    .parameter "index"
    .parameter "position"
    .parameter "isNew"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 905
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 879
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 881
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 883
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    .line 885
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    .line 887
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 889
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 891
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    .line 893
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    .line 895
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    .line 897
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    .line 906
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userSetChildView(IIZLandroid/view/View;)V

    .line 907
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;Lcom/android/mms/ui/MessageListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 877
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;)V

    return-void
.end method

.method private userSetChildView(IIZLandroid/view/View;)V
    .locals 1
    .parameter "index"
    .parameter "position"
    .parameter "isNew"
    .parameter "view"

    .prologue
    .line 927
    iput-boolean p3, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 928
    iput-object p4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 931
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->isAlignLeft()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    .line 932
    return-void
.end method


# virtual methods
.method public releaseChildView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 911
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    .line 912
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    .line 913
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 914
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 915
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    .line 916
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    .line 917
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    .line 918
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    .line 920
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->removeViewInLayout(Landroid/view/View;)V

    .line 922
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 924
    :cond_0
    return-void
.end method

.method public userCalculateOffsetTransfer(IF)V
    .locals 7
    .parameter "index"
    .parameter "interpolatedTime"

    .prologue
    const/4 v4, 0x0

    .line 968
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    iget v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p2

    float-to-int v1, v5

    .line 970
    .local v1, moveYTransfer:I
    :goto_0
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    if-eqz v5, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    float-to-int v0, v4

    .line 973
    .local v0, moveXTransfer:I
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v4, v4, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v4, v4, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v4, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 974
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    move-object v2, v3

    .line 975
    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 976
    .local v2, msgListItem:Lcom/android/mms/ui/MessageListItem;
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getCheckBox()I

    move-result v4

    if-nez v4, :cond_3

    .line 977
    int-to-float v4, v1

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v4, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userOffsetChildTopAndBottom(II)V

    .line 978
    int-to-float v4, v0

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v4, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userOffsetLeftAndRight(II)V

    .line 979
    int-to-float v4, v0

    iput v4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    .line 983
    :goto_2
    int-to-float v4, v1

    iput v4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    .line 985
    .end local v2           #msgListItem:Lcom/android/mms/ui/MessageListItem;
    :cond_0
    return-void

    .end local v0           #moveXTransfer:I
    .end local v1           #moveYTransfer:I
    .end local v3           #view:Landroid/view/View;
    :cond_1
    move v1, v4

    .line 968
    goto :goto_0

    .restart local v1       #moveYTransfer:I
    :cond_2
    move v0, v4

    .line 970
    goto :goto_1

    .line 981
    .restart local v0       #moveXTransfer:I
    .restart local v2       #msgListItem:Lcom/android/mms/ui/MessageListItem;
    .restart local v3       #view:Landroid/view/View;
    :cond_3
    int-to-float v4, v1

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v4, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userOffsetChildTopAndBottom(II)V

    goto :goto_2
.end method

.method public userGetChildView()Landroid/view/View;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public userOffsetChildTopAndBottom(II)V
    .locals 1
    .parameter "offset"
    .parameter "index"

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 940
    return-void
.end method

.method public userOffsetLeftAndRight(II)V
    .locals 2
    .parameter "offset"
    .parameter "index"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->isAlignLeft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 954
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0
.end method

.method public userSetTransfer(FFFF)V
    .locals 1
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"

    .prologue
    .line 958
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    .line 960
    iput p3, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 961
    iput p4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 962
    iput p1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    .line 963
    iput p2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    .line 964
    return-void
.end method
