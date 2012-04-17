.class public Lcom/android/contacts/TabStripView;
.super Landroid/widget/LinearLayout;
.source "TabStripView.java"


# instance fields
.field private mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mBottomRightStrip:Landroid/graphics/drawable/Drawable;

.field private mSelectedTabIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/TabStripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/android/contacts/TabStripView;->init()V

    .line 46
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const v1, 0x7f02021b

    .line 49
    iget v0, p0, Lcom/android/contacts/TabStripView;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/contacts/TabStripView;->mGroupFlags:I

    .line 50
    iget-object v0, p0, Lcom/android/contacts/TabStripView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/TabStripView;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 52
    iget-object v0, p0, Lcom/android/contacts/TabStripView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/TabStripView;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    .line 54
    return-void
.end method


# virtual methods
.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/contacts/TabStripView;->mSelectedTabIndex:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/TabStripView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/contacts/TabStripView;->invalidate()V

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 91
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 97
    iget v3, p0, Lcom/android/contacts/TabStripView;->mSelectedTabIndex:I

    invoke-virtual {p0, v3}, Lcom/android/contacts/TabStripView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, selectedChild:Landroid/view/View;
    iget-object v3, p0, Lcom/android/contacts/TabStripView;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 100
    iget-object v3, p0, Lcom/android/contacts/TabStripView;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 102
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 103
    .local v1, selBounds:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/TabStripView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 104
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/TabStripView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 105
    invoke-virtual {p0}, Lcom/android/contacts/TabStripView;->getHeight()I

    move-result v0

    .line 106
    .local v0, myHeight:I
    iget-object v3, p0, Lcom/android/contacts/TabStripView;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/contacts/TabStripView;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/TabStripView;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    iget-object v3, p0, Lcom/android/contacts/TabStripView;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/contacts/TabStripView;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Lcom/android/contacts/TabStripView;->getWidth()I

    move-result v6

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/contacts/TabStripView;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    iget-object v3, p0, Lcom/android/contacts/TabStripView;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    iget-object v3, p0, Lcom/android/contacts/TabStripView;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 75
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_1

    .line 76
    iget p2, p0, Lcom/android/contacts/TabStripView;->mSelectedTabIndex:I

    .line 80
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 77
    .restart local p2
    :cond_1
    iget v0, p0, Lcom/android/contacts/TabStripView;->mSelectedTabIndex:I

    if-lt p2, v0, :cond_0

    .line 78
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/contacts/TabStripView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 64
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/contacts/TabStripView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/TabStripView;->setMinimumWidth(I)V

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 69
    return-void
.end method
