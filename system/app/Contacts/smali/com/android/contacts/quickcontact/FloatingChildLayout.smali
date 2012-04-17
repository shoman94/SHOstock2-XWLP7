.class public Lcom/android/contacts/quickcontact/FloatingChildLayout;
.super Landroid/widget/FrameLayout;
.source "FloatingChildLayout.java"


# instance fields
.field private final mAnimationDuration:I

.field private mChild:Landroid/view/View;

.field private mFixedTopPosition:I

.field private mOutsideTouchListener:Landroid/view/View$OnTouchListener;

.field private mTargetScreen:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    .line 57
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    .line 60
    const/high16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mAnimationDuration:I

    .line 61
    return-void
.end method

.method private animateScale(ZLjava/lang/Runnable;)V
    .locals 7
    .parameter "isExitAnimation"
    .parameter "onAnimationEndRunnable"

    .prologue
    const/high16 v3, 0x3f80

    .line 154
    iget-object v4, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    iget-object v5, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    .line 155
    iget-object v4, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    iget-object v5, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotY(F)V

    .line 156
    iget-object v4, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 157
    .local v0, animator:Landroid/view/ViewPropertyAnimator;
    iget v4, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 158
    if-eqz p1, :cond_2

    const v1, 0x10c0004

    .line 160
    .local v1, scaleInterpolator:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 161
    if-eqz p1, :cond_3

    const/high16 v2, 0x3f00

    .line 162
    .local v2, scaleTarget:F
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 163
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 164
    if-eqz p1, :cond_0

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 166
    if-eqz p2, :cond_1

    .line 167
    new-instance v3, Lcom/android/contacts/quickcontact/FloatingChildLayout$1;

    invoke-direct {v3, p0, p2}, Lcom/android/contacts/quickcontact/FloatingChildLayout$1;-><init>(Lcom/android/contacts/quickcontact/FloatingChildLayout;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 183
    :cond_1
    return-void

    .line 158
    .end local v1           #scaleInterpolator:I
    .end local v2           #scaleTarget:F
    :cond_2
    const v1, 0x10c0005

    goto :goto_0

    .restart local v1       #scaleInterpolator:I
    :cond_3
    move v2, v3

    .line 161
    goto :goto_1
.end method

.method private static clampDimension(III)I
    .locals 2
    .parameter "value"
    .parameter "size"
    .parameter "max"

    .prologue
    .line 130
    if-le p1, p2, :cond_0

    .line 131
    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v1, p2, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private getTargetInWindow()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 92
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 93
    .local v1, windowScreen:Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 96
    .local v0, target:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 97
    return-object v0
.end method

.method private static layoutChild(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 140
    return-void
.end method


# virtual methods
.method public hideChild(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "onAnimationEndRunnable"

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->animateScale(ZLjava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 70
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 71
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 72
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mChild:Landroid/view/View;

    .line 104
    .local v0, child:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getTargetInWindow()Landroid/graphics/Rect;

    move-result-object v7

    .line 106
    .local v7, target:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 107
    .local v4, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 109
    .local v1, childHeight:I
    iget v8, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getWidth()I

    move-result v8

    sub-int/2addr v8, v4

    div-int/lit8 v2, v8, 0x2

    .line 112
    .local v2, childLeft:I
    iget v3, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mFixedTopPosition:I

    .line 113
    .local v3, childTop:I
    invoke-static {v0, v2, v3}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->layoutChild(Landroid/view/View;II)V

    .line 126
    :goto_0
    return-void

    .line 116
    .end local v2           #childLeft:I
    .end local v3           #childTop:I
    :cond_0
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    div-int/lit8 v9, v4, 0x2

    sub-int v2, v8, v9

    .line 118
    .restart local v2       #childLeft:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v9, v1

    const v10, 0x3eb33333

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int v3, v8, v9

    .line 121
    .restart local v3       #childTop:I
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getWidth()I

    move-result v8

    invoke-static {v2, v4, v8}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->clampDimension(III)I

    move-result v5

    .line 122
    .local v5, clampedChildLeft:I
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->getHeight()I

    move-result v8

    invoke-static {v3, v1, v8}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->clampDimension(III)I

    move-result v6

    .line 124
    .local v6, clampedChildTop:I
    invoke-static {v0, v5, v6}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->layoutChild(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mOutsideTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mOutsideTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChildTargetScreen(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "targetScreen"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mTargetScreen:Landroid/graphics/Rect;

    .line 84
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->requestLayout()V

    .line 85
    return-void
.end method

.method public setOnOutsideTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mOutsideTouchListener:Landroid/view/View$OnTouchListener;

    .line 189
    return-void
.end method

.method public showChild(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "onAnimationEndRunnable"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->animateScale(ZLjava/lang/Runnable;)V

    .line 145
    return-void
.end method
