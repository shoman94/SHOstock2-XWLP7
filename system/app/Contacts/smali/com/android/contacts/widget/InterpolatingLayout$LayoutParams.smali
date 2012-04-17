.class public final Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "InterpolatingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/widget/InterpolatingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutParams"
.end annotation


# instance fields
.field private leftMarginConstant:I

.field private leftMarginMultiplier:F

.field private leftPaddingConstant:I

.field private leftPaddingMultiplier:F

.field public narrowMarginLeft:I

.field public narrowMarginRight:I

.field public narrowPaddingLeft:I

.field public narrowPaddingRight:I

.field public narrowParentWidth:I

.field public narrowWidth:I

.field private rightMarginConstant:I

.field private rightMarginMultiplier:F

.field private rightPaddingConstant:I

.field private rightPaddingMultiplier:F

.field public wideMarginLeft:I

.field public wideMarginRight:I

.field public widePaddingLeft:I

.field public widePaddingRight:I

.field public wideParentWidth:I

.field public wideWidth:I

.field private widthConstant:I

.field private widthMultiplier:F


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    sget-object v1, Lcom/android/contacts/R$styleable;->InterpolatingLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowWidth:I

    .line 89
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginLeft:I

    .line 91
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingLeft:I

    .line 93
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginRight:I

    .line 95
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingRight:I

    .line 97
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideParentWidth:I

    .line 99
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideWidth:I

    .line 101
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideMarginLeft:I

    .line 103
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widePaddingLeft:I

    .line 105
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideMarginRight:I

    .line 107
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widePaddingRight:I

    .line 110
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowWidth:I

    if-eq v1, v4, :cond_0

    .line 113
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideWidth:I

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideParentWidth:I

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widthMultiplier:F

    .line 115
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widthMultiplier:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widthConstant:I

    .line 118
    :cond_0
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginLeft:I

    if-eq v1, v4, :cond_1

    .line 119
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideMarginLeft:I

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideParentWidth:I

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftMarginMultiplier:F

    .line 121
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftMarginMultiplier:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftMarginConstant:I

    .line 125
    :cond_1
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingLeft:I

    if-eq v1, v4, :cond_2

    .line 126
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widePaddingLeft:I

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideParentWidth:I

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftPaddingMultiplier:F

    .line 128
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftPaddingMultiplier:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftPaddingConstant:I

    .line 132
    :cond_2
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginRight:I

    if-eq v1, v4, :cond_3

    .line 133
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideMarginRight:I

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideParentWidth:I

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightMarginMultiplier:F

    .line 135
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginRight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightMarginMultiplier:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightMarginConstant:I

    .line 139
    :cond_3
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingRight:I

    if-eq v1, v4, :cond_4

    .line 140
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widePaddingRight:I

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideParentWidth:I

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightPaddingMultiplier:F

    .line 142
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingRight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightPaddingMultiplier:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightPaddingConstant:I

    .line 145
    :cond_4
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 153
    return-void
.end method


# virtual methods
.method public resolveLeftMargin(I)I
    .locals 3
    .parameter "parentSize"

    .prologue
    .line 165
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginLeft:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 166
    iget v0, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftMargin:I

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftMarginMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftMarginConstant:I

    add-int v0, v1, v2

    .line 169
    .local v0, w:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolveLeftPadding(I)I
    .locals 3
    .parameter "parentSize"

    .prologue
    .line 174
    int-to-float v1, p1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftPaddingMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftPaddingConstant:I

    add-int v0, v1, v2

    .line 175
    .local v0, w:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #w:I
    :cond_0
    return v0
.end method

.method public resolveRightMargin(I)I
    .locals 3
    .parameter "parentSize"

    .prologue
    .line 179
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginRight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 180
    iget v0, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightMargin:I

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightMarginMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightMarginConstant:I

    add-int v0, v1, v2

    .line 183
    .local v0, w:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolveRightPadding(I)I
    .locals 3
    .parameter "parentSize"

    .prologue
    .line 188
    int-to-float v1, p1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightPaddingMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightPaddingConstant:I

    add-int v0, v1, v2

    .line 189
    .local v0, w:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #w:I
    :cond_0
    return v0
.end method

.method public resolveWidth(I)I
    .locals 3
    .parameter "parentSize"

    .prologue
    .line 156
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 157
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 159
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widthMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widthConstant:I

    add-int v0, v1, v2

    .line 160
    .local v0, w:I
    if-gtz v0, :cond_0

    const/4 v0, -0x2

    goto :goto_0
.end method
