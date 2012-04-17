.class public Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;
.super Ljava/lang/Object;
.source "ContactListSweepActionHandler.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;


# instance fields
.field private mCallBackground:Landroid/graphics/drawable/Drawable;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mCallText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHasPhoneNumber:Z

.field private mLastDrawRectHeight:I

.field private mLastDrawRectWidth:I

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mMessageBackground:Landroid/graphics/drawable/Drawable;

.field private mMessageIcon:Landroid/graphics/drawable/Drawable;

.field private mMessageText:Ljava/lang/String;

.field private mNoNumberText:Ljava/lang/String;

.field private mSweepAactionBbarRightPadding:I

.field private mSweepActionBarLeftPadding:I

.field private mSweepActionBarTextSize:I

.field private mSweepActionBarTopPadding:I

.field private mVisibleScrollBarPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 2
    .parameter "context"
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    .line 48
    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectHeight:I

    .line 49
    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectWidth:I

    .line 66
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020215

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020216

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mVisibleScrollBarPadding:I

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTopPadding:I

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarLeftPadding:I

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTextSize:I

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0a02af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallText:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0a02ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageText:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0216

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    .line 87
    return-void
.end method

.method private drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 9
    .parameter "canvas"
    .parameter "sweepText"
    .parameter "drawProgress"
    .parameter "xPosition"
    .parameter "yPosition"

    .prologue
    .line 257
    const/high16 v5, 0x3fa0

    const v6, 0x3e4ccccd

    sub-float v6, p3, v6

    mul-float v0, v5, v6

    .line 259
    .local v0, opacity:F
    float-to-double v5, v0

    const-wide v7, 0x3fa999999999999aL

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 263
    :cond_0
    const/high16 v5, 0x437f

    mul-float/2addr v5, v0

    float-to-int v3, v5

    .line 264
    .local v3, textColor:I
    const/high16 v5, 0x437f

    mul-float/2addr v5, v0

    float-to-int v2, v5

    .line 266
    .local v2, shadowColor:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 267
    .local v1, saveCount:I
    new-instance v4, Landroid/graphics/Paint;

    const/16 v5, 0x101

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 268
    .local v4, textPaint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 269
    iget v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 270
    shl-int/lit8 v5, v3, 0x18

    const v6, 0xffffff

    add-int v3, v5, v6

    .line 271
    shl-int/lit8 v5, v2, 0x18

    add-int/lit8 v2, v5, 0x0

    .line 272
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    const/high16 v5, 0x4040

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 275
    invoke-virtual {p1, p2, p4, p5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 276
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 277
    return-void
.end method

.method private setupDrawablesBounds(I)V
    .locals 5
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, v4, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 288
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, v4, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 295
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 296
    .local v0, tempDrawableRect:Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 297
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 298
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 299
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 300
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarLeftPadding:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 306
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 307
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 308
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 309
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 310
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 313
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 314
    return-void
.end method


# virtual methods
.method public getHasPhoneNumber()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    return v0
.end method

.method public onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .locals 6
    .parameter "itemIndex"

    .prologue
    const/4 v3, 0x0

    .line 91
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-direct {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;-><init>()V

    .line 94
    .local v2, sweepActionBarInfo:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, listItem:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 99
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, listItemWithoutHeaderAndBottomDivider:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    .line 115
    .end local v1           #listItemWithoutHeaderAndBottomDivider:Landroid/view/View;
    .end local v2           #sweepActionBarInfo:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :goto_0
    return-object v2

    .restart local v2       #sweepActionBarInfo:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :cond_0
    move-object v2, v3

    .line 104
    goto :goto_0

    .restart local v1       #listItemWithoutHeaderAndBottomDivider:Landroid/view/View;
    :cond_1
    move-object v2, v3

    .line 112
    goto :goto_0
.end method

.method public onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "context"
    .parameter "itemIndex"
    .parameter "sweepProgress"
    .parameter "sweepState"
    .parameter "rect"
    .parameter "canvas"

    .prologue
    .line 121
    const-string v1, "ContactListSweepActionHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrawSweepActionBar() / itemIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sweepProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sweepState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-eqz p4, :cond_0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_4

    :cond_0
    const/4 v8, 0x1

    .line 126
    .local v8, isTouching:Z
    :goto_0
    const/4 v1, 0x1

    if-ne p4, v1, :cond_5

    const/4 v7, 0x1

    .line 128
    .local v7, isDragging:Z
    :goto_1
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectHeight:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectWidth:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 129
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setupDrawablesBounds(I)V

    .line 130
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectHeight:I

    .line 131
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectWidth:I

    .line 137
    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_7

    .line 138
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->onListShouldDrawSelector(IFI)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 247
    :cond_3
    :goto_2
    return-void

    .line 124
    .end local v7           #isDragging:Z
    .end local v8           #isTouching:Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 126
    .restart local v8       #isTouching:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 142
    .restart local v7       #isDragging:Z
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 146
    if-eqz v8, :cond_3

    .line 147
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 148
    .local v10, saveCount:I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 155
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 159
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    .line 167
    .end local v10           #saveCount:I
    :cond_7
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_b

    .line 168
    move v4, p3

    .line 171
    .local v4, drawProgress:F
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 172
    .restart local v10       #saveCount:I
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x434c

    const v3, 0x424bffff

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 174
    neg-float v1, v4

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 178
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 181
    if-eqz v7, :cond_9

    .line 182
    const/high16 v1, 0x3f80

    const/high16 v2, 0x40a0

    mul-float/2addr v2, v4

    sub-float v9, v1, v2

    .line 183
    .local v9, opacity:F
    float-to-double v1, v9

    const-wide v5, 0x3fa999999999999aL

    cmpg-double v1, v1, v5

    if-gez v1, :cond_8

    .line 184
    const/4 v9, 0x0

    .line 186
    :cond_8
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 187
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f

    mul-float/2addr v2, v9

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 193
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 197
    .end local v9           #opacity:F
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 201
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageText:Ljava/lang/String;

    :goto_3
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_2

    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_3

    .line 207
    .end local v4           #drawProgress:F
    .end local v10           #saveCount:I
    :cond_b
    const/high16 v1, -0x4080

    mul-float v4, v1, p3

    .line 210
    .restart local v4       #drawProgress:F
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 211
    .restart local v10       #saveCount:I
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x434c

    const v3, 0x424bffff

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 217
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 220
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 221
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 226
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 229
    if-eqz v7, :cond_d

    .line 230
    const/high16 v1, 0x3f80

    const/high16 v2, 0x40a0

    mul-float/2addr v2, v4

    sub-float v9, v1, v2

    .line 231
    .restart local v9       #opacity:F
    float-to-double v1, v9

    const-wide v5, 0x3fa999999999999aL

    cmpg-double v1, v1, v5

    if-gez v1, :cond_c

    .line 232
    const/4 v9, 0x0

    .line 234
    :cond_c
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 235
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f

    mul-float/2addr v2, v9

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 237
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 241
    .end local v9           #opacity:F
    :cond_d
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v1, :cond_e

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallText:Ljava/lang/String;

    :goto_4
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_2

    :cond_e
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_4
.end method

.method public onListShouldDrawSelector(IFI)Z
    .locals 1
    .parameter "itemIndex"
    .parameter "sweepProgress"
    .parameter "sweepState"

    .prologue
    .line 251
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHasPhoneNumber(Z)V
    .locals 0
    .parameter "hasPhoneNumber"

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    .line 318
    return-void
.end method
