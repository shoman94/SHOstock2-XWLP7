.class public Lcom/android/contacts/widget/TransitionAnimationView;
.super Landroid/widget/FrameLayout;
.source "TransitionAnimationView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private mAnimationDuration:I

.field private mClipMargins:Landroid/graphics/Rect;

.field private mClipRect:Landroid/graphics/Rect;

.field private mEnterAnimation:Landroid/animation/Animator;

.field private mEnterAnimationId:I

.field private mExitAnimation:Landroid/animation/Animator;

.field private mExitAnimationId:I

.field private mPreviousStateBitmap:Landroid/graphics/Bitmap;

.field private mPreviousStateView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/widget/TransitionAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/widget/TransitionAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mClipMargins:Landroid/graphics/Rect;

    .line 52
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mClipRect:Landroid/graphics/Rect;

    .line 67
    invoke-virtual {p0}, Lcom/android/contacts/widget/TransitionAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/R$styleable;->TransitionAnimationView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, a:Landroid/content/res/TypedArray;
    const/high16 v1, 0x10b

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mEnterAnimationId:I

    .line 72
    const/4 v1, 0x5

    const v2, 0x10b0001

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mExitAnimationId:I

    .line 74
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mClipMargins:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 76
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mClipMargins:Landroid/graphics/Rect;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 78
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mClipMargins:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 80
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mClipMargins:Landroid/graphics/Rect;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 82
    const/4 v1, 0x6

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mAnimationDuration:I

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateView:Landroid/view/View;

    .line 88
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/contacts/widget/TransitionAnimationView;->addView(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/widget/TransitionAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mEnterAnimationId:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mEnterAnimation:Landroid/animation/Animator;

    .line 92
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mEnterAnimation:Landroid/animation/Animator;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid enter animation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mEnterAnimationId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mEnterAnimation:Landroid/animation/Animator;

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mEnterAnimation:Landroid/animation/Animator;

    iget v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 98
    invoke-virtual {p0}, Lcom/android/contacts/widget/TransitionAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mExitAnimationId:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mExitAnimation:Landroid/animation/Animator;

    .line 99
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mExitAnimation:Landroid/animation/Animator;

    if-nez v1, :cond_1

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid exit animation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mExitAnimationId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    return-void
.end method

.method private start(Landroid/view/View;Z)V
    .locals 7
    .parameter "view"
    .parameter "closing"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 156
    iget-object v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mEnterAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mEnterAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mExitAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mExitAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 162
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    if-nez p2, :cond_2

    .line 164
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mEnterAnimation:Landroid/animation/Animator;

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 165
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mEnterAnimation:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 188
    :cond_2
    :goto_0
    return-void

    .line 167
    :cond_3
    if-eqz p2, :cond_4

    .line 168
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mExitAnimation:Landroid/animation/Animator;

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 169
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mExitAnimation:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 171
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 175
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 176
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 177
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    iget-object v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 180
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 182
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mEnterAnimation:Landroid/animation/Animator;

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 186
    iget-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mEnterAnimation:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public static startAnimation(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "closing"

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, container:Lcom/android/contacts/widget/TransitionAnimationView;
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 142
    .local v1, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 143
    instance-of v2, v1, Lcom/android/contacts/widget/TransitionAnimationView;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 144
    check-cast v0, Lcom/android/contacts/widget/TransitionAnimationView;

    .line 150
    :cond_0
    if-eqz v0, :cond_1

    .line 151
    invoke-direct {v0, p0, p1}, Lcom/android/contacts/widget/TransitionAnimationView;->start(Landroid/view/View;Z)V

    .line 153
    :cond_1
    return-void

    .line 147
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 197
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 205
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 201
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 132
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    iput-object v1, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateBitmap:Landroid/graphics/Bitmap;

    .line 137
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 108
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 111
    iput-object v3, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateBitmap:Landroid/graphics/Bitmap;

    .line 113
    :cond_1
    sub-int v1, p4, p2

    .line 114
    .local v1, width:I
    sub-int v0, p5, p3

    .line 115
    .local v0, height:I
    if-lez v1, :cond_3

    if-lez v0, :cond_3

    .line 116
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateBitmap:Landroid/graphics/Bitmap;

    .line 118
    iget-object v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateView:Landroid/view/View;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/contacts/widget/TransitionAnimationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mClipRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mClipMargins:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mClipMargins:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mClipMargins:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v5, v1, v5

    iget-object v6, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mClipMargins:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v0, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 127
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_2
    :goto_0
    return-void

    .line 123
    .restart local v0       #height:I
    .restart local v1       #width:I
    :cond_3
    iput-object v3, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateBitmap:Landroid/graphics/Bitmap;

    .line 124
    iget-object v2, p0, Lcom/android/contacts/widget/TransitionAnimationView;->mPreviousStateView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
