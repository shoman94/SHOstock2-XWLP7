.class public Lcom/android/contacts/widget/PinnedHeaderListView;
.super Lcom/android/contacts/widget/AutoScrollListView;
.source "PinnedHeaderListView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/PinnedHeaderListView$1;,
        Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;,
        Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mAnimating:Z

.field private mAnimationDuration:I

.field private mAnimationTargetTime:J

.field private mBounds:Landroid/graphics/RectF;

.field private mClipRect:Landroid/graphics/Rect;

.field private mHeaderPaddingLeft:I

.field private mHeaderWidth:I

.field private mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

.field private mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

.field private mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

.field private mScrollState:I

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 111
    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/widget/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 115
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/widget/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/widget/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    .line 104
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationDuration:I

    .line 120
    invoke-super {p0, p0}, Lcom/android/contacts/widget/AutoScrollListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    .line 121
    invoke-super {p0, p0}, Lcom/android/contacts/widget/AutoScrollListView;->setOnItemSelectedListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;)V

    .line 122
    return-void
.end method

.method private drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;J)V
    .locals 7
    .parameter "canvas"
    .parameter "header"
    .parameter "currentTime"

    .prologue
    const/4 v6, 0x0

    .line 501
    iget-boolean v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v3, :cond_0

    .line 502
    iget-wide v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    sub-long/2addr v3, p3

    long-to-int v1, v3

    .line 503
    .local v1, timeLeft:I
    if-gtz v1, :cond_3

    .line 504
    iget v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    iput v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 505
    iget-boolean v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    iput-boolean v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 506
    const/4 v3, 0x0

    iput-boolean v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 512
    .end local v1           #timeLeft:I
    :cond_0
    :goto_0
    iget-boolean v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v3, :cond_2

    .line 513
    iget-object v2, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 514
    .local v2, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 515
    .local v0, saveCount:I
    iget v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    int-to-float v3, v3

    iget v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 516
    iget v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 517
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderWidth:I

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 518
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    const/16 v5, 0x1f

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 520
    :cond_1
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 521
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 523
    .end local v0           #saveCount:I
    .end local v2           #view:Landroid/view/View;
    :cond_2
    return-void

    .line 508
    .restart local v1       #timeLeft:I
    :cond_3
    iget v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    iget v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    iget v5, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    sub-int/2addr v4, v5

    mul-int/2addr v4, v1

    iget v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationDuration:I

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method private ensurePinnedHeaderLayout(I)V
    .locals 8
    .parameter "viewIndex"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 354
    iget-object v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iget-object v3, v5, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 355
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 356
    iget v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderWidth:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 358
    .local v4, widthSpec:I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 359
    .local v2, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_1

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_1

    .line 360
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 364
    .local v1, heightSpec:I
    :goto_0
    invoke-virtual {v3, v4, v1}, Landroid/view/View;->measure(II)V

    .line 365
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 366
    .local v0, height:I
    iget-object v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iput v0, v5, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    .line 367
    iget v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderWidth:I

    invoke-virtual {v3, v6, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 369
    .end local v0           #height:I
    .end local v1           #heightSpec:I
    .end local v2           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #widthSpec:I
    :cond_0
    return-void

    .line 362
    .restart local v2       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v4       #widthSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1       #heightSpec:I
    goto :goto_0
.end method

.method private invalidateIfAnimating()V
    .locals 2

    .prologue
    .line 438
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimating:Z

    .line 439
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-ge v0, v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_1

    .line 441
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimating:Z

    .line 442
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->invalidate()V

    .line 446
    :cond_0
    return-void

    .line 439
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private smoothScrollToPartition(I)Z
    .locals 5
    .parameter "partition"

    .prologue
    .line 420
    iget-object v4, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v4, p1}, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getScrollPositionForHeader(I)I

    move-result v3

    .line 421
    .local v3, position:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 422
    const/4 v4, 0x0

    .line 434
    :goto_0
    return v4

    .line 425
    :cond_0
    const/4 v2, 0x0

    .line 426
    .local v2, offset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 427
    iget-object v4, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v4, v1

    .line 428
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v4, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_1

    .line 429
    iget v4, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v4

    .line 426
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 433
    .end local v0           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v2}, Lcom/android/contacts/widget/PinnedHeaderListView;->smoothScrollToPositionFromTop(II)V

    .line 434
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 450
    iget-boolean v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimating:Z

    if-eqz v8, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 452
    .local v1, currentTime:J
    :goto_0
    const/4 v7, 0x0

    .line 453
    .local v7, top:I
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getBottom()I

    move-result v0

    .line 454
    .local v0, bottom:I
    const/4 v3, 0x0

    .line 455
    .local v3, hasVisibleHeaders:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    iget v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-ge v5, v8, :cond_4

    .line 456
    iget-object v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 457
    .local v4, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_0

    .line 458
    const/4 v3, 0x1

    .line 459
    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v11, :cond_2

    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-ge v8, v0, :cond_2

    .line 460
    iget v0, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 455
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 450
    .end local v0           #bottom:I
    .end local v1           #currentTime:J
    .end local v3           #hasVisibleHeaders:Z
    .end local v4           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .end local v5           #i:I
    .end local v7           #top:I
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 461
    .restart local v0       #bottom:I
    .restart local v1       #currentTime:J
    .restart local v3       #hasVisibleHeaders:Z
    .restart local v4       #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .restart local v5       #i:I
    .restart local v7       #top:I
    :cond_2
    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v8, :cond_3

    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v12, :cond_0

    .line 462
    :cond_3
    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v9, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v6, v8, v9

    .line 463
    .local v6, newTop:I
    if-le v6, v7, :cond_0

    .line 464
    move v7, v6

    goto :goto_2

    .line 470
    .end local v4           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .end local v6           #newTop:I
    :cond_4
    if-eqz v3, :cond_5

    .line 471
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 472
    iget-object v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getWidth()I

    move-result v10

    invoke-virtual {v8, v9, v7, v10, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 473
    iget-object v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 476
    :cond_5
    invoke-super {p0, p1}, Lcom/android/contacts/widget/AutoScrollListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 478
    if-eqz v3, :cond_a

    .line 479
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 482
    iget v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_8

    .line 483
    iget-object v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 484
    .restart local v4       #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_6

    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v8, :cond_7

    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v12, :cond_6

    .line 485
    :cond_7
    invoke-direct {p0, p1, v4, v1, v2}, Lcom/android/contacts/widget/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;J)V

    goto :goto_3

    .line 489
    .end local v4           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    :cond_8
    const/4 v5, 0x0

    :goto_4
    iget v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-ge v5, v8, :cond_a

    .line 490
    iget-object v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 491
    .restart local v4       #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_9

    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v11, :cond_9

    .line 492
    invoke-direct {p0, p1, v4, v1, v2}, Lcom/android/contacts/widget/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;J)V

    .line 489
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 497
    .end local v4           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    :cond_a
    invoke-direct {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 498
    return-void
.end method

.method public getPinnedHeaderHeight(I)I
    .locals 1
    .parameter "viewIndex"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 247
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPositionAt(I)I
    .locals 2
    .parameter "y"

    .prologue
    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getPaddingLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->pointToPosition(II)I

    move-result v0

    .line 390
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 397
    .end local v0           #position:I
    :goto_0
    return v0

    .line 395
    .restart local v0       #position:I
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 396
    if-gtz p1, :cond_0

    .line 397
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/widget/AutoScrollListView;->getTopFadingEdgeStrength()F

    move-result v0

    goto :goto_0
.end method

.method public getTotalTopPinnedHeaderHeight()I
    .locals 4

    .prologue
    .line 375
    iget v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    .local v1, i:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 376
    iget-object v2, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v2, v1

    .line 377
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v2, :cond_0

    .line 378
    iget v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v3

    .line 381
    .end local v0           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 402
    iget v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mScrollState:I

    if-nez v3, :cond_2

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 404
    .local v2, y:I
    iget v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    .local v1, i:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 405
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v3, v1

    .line 406
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-gt v3, v2, :cond_0

    iget v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v4, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v3, v4

    if-le v3, v2, :cond_0

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 408
    invoke-direct {p0, v1}, Lcom/android/contacts/widget/PinnedHeaderListView;->smoothScrollToPartition(I)Z

    move-result v3

    .line 416
    .end local v0           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .end local v1           #i:I
    .end local v2           #y:I
    :goto_0
    return v3

    .line 410
    .restart local v0       #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .restart local v1       #i:I
    .restart local v2       #y:I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 416
    .end local v0           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .end local v1           #i:I
    .end local v2           #y:I
    :cond_2
    invoke-super {p0, p1}, Lcom/android/contacts/widget/AutoScrollListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public onItemSelected(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 14
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getHeight()I

    move-result v8

    .line 208
    .local v8, height:I
    const/4 v13, 0x0

    .line 209
    .local v13, windowTop:I
    move v12, v8

    .line 211
    .local v12, windowBottom:I
    const/4 v10, 0x0

    .line 212
    .local v10, prevHeaderBottom:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-ge v9, v1, :cond_2

    .line 213
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v7, v1, v9

    .line 214
    .local v7, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v1, v7, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_0

    .line 215
    iget v1, v7, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v1, :cond_1

    .line 216
    iget v1, v7, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v2, v7, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v13, v1, v2

    .line 212
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 217
    :cond_1
    iget v1, v7, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 218
    iget v12, v7, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 224
    .end local v7           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 225
    .local v11, selectedView:Landroid/view/View;
    if-eqz v11, :cond_3

    .line 226
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_5

    .line 227
    move/from16 v0, p3

    invoke-virtual {p0, v0, v13}, Lcom/android/contacts/widget/PinnedHeaderListView;->setSelectionFromTop(II)V

    .line 233
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_4

    .line 234
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 236
    :cond_4
    return-void

    .line 228
    :cond_5
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v12, :cond_3

    .line 229
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v1, v12, v1

    move/from16 v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/widget/PinnedHeaderListView;->setSelectionFromTop(II)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 126
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/widget/AutoScrollListView;->onLayout(ZIIII)V

    .line 127
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    .line 128
    sub-int v0, p4, p2

    iget v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderWidth:I

    .line 129
    return-void
.end method

.method public onNothingSelected(Lcom/sec/android/touchwiz/widget/TwAdapterView;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/sec/android/touchwiz/widget/TwAdapterView;)V

    .line 243
    :cond_0
    return-void
.end method

.method public onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V
    .locals 7
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v5, 0x0

    .line 156
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    if-eqz v3, :cond_4

    .line 157
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3}, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderCount()I

    move-result v0

    .line 158
    .local v0, count:I
    iget v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-eq v0, v3, :cond_0

    .line 159
    iput v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    .line 160
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    if-nez v3, :cond_2

    .line 161
    iget v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    .line 169
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-ge v2, v3, :cond_3

    .line 170
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    new-instance v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;-><init>(Lcom/android/contacts/widget/PinnedHeaderListView$1;)V

    aput-object v4, v3, v2

    .line 173
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-interface {v4, v2, v5, p0}, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 162
    .end local v2           #i:I
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    array-length v3, v3

    iget v4, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-ge v3, v4, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    .line 164
    .local v1, headers:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    .line 165
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 176
    .end local v1           #headers:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .restart local v2       #i:I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationDuration:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    .line 177
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3, p0}, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeaders(Lcom/android/contacts/widget/PinnedHeaderListView;)V

    .line 178
    invoke-direct {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 181
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    if-eqz v3, :cond_5

    .line 182
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    invoke-interface {v3, p0, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;->onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V

    .line 184
    :cond_5
    return-void
.end method

.method public onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 194
    iput p2, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mScrollState:I

    .line 195
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V

    .line 198
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 137
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    iput-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    .line 138
    invoke-super {p0, p1}, Lcom/android/contacts/widget/AutoScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    return-void
.end method

.method public setFadingHeader(IIZ)V
    .locals 7
    .parameter "viewIndex"
    .parameter "position"
    .parameter "fade"

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 309
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, p2, v6

    invoke-virtual {p0, v6}, Lcom/android/contacts/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 310
    .local v1, child:Landroid/view/View;
    if-nez v1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v2, v6, p1

    .line 313
    .local v2, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 314
    const/4 v6, 0x2

    iput v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 315
    const/16 v6, 0xff

    iput v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    .line 316
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 318
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v5

    .line 319
    .local v5, top:I
    iput v5, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 320
    if-eqz p3, :cond_0

    .line 321
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v0, v6, v5

    .line 322
    .local v0, bottom:I
    iget v3, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    .line 323
    .local v3, headerHeight:I
    if-ge v0, v3, :cond_0

    .line 324
    sub-int v4, v0, v3

    .line 325
    .local v4, portion:I
    add-int v6, v3, v4

    mul-int/lit16 v6, v6, 0xff

    div-int/2addr v6, v3

    iput v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    .line 326
    add-int v6, v5, v4

    iput v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method public setHeaderInvisible(IZ)V
    .locals 5
    .parameter "viewIndex"
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 338
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 339
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_2

    :cond_0
    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v1, v3, :cond_2

    .line 340
    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 341
    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-nez v1, :cond_1

    .line 342
    iput-boolean v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 343
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getBottom()I

    move-result v1

    iget v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 345
    :cond_1
    iput-boolean v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 346
    iget-wide v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 347
    iput-boolean v4, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_2
    iput-boolean v4, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    goto :goto_0
.end method

.method public setHeaderPinnedAtBottom(IIZ)V
    .locals 3
    .parameter "viewIndex"
    .parameter "y"
    .parameter "animate"

    .prologue
    const/4 v2, 0x1

    .line 276
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 277
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 278
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iput v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 279
    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_0

    .line 280
    iget-wide v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 281
    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 282
    iput p2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 298
    :goto_0
    return-void

    .line 283
    :cond_0
    if-eqz p3, :cond_3

    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-ne v1, p2, :cond_1

    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez v1, :cond_3

    .line 284
    :cond_1
    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    .line 285
    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 290
    :goto_1
    iput-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 291
    iput-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 292
    iget-wide v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 293
    iput p2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_0

    .line 287
    :cond_2
    iput-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 288
    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    goto :goto_1

    .line 295
    :cond_3
    iput-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 296
    iput p2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method public setHeaderPinnedAtTop(IIZ)V
    .locals 3
    .parameter "viewIndex"
    .parameter "y"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 259
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 260
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 261
    iput p2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 262
    iput v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 265
    iput-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 266
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnItemSelectedListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;

    .line 150
    invoke-super {p0, p0}, Lcom/android/contacts/widget/AutoScrollListView;->setOnItemSelectedListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemSelectedListener;)V

    .line 151
    return-void
.end method

.method public setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    .line 144
    invoke-super {p0, p0}, Lcom/android/contacts/widget/AutoScrollListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    .line 145
    return-void
.end method
