.class public Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;
.super Ljava/lang/Object;
.source "RecentsScrollViewPerformanceHelper.java"


# instance fields
.field private mAttachedToWindow:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

.field private mCallback:Lcom/android/systemui/recent/RecentsCallback;

.field private mContext:Landroid/content/Context;

.field private mFadingEdgeLength:I

.field private mFirstTime:Z

.field private mIsVertical:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mScrollView:Landroid/view/View;

.field private mShowBackground:Z

.field private mSoftwareRendered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "scrollView"
    .parameter "isVertical"

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mShowBackground:Z

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFirstTime:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    .line 50
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mAttachedToWindow:Z

    .line 65
    iput-object p3, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    .line 66
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mContext:Landroid/content/Context;

    .line 67
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x18

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFadingEdgeLength:I

    .line 70
    iput-boolean p4, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    .line 71
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "scrollView"
    .parameter "isVertical"

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 56
    .local v0, isTablet:Z
    if-nez v0, :cond_0

    .line 57
    new-instance v1, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)V

    .line 59
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addViewCallback(Landroid/view/View;)V
    .locals 2
    .parameter "newLinearLayoutChild"

    .prologue
    .line 93
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v1, :cond_0

    .line 94
    move-object v0, p1

    .line 95
    .local v0, view:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mShowBackground:Z

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 105
    .end local v0           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v0       #view:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_0
.end method

