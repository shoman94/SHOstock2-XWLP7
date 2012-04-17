.class public Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLDialogPopup.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BUTTON_FONT_COLOR:I = 0x0

.field private static final BUTTON_FONT_SIZE:I = 0x18

.field private static final BUTTON_HEIGHT:I = 0x4a

.field private static final BUTTON_PADDING_X:I = 0x16

.field private static final BUTTON_PADDING_Y:I = 0xd

.field private static final BUTTON_WIDTH:I = 0x10e

.field private static final FLOAT_25:F = 25.0f

.field private static final MENU_PORTRAIT_POS_X:F = 10.0f

.field private static final MESSAGE_AREA_HEIGHT:I = 0x190

.field private static final MESSAGE_AREA_POS_X:I = 0x1e

.field private static final MESSAGE_AREA_POS_Y:I = 0xa

#the value of this static final field might be set in the static constructor
.field private static final MESSAGE_FONT_COLOR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MESSAGE_FONT_HIGHLIGHT_COLOR:I = 0x0

.field private static final MESSAGE_FONT_SIZE:I = 0x1b

.field private static final NAGATIVE_BUTTON:I = 0x1

.field private static final POSITIVE_BUTTON:I = 0x0

.field private static final SCREEN_HEIGHT:I = 0x1e0

.field private static final SCREEN_WIDTH:I = 0x320


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mButtonArea:Lcom/sec/android/glview/TwGLViewGroup;

.field private mButtonAreaHeight:F

.field private mButtonAreaWidth:F

.field private mButtonGapOfHeight:F

.field private mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMenuHeight:F

.field private mMenuWidth:F

.field private mMenuX:F

.field private mMenuY:F

.field private mMessage:Lcom/sec/android/glview/TwGLText;

.field private mNegativeButton:Lcom/sec/android/glview/TwGLButton;

.field private mNegativeButtonX:F

.field private mNegativeButtonY:F

.field private mNegativeText:Lcom/sec/android/glview/TwGLText;

.field private mNumberOfButton:I

.field private mPositiveButton:Lcom/sec/android/glview/TwGLButton;

.field private mPositiveButtonX:F

.field private mPositiveButtonY:F

.field private mPositiveText:Lcom/sec/android/glview/TwGLText;

.field private mTextArea:Lcom/sec/android/glview/TwGLViewGroup;

.field private mTextAreaHeight:F

.field private mTextAreaWidth:F

