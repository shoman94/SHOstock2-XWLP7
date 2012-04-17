.class public Lcom/android/email/activity/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# static fields
.field private static COLOR_COLUMN_NUM:I

.field private static COLOR_ROW_NUM:I

.field private static COLOR_TILE_HEIGHT_SIZE:I

.field private static COLOR_TILE_WIDTH_SIZE:I

.field private static INTERVAL_BETWEEN_TILE:I

.field private static THICKNESS_OF_PEN_FOCUS:I


# instance fields
.field private COLORS:[I

.field private COLOR_HEIGHT:I

.field private COLOR_PICKER_HEIGHT:I

.field private COLOR_PICKER_WIDTH:I

.field private COLOR_SELECTED_IDX:I

.field private COLOR_WIDTH:I

.field private colored:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field public mCurColrIndx:I

.field private mSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private rainbow:Landroid/graphics/Bitmap;

.field public selectedColor:I

.field private setting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x35

    .line 32
    const/4 v0, 0x7

    sput v0, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    .line 33
    const/4 v0, 0x2

    sput v0, Lcom/android/email/activity/ColorPickerView;->COLOR_ROW_NUM:I

    .line 35
    sput v1, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    .line 36
    sput v1, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_HEIGHT_SIZE:I

    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    .line 39
    const/4 v0, 0x4

    sput v0, Lcom/android/email/activity/ColorPickerView;->INTERVAL_BETWEEN_TILE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x77

    const/16 v6, 0x2e

    const/16 v5, 0xff

    const/4 v4, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/16 v0, 0xe

    new-array v0, v0, [I

    invoke-static {v5, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v4

    const/16 v1, 0x6c

    invoke-static {v5, v1, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    const/4 v1, 0x2

    const/16 v2, 0xef

    invoke-static {v5, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x21

    const/16 v3, 0xb1

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x15

    const/16 v3, 0x6c

    invoke-static {v2, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x38

    const/16 v3, 0xa8

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x44

    const/16 v3, 0xb5

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x49

    const/16 v3, 0xc9

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x4b

    const/16 v3, 0x82

    invoke-static {v2, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    .line 45
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_SELECTED_IDX:I

    .line 52
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    .line 53
    iput-boolean v4, p0, Lcom/android/email/activity/ColorPickerView;->setting:Z

    .line 55
    iput v4, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x77

    const/16 v6, 0x2e

    const/16 v5, 0xff

    const/4 v4, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/16 v0, 0xe

    new-array v0, v0, [I

    invoke-static {v5, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v4

    const/16 v1, 0x6c

    invoke-static {v5, v1, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    const/4 v1, 0x2

    const/16 v2, 0xef

    invoke-static {v5, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x21

    const/16 v3, 0xb1

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x15

    const/16 v3, 0x6c

    invoke-static {v2, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x38

    const/16 v3, 0xa8

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x44

    const/16 v3, 0xb5

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x49

    const/16 v3, 0xc9

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x4b

    const/16 v3, 0x82

    invoke-static {v2, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    .line 45
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_SELECTED_IDX:I

    .line 52
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    .line 53
    iput-boolean v4, p0, Lcom/android/email/activity/ColorPickerView;->setting:Z

    .line 55
    iput v4, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    .line 64
    iput-object p1, p0, Lcom/android/email/activity/ColorPickerView;->context:Landroid/content/Context;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x77

    const/16 v6, 0x2e

    const/16 v5, 0xff

    const/4 v4, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/16 v0, 0xe

    new-array v0, v0, [I

    invoke-static {v5, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v4

    const/16 v1, 0x6c

    invoke-static {v5, v1, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v8

    const/4 v1, 0x2

    const/16 v2, 0xef

    invoke-static {v5, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x21

    const/16 v3, 0xb1

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x15

    const/16 v3, 0x6c

    invoke-static {v2, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x38

    const/16 v3, 0xa8

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x44

    const/16 v3, 0xb5

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x49

    const/16 v3, 0xc9

    invoke-static {v5, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x4b

    const/16 v3, 0x82

    invoke-static {v2, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    .line 45
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_SELECTED_IDX:I

    .line 52
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    .line 53
    iput-boolean v4, p0, Lcom/android/email/activity/ColorPickerView;->setting:Z

    .line 55
    iput v4, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    .line 69
    return-void
.end method

.method private changeColor(FF)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/email/activity/ColorPickerView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_PICKER_WIDTH:I

    sub-int/2addr v8, v9

    div-int/lit8 v4, v8, 0x2

    .line 141
    .local v4, pl_x:I
    invoke-virtual {p0}, Lcom/android/email/activity/ColorPickerView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_PICKER_HEIGHT:I

    sub-int/2addr v8, v9

    div-int/lit8 v5, v8, 0x2

    .line 143
    .local v5, pl_y:I
    const/4 v6, 0x0

    .line 144
    .local v6, x_idx:I
    const/4 v7, 0x0

    .line 145
    .local v7, y_idx:I
    iget v8, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_WIDTH:I

    add-int/2addr v8, v4

    sget v9, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    add-int v0, v8, v9

    .line 146
    .local v0, cur_x:I
    iget v8, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_HEIGHT:I

    add-int/2addr v8, v5

    sget v9, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    add-int v1, v8, v9

    .line 148
    .local v1, cur_y:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    sget v8, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    add-int/lit8 v8, v8, 0x1

    if-ge v2, v8, :cond_0

    .line 149
    add-int/lit8 v6, v2, -0x1

    .line 150
    int-to-float v8, v0

    cmpl-float v8, v8, p1

    if-lez v8, :cond_4

    .line 156
    :cond_0
    const/4 v3, 0x1

    .local v3, j:I
    :goto_1
    sget v8, Lcom/android/email/activity/ColorPickerView;->COLOR_ROW_NUM:I

    add-int/lit8 v8, v8, 0x1

    if-ge v3, v8, :cond_1

    .line 157
    add-int/lit8 v7, v3, -0x1

    .line 158
    int-to-float v8, v1

    cmpl-float v8, v8, p2

    if-lez v8, :cond_5

    .line 164
    :cond_1
    sget v8, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    mul-int/2addr v8, v7

    add-int/2addr v8, v6

    iput v8, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    .line 165
    invoke-virtual {p0}, Lcom/android/email/activity/ColorPickerView;->invalidate()V

    .line 167
    iget-boolean v8, p0, Lcom/android/email/activity/ColorPickerView;->setting:Z

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    iget v8, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    iget v9, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_SELECTED_IDX:I

    if-eq v8, v9, :cond_3

    .line 168
    :cond_2
    iget-object v8, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    iget v9, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    aget v8, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ColorPickerView;->setSelectorColor(I)V

    .line 169
    :cond_3
    return-void

    .line 153
    .end local v3           #j:I
    :cond_4
    iget v8, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_WIDTH:I

    sget v9, Lcom/android/email/activity/ColorPickerView;->INTERVAL_BETWEEN_TILE:I

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .restart local v3       #j:I
    :cond_5
    iget v8, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_HEIGHT:I

    sget v9, Lcom/android/email/activity/ColorPickerView;->INTERVAL_BETWEEN_TILE:I

    add-int/2addr v8, v9

    add-int/2addr v1, v8

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private drawColors(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 215
    sget v3, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    .line 216
    .local v3, cur_y:I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 217
    .local v7, r:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 219
    .local v8, select_rect:Landroid/graphics/Rect;
    sget v2, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    .line 220
    .local v2, cur_x:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    sget v9, Lcom/android/email/activity/ColorPickerView;->COLOR_ROW_NUM:I

    if-ge v5, v9, :cond_4

    .line 221
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    sget v9, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    if-ge v4, v9, :cond_3

    .line 222
    iget v9, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_WIDTH:I

    add-int/2addr v9, v2

    iget v10, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_HEIGHT:I

    add-int/2addr v10, v3

    invoke-virtual {v7, v2, v3, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 224
    sget v9, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    add-int/lit8 v9, v9, -0x1

    if-ne v4, v9, :cond_2

    sget v9, Lcom/android/email/activity/ColorPickerView;->COLOR_ROW_NUM:I

    add-int/lit8 v9, v9, -0x1

    if-ne v5, v9, :cond_2

    iget-boolean v9, p0, Lcom/android/email/activity/ColorPickerView;->setting:Z

    if-nez v9, :cond_2

    .line 226
    iget v9, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    if-nez v9, :cond_1

    .line 227
    iget-object v9, p0, Lcom/android/email/activity/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    iget v10, v7, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget v11, v7, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 253
    :goto_2
    sget v9, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    mul-int/2addr v9, v5

    add-int/2addr v9, v4

    iget v10, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    if-ne v9, v10, :cond_0

    .line 254
    const-string v9, "song"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 257
    :cond_0
    iget v9, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_WIDTH:I

    sget v10, Lcom/android/email/activity/ColorPickerView;->INTERVAL_BETWEEN_TILE:I

    add-int/2addr v9, v10

    add-int/2addr v2, v9

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 229
    :cond_1
    sget v9, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    sget v10, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    .local v0, bitmapColor:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    .local v1, c:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 236
    .local v6, p:Landroid/graphics/Paint;
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 237
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 238
    iget v9, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v12, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    sget v13, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v9, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 243
    iget v9, v7, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {p1, v0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 246
    .end local v0           #bitmapColor:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v6           #p:Landroid/graphics/Paint;
    :cond_2
    iget-object v9, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    sget v10, Lcom/android/email/activity/ColorPickerView;->COLOR_COLUMN_NUM:I

    mul-int/2addr v10, v5

    add-int/2addr v10, v4

    aget v9, v9, v10

    invoke-direct {p0, v9}, Lcom/android/email/activity/ColorPickerView;->setShadowColor(I)V

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 248
    iget v9, v7, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 249
    iget-object v9, p0, Lcom/android/email/activity/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2

    .line 259
    :cond_3
    sget v2, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    .line 260
    iget v9, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_HEIGHT:I

    sget v10, Lcom/android/email/activity/ColorPickerView;->INTERVAL_BETWEEN_TILE:I

    add-int/2addr v9, v10

    add-int/2addr v3, v9

    .line 220
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 263
    .end local v4           #i:I
    :cond_4
    iget v9, v8, Landroid/graphics/Rect;->left:I

    sget v10, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 264
    iget v9, v8, Landroid/graphics/Rect;->right:I

    sget v10, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 265
    iget v9, v8, Landroid/graphics/Rect;->top:I

    sget v10, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 266
    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    sget v10, Lcom/android/email/activity/ColorPickerView;->THICKNESS_OF_PEN_FOCUS:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 268
    iget-object v9, p0, Lcom/android/email/activity/ColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 269
    iget-object v9, p0, Lcom/android/email/activity/ColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 270
    return-void
.end method

.method private setShadowColor(I)V
    .locals 6
    .parameter "color"

    .prologue
    const/4 v5, 0x0

    .line 172
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 173
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 174
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 175
    .local v1, p:Landroid/graphics/Paint;
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    new-instance v2, Landroid/graphics/Rect;

    sget v3, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    sget v4, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_HEIGHT_SIZE:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 179
    return-void
.end method

.method private setmCurColrIndxAsColor(I)V
    .locals 4
    .parameter "color"

    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    array-length v0, v2

    .line 191
    .local v0, colortablesize:I
    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-ne v2, p1, :cond_1

    .line 192
    iget v2, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_2

    .line 198
    iput v1, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    goto :goto_0

    .line 196
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public GetCurColorIdx()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    return v0
.end method

.method public SetCurColorIdx(I)V
    .locals 0
    .parameter "_idx"

    .prologue
    .line 299
    iput p1, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    .line 300
    return-void
.end method

.method public SetSelectedColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 285
    iput p1, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    .line 286
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_SELECTED_IDX:I

    aput p1, v0, v1

    .line 287
    invoke-direct {p0, p1}, Lcom/android/email/activity/ColorPickerView;->setmCurColrIndxAsColor(I)V

    .line 288
    return-void
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 341
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getSelectorColor()I
    .locals 3

    .prologue
    .line 205
    iget v0, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_SELECTED_IDX:I

    iget v2, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    aput v2, v0, v1

    .line 207
    iget v0, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initColorPicker(II)V
    .locals 12
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x6

    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/android/email/activity/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 96
    .local v10, resources:Landroid/content/res/Resources;
    iput p1, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_PICKER_WIDTH:I

    .line 97
    iput p2, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_PICKER_HEIGHT:I

    .line 106
    sget v2, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_WIDTH:I

    .line 107
    sget v2, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_HEIGHT_SIZE:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_HEIGHT:I

    .line 109
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/email/activity/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020141

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/ColorPickerView;->mSelectDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    :cond_0
    new-array v5, v4, [I

    fill-array-data v5, :array_0

    .line 116
    .local v5, colors:[I
    new-array v6, v4, [F

    fill-array-data v6, :array_1

    .line 120
    .local v6, positions:[F
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 121
    sget v2, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    sget v3, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_HEIGHT_SIZE:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    .line 123
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->rainbow:Landroid/graphics/Bitmap;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    .local v8, c:Landroid/graphics/Canvas;
    new-instance v0, Landroid/graphics/LinearGradient;

    sget v2, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    int-to-float v3, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 126
    .local v0, g:Landroid/graphics/LinearGradient;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 127
    .local v9, p:Landroid/graphics/Paint;
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 128
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 130
    new-instance v1, Landroid/graphics/Rect;

    sget v2, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    sget v3, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_HEIGHT_SIZE:I

    invoke-direct {v1, v11, v11, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 134
    .end local v0           #g:Landroid/graphics/LinearGradient;
    .end local v8           #c:Landroid/graphics/Canvas;
    .end local v9           #p:Landroid/graphics/Paint;
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 135
    sget v1, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_WIDTH_SIZE:I

    sget v2, Lcom/android/email/activity/ColorPickerView;->COLOR_TILE_HEIGHT_SIZE:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/ColorPickerView;->colored:Landroid/graphics/Bitmap;

    .line 137
    :cond_2
    return-void

    .line 113
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0x0t 0xfft 0xfft
    .end array-data

    .line 116
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0xcct 0x3et
        0x9at 0x99t 0x19t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 315
    invoke-direct {p0, p1}, Lcom/android/email/activity/ColorPickerView;->drawColors(Landroid/graphics/Canvas;)V

    .line 316
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 304
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 306
    if-eqz p1, :cond_0

    .line 307
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/ColorPickerView;->initColorPicker(II)V

    .line 309
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 321
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 323
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 331
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 328
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ColorPickerView;->changeColor(FF)V

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 4
    .parameter "color"

    .prologue
    .line 273
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    array-length v1, v2

    .line 274
    .local v1, nSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 275
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 276
    iget v2, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    iget v3, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_SELECTED_IDX:I

    if-eq v2, v3, :cond_0

    .line 277
    iput v0, p0, Lcom/android/email/activity/ColorPickerView;->mCurColrIndx:I

    .line 278
    :cond_0
    iput p1, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    .line 282
    :cond_1
    return-void

    .line 274
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSelectorColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/ColorPickerView;->setting:Z

    .line 183
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerView;->COLORS:[I

    iget v1, p0, Lcom/android/email/activity/ColorPickerView;->COLOR_SELECTED_IDX:I

    aput p1, v0, v1

    .line 184
    iput p1, p0, Lcom/android/email/activity/ColorPickerView;->selectedColor:I

    .line 185
    invoke-direct {p0, p1}, Lcom/android/email/activity/ColorPickerView;->setmCurColrIndxAsColor(I)V

    .line 186
    invoke-virtual {p0}, Lcom/android/email/activity/ColorPickerView;->invalidate()V

    .line 187
    return-void
.end method