.method public drawCallback(Landroid/graphics/Canvas;IIIIIIFFFF)V
    .locals 24
    .parameter "canvas"
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "bottom"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "topFadingEdgeStrength"
    .parameter "bottomFadingEdgeStrength"
    .parameter "leftFadingEdgeStrength"
    .parameter "rightFadingEdgeStrength"

    .prologue
    .line 121
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v2, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-eqz v2, :cond_b

    .line 123
    if-gez p7, :cond_a

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 125
    .local v12, d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    move/from16 v0, p7

    invoke-virtual {v12, v2, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    .end local v12           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v2, :cond_1

    .line 155
    :cond_1
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 156
    .local v21, p:Landroid/graphics/Paint;
    new-instance v20, Landroid/graphics/Matrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    .line 159
    .local v20, matrix:Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/high16 v6, -0x3400

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 162
    .local v1, fade:Landroid/graphics/Shader;
    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 165
    const/16 v16, 0x0

    .line 166
    .local v16, drawTop:Z
    const/4 v13, 0x0

    .line 167
    .local v13, drawBottom:Z
    const/4 v14, 0x0

    .line 168
    .local v14, drawLeft:Z
    const/4 v15, 0x0

    .line 170
    .local v15, drawRight:Z
    const/16 v23, 0x0

    .line 171
    .local v23, topFadeStrength:F
    const/4 v9, 0x0

    .line 172
    .local v9, bottomFadeStrength:F
    const/16 v18, 0x0

    .line 173
    .local v18, leftFadeStrength:F
    const/16 v22, 0x0

    .line 175
    .local v22, rightFadeStrength:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFadingEdgeLength:I

    int-to-float v0, v2

    move/from16 v17, v0

    .line 176
    .local v17, fadeHeight:F
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    .line 180
    .local v19, length:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-eqz v2, :cond_2

    add-int v2, p4, v19

    sub-int v3, p5, v19

    if-le v2, v3, :cond_2

    .line 181
    sub-int v2, p5, p4

    div-int/lit8 v19, v2, 0x2

    .line 185
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-nez v2, :cond_3

    add-int v2, p2, v19

    sub-int v3, p3, v19

    if-le v2, v3, :cond_3

    .line 186
    sub-int v2, p3, p2

    div-int/lit8 v19, v2, 0x2

    .line 189
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-eqz v2, :cond_4

    .line 190
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    move/from16 v0, p8

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 191
    mul-float v2, v23, v17

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    const/16 v16, 0x1

    .line 192
    :goto_1
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    move/from16 v0, p9

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 193
    mul-float v2, v9, v17

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    const/4 v13, 0x1

    .line 196
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-nez v2, :cond_5

    .line 197
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    move/from16 v0, p10

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 198
    mul-float v2, v18, v17

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f

    const/4 v14, 0x1

    .line 199
    :goto_3
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    move/from16 v0, p11

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 200
    mul-float v2, v22, v17

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_10

    const/4 v15, 0x1

    .line 203
    :cond_5
    :goto_4
    if-eqz v16, :cond_6

    .line 204
    const/high16 v2, 0x3f80

    mul-float v3, v17, v23

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 205
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 206
    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 207
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    add-int v2, p4, v19

    int-to-float v6, v2

    move-object/from16 v2, p1

    move-object/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 210
    :cond_6
    if-eqz v13, :cond_7

    .line 211
    const/high16 v2, 0x3f80

    mul-float v3, v17, v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 212
    const/high16 v2, 0x4334

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 213
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 214
    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 215
    move/from16 v0, p2

    int-to-float v3, v0

    sub-int v2, p5, v19

    int-to-float v4, v2

    move/from16 v0, p3

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    move-object/from16 v2, p1

    move-object/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 218
    :cond_7
    if-eqz v14, :cond_8

    .line 219
    const/high16 v2, 0x3f80

    mul-float v3, v17, v18

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 220
    const/high16 v2, -0x3d4c

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 221
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 222
    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 223
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    add-int v2, p2, v19

    int-to-float v5, v2

    move/from16 v0, p5

    int-to-float v6, v0

    move-object/from16 v2, p1

    move-object/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 226
    :cond_8
    if-eqz v15, :cond_9

    .line 227
    const/high16 v2, 0x3f80

    mul-float v3, v17, v22

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 228
    const/high16 v2, 0x42b4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 229
    move/from16 v0, p3

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 230
    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 231
    sub-int v2, p3, v19

    int-to-float v3, v2

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    move-object/from16 v2, p1

    move-object/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 234
    :cond_9
    return-void

    .line 128
    .end local v1           #fade:Landroid/graphics/Shader;
    .end local v9           #bottomFadeStrength:F
    .end local v13           #drawBottom:Z
    .end local v14           #drawLeft:Z
    .end local v15           #drawRight:Z
    .end local v16           #drawTop:Z
    .end local v17           #fadeHeight:F
    .end local v18           #leftFadeStrength:F
    .end local v19           #length:I
    .end local v20           #matrix:Landroid/graphics/Matrix;
    .end local v21           #p:Landroid/graphics/Paint;
    .end local v22           #rightFadeStrength:F
    .end local v23           #topFadeStrength:F
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v10

    .line 129
    .local v10, childHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v2, v2, p7

    if-le v2, v10, :cond_0

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 131
    .restart local v12       #d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int v4, v4, p7

    invoke-virtual {v12, v2, v10, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 133
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 137
    .end local v10           #childHeight:I
    .end local v12           #d:Landroid/graphics/drawable/Drawable;
    :cond_b
    if-gez p6, :cond_c

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 139
    .restart local v12       #d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    move/from16 v0, p6

    invoke-virtual {v12, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 142
    .end local v12           #d:Landroid/graphics/drawable/Drawable;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v11

    .line 143
    .local v11, childWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int v2, v2, p6

    if-le v2, v11, :cond_0

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 145
    .restart local v12       #d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int v3, v3, p6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v12, v11, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 147
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 191
    .end local v11           #childWidth:I
    .end local v12           #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #fade:Landroid/graphics/Shader;
    .restart local v9       #bottomFadeStrength:F
    .restart local v13       #drawBottom:Z
    .restart local v14       #drawLeft:Z
    .restart local v15       #drawRight:Z
    .restart local v16       #drawTop:Z
    .restart local v17       #fadeHeight:F
    .restart local v18       #leftFadeStrength:F
    .restart local v19       #length:I
    .restart local v20       #matrix:Landroid/graphics/Matrix;
    .restart local v21       #p:Landroid/graphics/Paint;
    .restart local v22       #rightFadeStrength:F
    .restart local v23       #topFadeStrength:F
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 193
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 198
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 200
    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_4
.end method

.method public getHorizontalFadingEdgeLengthCallback()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFadingEdgeLength:I

    return v0
.end method

.method public getVerticalFadingEdgeLengthCallback()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFadingEdgeLength:I

    return v0
.end method

.method public onAttachedToWindowCallback(Lcom/android/systemui/recent/RecentsCallback;Landroid/widget/LinearLayout;Z)V
    .locals 3
    .parameter "callback"
    .parameter "layout"
    .parameter "hardwareAccelerated"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    if-nez p3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    .line 76
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v0, :cond_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v0, :cond_1

    .line 82
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    .line 83
    iput-object p2, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 84
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mAttachedToWindow:Z

    .line 85
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->updateShowBackground()V

    .line 90
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 75
    goto :goto_0
.end method

.method public onLayoutCallback()V
    .locals 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper$1;-><init>(Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 115
    :cond_0
    return-void
.end method

.method public setLayoutTransitionCallback(Landroid/animation/LayoutTransition;)V
    .locals 1
    .parameter "transition"

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v0, :cond_0

    .line 246
    if-eqz p1, :cond_0

    .line 247
    new-instance v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper$2;-><init>(Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 262
    :cond_0
    return-void
.end method

.method public updateShowBackground()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 269
    iget-boolean v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mAttachedToWindow:Z

    if-nez v8, :cond_1

    .line 303
    :cond_0
    return-void

    .line 273
    :cond_1
    iget-boolean v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v8, :cond_0

    .line 274
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    .line 275
    .local v4, transition:Landroid/animation/LayoutTransition;
    iget-boolean v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 277
    .local v1, linearLayoutSize:I
    :goto_0
    iget-boolean v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 280
    .local v2, scrollViewSize:I
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v8

    if-eqz v8, :cond_6

    if-le v1, v2, :cond_6

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v8

    if-nez v8, :cond_6

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v8}, Lcom/android/systemui/recent/RecentsCallback;->isRecentsVisible()Z

    move-result v8

    if-eqz v8, :cond_6

    move v3, v6

    .line 285
    .local v3, show:Z
    :goto_2
    iget-boolean v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFirstTime:Z

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mShowBackground:Z

    if-eq v3, v8, :cond_0

    .line 286
    :cond_3
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mShowBackground:Z

    .line 287
    iput-boolean v7, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFirstTime:Z

    .line 289
    iget-object v9, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    if-nez v3, :cond_7

    move v8, v6

    :goto_3
    invoke-interface {v9, v8}, Lcom/android/systemui/recent/RecentsCallback;->handleShowBackground(Z)V

    .line 290
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 291
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 292
    .local v5, v:Landroid/view/View;
    if-eqz v3, :cond_8

    .line 293
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    invoke-virtual {v5, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 295
    invoke-virtual {v5}, Landroid/view/View;->buildDrawingCache()V

    .line 290
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 275
    .end local v0           #i:I
    .end local v1           #linearLayoutSize:I
    .end local v2           #scrollViewSize:I
    .end local v3           #show:Z
    .end local v5           #v:Landroid/view/View;
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    goto :goto_0

    .line 277
    .restart local v1       #linearLayoutSize:I
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_1

    .restart local v2       #scrollViewSize:I
    :cond_6
    move v3, v7

    .line 280
    goto :goto_2

    .restart local v3       #show:Z
    :cond_7
    move v8, v7

    .line 289
    goto :goto_3

    .line 297
    .restart local v0       #i:I
    .restart local v5       #v:Landroid/view/View;
    :cond_8
    invoke-virtual {v5, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 298
    invoke-virtual {v5}, Landroid/view/View;->destroyDrawingCache()V

    .line 299
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5
.end method