.field private mTitleAreaHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xdc

    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 48
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->MESSAGE_FONT_COLOR:I

    .line 49
    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->MESSAGE_FONT_HIGHLIGHT_COLOR:I

    .line 51
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->BUTTON_FONT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IIIIIII)V
    .locals 10
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"
    .parameter "bgWidth"
    .parameter "bgHeight"
    .parameter "numberOfbutton"
    .parameter "title"
    .parameter "message"
    .parameter "positiveText"
    .parameter "negativeText"

    .prologue
    .line 161
    const/16 v6, 0x12

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuWidth:F

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTitleAreaHeight:F

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaWidth:F

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaHeight:F

    .line 75
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonAreaWidth:F

    .line 76
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonAreaHeight:F

    .line 78
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuX:F

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuY:F

    .line 86
    const/high16 v1, 0x4120

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonGapOfHeight:F

    .line 163
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 164
    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNumberOfButton:I

    .line 166
    int-to-float v1, p5

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuWidth:F

    .line 167
    move/from16 v0, p6

    int-to-float v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    .line 169
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuWidth:F

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaWidth:F

    .line 170
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuWidth:F

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonAreaWidth:F

    .line 172
    if-eqz p8, :cond_3

    .line 173
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTitleAreaHeight:F

    .line 174
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaHeight:F

    .line 175
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaHeight:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonAreaHeight:F

    .line 181
    :goto_0
    const/high16 v1, 0x4448

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuWidth:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuX:F

    .line 182
    const/high16 v1, 0x43f0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuY:F

    .line 184
    if-eqz p9, :cond_0

    .line 185
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x41f0

    const/high16 v4, 0x4120

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaWidth:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaHeight:F

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move/from16 v0, p9

    invoke-virtual {v7, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41d8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->MESSAGE_FONT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMessage:Lcom/sec/android/glview/TwGLText;

    .line 186
    :cond_0
    if-eqz p10, :cond_1

    .line 187
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x4387

    const/high16 v6, 0x4294

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move/from16 v0, p10

    invoke-virtual {v7, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41c0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->BUTTON_FONT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveText:Lcom/sec/android/glview/TwGLText;

    .line 188
    :cond_1
    if-eqz p11, :cond_2

    .line 189
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x4387

    const/high16 v6, 0x4294

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move/from16 v0, p11

    invoke-virtual {v7, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41c0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->BUTTON_FONT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeText:Lcom/sec/android/glview/TwGLText;

    .line 191
    :cond_2
    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V

    .line 192
    return-void

    .line 177
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaHeight:F

    .line 178
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonAreaHeight:F

    goto/16 :goto_0
.end method

.method private init(Lcom/sec/android/glview/TwGLViewGroup;I)V
    .locals 13
    .parameter "glParentView"
    .parameter "viewId"

    .prologue
    const/4 v6, 0x0

    const v12, 0x7f02000b

    const/4 v11, 0x1

    const/high16 v10, 0x4000

    const/4 v9, 0x2

    .line 195
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuY:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 196
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaHeight:F

    move v2, v6

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextArea:Lcom/sec/android/glview/TwGLViewGroup;

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextArea:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0201ad

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 198
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaHeight:F

    sub-float v3, v2, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonAreaWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonAreaHeight:F

    move v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonArea:Lcom/sec/android/glview/TwGLViewGroup;

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonArea:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0201ac

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 201
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNumberOfButton:I

    if-ne v0, v11, :cond_3

    .line 202
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuWidth:F

    const/high16 v1, 0x4387

    sub-float/2addr v0, v1

    div-float/2addr v0, v10

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButtonX:F

    .line 203
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    const/high16 v1, 0x4294

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonGapOfHeight:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButtonY:F

    .line 211
    :goto_0
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButtonX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButtonY:F

    const v4, 0x7f02000a

    const/16 v7, 0x10e

    const/16 v8, 0x4a

    move v5, v12

    move v6, v12

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v9, v9}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 219
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNumberOfButton:I

    if-ne v0, v9, :cond_0

    .line 220
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButtonX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButtonY:F

    const v4, 0x7f02000a

    const/16 v7, 0x10e

    const/16 v8, 0x4a

    move v5, v12

    move v6, v12

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v9, v9}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v11}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextArea:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonArea:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMessage:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMessage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v11}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/high16 v1, 0x4448

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    add-float/2addr v1, v2

    div-float/2addr v1, v10

    const/high16 v2, 0x4120

    invoke-virtual {v0, v11, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuX:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuWidth:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuY:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    const/high16 v2, 0x4448

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v10

    const/high16 v3, 0x43eb

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 246
    return-void

    .line 205
    :cond_3
    const/high16 v0, 0x41b0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuWidth:F

    const/high16 v2, 0x4230

    sub-float/2addr v1, v2

    const/high16 v2, 0x4407

    sub-float/2addr v1, v2

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButtonX:F

    .line 206
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTitleAreaHeight:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaHeight:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonAreaHeight:F

    const/high16 v2, 0x4294

    sub-float/2addr v1, v2

    const/high16 v2, 0x4150

    sub-float/2addr v1, v2

    div-float/2addr v1, v10

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButtonY:F

    .line 207
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButtonX:F

    const/high16 v1, 0x4387

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuWidth:F

    const/high16 v2, 0x4230

    sub-float/2addr v1, v2

    const/high16 v2, 0x4407

    sub-float/2addr v1, v2

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButtonX:F

    .line 208
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButtonY:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButtonY:F

    goto/16 :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 305
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    .line 301
    return-void

    .line 290
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->resetToDefaultSettings()V

    goto :goto_0

    .line 293
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 140
    packed-switch p1, :pswitch_data_0

    .line 156
    :goto_0
    return v2

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->MESSAGE_FONT_HIGHLIGHT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->BUTTON_FONT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->MESSAGE_FONT_HIGHLIGHT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->BUTTON_FONT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 106
    sparse-switch p1, :sswitch_data_0

    .line 132
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 109
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->BUTTON_FONT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->resetToDefaultSettings()V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->BUTTON_FONT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 124
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->BUTTON_FONT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->BUTTON_FONT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 8
    .parameter "orientation"

    .prologue
    const/high16 v3, 0x43e6

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/high16 v5, 0x4387

    const/high16 v4, 0x4294

    .line 308
    packed-switch p1, :pswitch_data_0

    .line 374
    :goto_0
    return-void

    .line 310
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextArea:Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaHeight:F

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonArea:Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonAreaHeight:F

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 313
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMessage:Lcom/sec/android/glview/TwGLText;

    const/high16 v2, 0x43c8

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMessage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v7, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 315
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNumberOfButton:I

    if-ne v1, v7, :cond_0

    .line 316
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v2

    mul-float/2addr v2, v5

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuWidth:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v1

    mul-float/2addr v1, v5

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuWidth:F

    div-float/2addr v1, v2

    const/high16 v2, 0x4080

    sub-float v0, v1, v2

    .line 319
    .local v0, buttonWidth:F
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v0, v4}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v0, v4}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    sub-float v2, v0, v5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->translateAbsolute(FF)V

    goto :goto_0

    .line 325
    .end local v0           #buttonWidth:F
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 326
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextArea:Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaHeight:F

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonArea:Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonAreaHeight:F

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMessage:Lcom/sec/android/glview/TwGLText;

    const/high16 v2, 0x43c8

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMessage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v7, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 330
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNumberOfButton:I

    if-ne v1, v7, :cond_1

    .line 331
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v2

    mul-float/2addr v2, v5

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuWidth:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    goto/16 :goto_0

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v1

    mul-float/2addr v1, v5

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuWidth:F

    div-float/2addr v1, v2

    const/high16 v2, 0x4080

    sub-float v0, v1, v2

    .line 334
    .restart local v0       #buttonWidth:F
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v0, v4}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v0, v4}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 336
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    sub-float v2, v0, v5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 340
    .end local v0           #buttonWidth:F
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextArea:Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonArea:Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonAreaWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonAreaHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 343
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMessage:Lcom/sec/android/glview/TwGLText;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaWidth:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextArea:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextArea:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x41c8

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 344
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMessage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v7, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 345
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNumberOfButton:I

    if-ne v1, v7, :cond_2

    .line 346
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5, v4}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    goto/16 :goto_0

    .line 348
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5, v4}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 349
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5, v4}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 350
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->resetTranslate()V

    .line 351
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v6, v6}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    .line 352
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v6, v6}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    goto/16 :goto_0

    .line 356
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMenuHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 357
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextArea:Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 358
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonArea:Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonAreaWidth:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mButtonAreaHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMessage:Lcom/sec/android/glview/TwGLText;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaWidth:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextArea:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextArea:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x41c8

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mTextAreaHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 360
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mMessage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v7, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 361
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNumberOfButton:I

    if-ne v1, v7, :cond_3

    .line 362
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5, v4}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    goto/16 :goto_0

    .line 364
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5, v4}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5, v4}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 366
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->resetTranslate()V

    .line 367
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v6, v6}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    .line 368
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v6, v6}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    goto/16 :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 257
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    .line 258
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 267
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 284
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 269
    :pswitch_1
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->MESSAGE_FONT_HIGHLIGHT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    goto :goto_1

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->MESSAGE_FONT_HIGHLIGHT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    goto :goto_1

    .line 277
    :pswitch_2
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    if-nez v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mPositiveText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->BUTTON_FONT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    goto :goto_1

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->mNegativeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDialogPopup;->BUTTON_FONT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    goto :goto_1

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
