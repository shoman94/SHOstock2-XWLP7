.class public Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
.super Landroid/widget/EditText;
.source "EllipsisTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

.field private mEllipsized:Z

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mScaleTextSize:F

.field private mScaledDensity:F

.field private mScaledWidth:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    .line 46
    const/high16 v0, 0x4236

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    .line 51
    const/high16 v0, 0x41c0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    .line 56
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    .line 61
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    .line 66
    const/high16 v0, 0x43f0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    .line 75
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setInputType(I)V

    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->initWidget()V

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mWidth:F

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    .line 46
    const/high16 v0, 0x4236

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    .line 51
    const/high16 v0, 0x41c0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    .line 56
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    .line 61
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    .line 66
    const/high16 v0, 0x43f0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    .line 75
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setInputType(I)V

    .line 105
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->initWidget()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    .line 46
    const/high16 v0, 0x4236

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    .line 51
    const/high16 v0, 0x41c0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    .line 56
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    .line 61
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    .line 66
    const/high16 v0, 0x43f0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    .line 75
    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setInputType(I)V

    .line 117
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->initWidget()V

    .line 118
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    return p1
.end method

.method private initWidget()V
    .locals 0

    .prologue
    .line 173
    invoke-virtual {p0, p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 174
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 254
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 264
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 125
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 128
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v8, 0x0

    .line 273
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 275
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mWidth:F

    .line 277
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mWidth:F

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    sub-float v2, v0, v3

    .line 278
    .local v2, textWidth:F
    const/4 v6, 0x0

    .line 279
    .local v6, measureWidth:F
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getTextSize()F

    move-result v0

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    div-float v7, v0, v3

    .line 280
    .local v7, textSize:F
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 282
    .local v1, textPaint:Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    .line 284
    if-ge p3, p4, :cond_2

    .line 286
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    sub-float v0, v7, v0

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 289
    :cond_0
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    sub-float/2addr v7, v0

    .line 290
    invoke-virtual {p0, v7}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setTextSize(F)V

    .line 291
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v8, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 292
    cmpl-float v0, v6, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    sub-float v0, v7, v0

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMinTextSize:F

    cmpl-float v0, v0, v3

    if-gez v0, :cond_0

    .line 311
    :cond_1
    :goto_0
    return-void

    .line 296
    :cond_2
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    add-float/2addr v0, v7

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    .line 299
    :cond_3
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    add-float/2addr v7, v0

    .line 300
    invoke-virtual {p0, v7}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setTextSize(F)V

    .line 301
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v8, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 302
    cmpl-float v0, v6, v2

    if-lez v0, :cond_4

    .line 303
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    sub-float/2addr v7, v0

    .line 304
    invoke-virtual {p0, v7}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setTextSize(F)V

    .line 305
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v8, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 306
    goto :goto_0

    .line 308
    :cond_4
    cmpg-float v0, v6, v2

    if-gez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaleTextSize:F

    add-float/2addr v0, v7

    iget v3, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mMaxTextSize:F

    cmpg-float v0, v0, v3

    if-lez v0, :cond_3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 134
    .local v1, ret:Z
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 136
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 139
    :cond_0
    return v1
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 144
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    .line 147
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v0

    .line 148
    .local v0, added:I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v2

    .line 149
    .local v2, removed:I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 150
    .local v1, length:I
    if-le v0, v2, :cond_2

    .line 151
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 152
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 153
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 166
    .end local v0           #added:I
    .end local v1           #length:I
    .end local v2           #removed:I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 167
    :cond_1
    :goto_1
    return-void

    .line 154
    .restart local v0       #added:I
    .restart local v1       #length:I
    .restart local v2       #removed:I
    :cond_2
    if-le v2, v0, :cond_1

    .line 155
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 156
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 157
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    goto :goto_0

    .line 161
    .end local v0           #added:I
    .end local v1           #length:I
    .end local v2           #removed:I
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1
.end method

.method public setScaledDensity(F)V
    .locals 0
    .parameter "scaledDensity"

    .prologue
    .line 195
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledDensity:F

    .line 196
    return-void
.end method

.method public setScaledWidth(F)V
    .locals 0
    .parameter "scaleWidth"

    .prologue
    .line 244
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mScaledWidth:F

    .line 245
    return-void
.end method
