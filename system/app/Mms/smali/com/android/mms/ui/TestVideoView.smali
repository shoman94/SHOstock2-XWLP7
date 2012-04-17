.class public Lcom/android/mms/ui/TestVideoView;
.super Landroid/widget/VideoView;
.source "TestVideoView.java"


# instance fields
.field mLocation:[I

.field mParentScrollViewExists:Z

.field mParentScrollViewHeight:I

.field mParentScrollViewRect:Landroid/graphics/Rect;

.field mParentScrollViewWidth:I

.field final mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mLocation:[I

    .line 21
    iput v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewWidth:I

    .line 23
    iput v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewHeight:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewRect:Landroid/graphics/Rect;

    .line 27
    iput-boolean v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewExists:Z

    .line 29
    new-instance v0, Lcom/android/mms/ui/TestVideoView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TestVideoView$1;-><init>(Lcom/android/mms/ui/TestVideoView;)V

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mLocation:[I

    .line 21
    iput v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewWidth:I

    .line 23
    iput v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewHeight:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewRect:Landroid/graphics/Rect;

    .line 27
    iput-boolean v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewExists:Z

    .line 29
    new-instance v0, Lcom/android/mms/ui/TestVideoView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TestVideoView$1;-><init>(Lcom/android/mms/ui/TestVideoView;)V

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mLocation:[I

    .line 21
    iput v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewWidth:I

    .line 23
    iput v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewHeight:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewRect:Landroid/graphics/Rect;

    .line 27
    iput-boolean v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewExists:Z

    .line 29
    new-instance v0, Lcom/android/mms/ui/TestVideoView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TestVideoView$1;-><init>(Lcom/android/mms/ui/TestVideoView;)V

    iput-object v0, p0, Lcom/android/mms/ui/TestVideoView;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 46
    return-void
.end method


# virtual methods
.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 3
    .parameter "region"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/widget/VideoView;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    .line 96
    .local v0, ret:Z
    iget-boolean v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewExists:Z

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 101
    :cond_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/VideoView;->onAttachedToWindow()V

    .line 52
    invoke-virtual {p0}, Lcom/android/mms/ui/TestVideoView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/TestVideoView;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 53
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/VideoView;->onDetachedFromWindow()V

    .line 59
    invoke-virtual {p0}, Lcom/android/mms/ui/TestVideoView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/TestVideoView;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 60
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/VideoView;->onSizeChanged(IIII)V

    .line 65
    invoke-virtual {p0}, Lcom/android/mms/ui/TestVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 66
    .local v0, v:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    .line 68
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/mms/ui/TestVideoView;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewWidth:I

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewHeight:I

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mms/ui/TestVideoView;->mLocation:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/mms/ui/TestVideoView;->mLocation:[I

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/mms/ui/TestVideoView;->mLocation:[I

    aget v4, v4, v5

    iget v5, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewWidth:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/mms/ui/TestVideoView;->mLocation:[I

    aget v5, v5, v7

    iget v6, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewHeight:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewRect:Landroid/graphics/Rect;

    .line 74
    iput-boolean v7, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewExists:Z

    .line 90
    :goto_1
    return-void

    .line 78
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0           #v:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0

    .line 83
    :cond_1
    const-string v1, "TestVideoView"

    const-string v2, "Video View doesn\'t have a scrollView as a parent !! "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_2
    iput-boolean v5, p0, Lcom/android/mms/ui/TestVideoView;->mParentScrollViewExists:Z

    goto :goto_1
.end method
