.class public Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLContextMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final MENU_EDIT_BUTTON_POS_X:I = 0x0

.field private static final MENU_EDIT_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MENU_EDIT_FONT_COLOR:I = 0x0

.field private static final MENU_EDIT_FONT_SIZE:I = 0x1a

.field private static final MENU_EDIT_LANDSCAPE_TEXT_POS_X:I = 0x16

.field private static final MENU_EDIT_LANDSCAPE_TEXT_POS_Y:I = 0x8

.field private static final MENU_EDIT_PORTRAIT_TEXT_POS_X:I = 0x16

.field private static final MENU_EDIT_PORTRAIT_TEXT_POS_Y:I = 0x8

.field private static final MENU_EDIT_TEXT_HEIGHT:I = 0x55

.field private static final MENU_EDIT_TEXT_WIDTH:I = 0x178

.field private static final MENU_LANDSCAPE_HEIGHT:I = 0x55

.field private static final MENU_LANDSCAPE_POS_X:I = 0x17c

.field private static final MENU_LANDSCAPE_POS_Y:I = 0x18b

.field private static final MENU_LANDSCAPE_WIDTH:I = 0x1a4

.field private static final MENU_PORTRAIT_HEIGHT:I = 0x55

.field private static final MENU_PORTRAIT_POS_X:I = 0x1e

.field private static final MENU_PORTRAIT_POS_Y:I = 0x2cb

.field private static final MENU_PORTRAIT_WIDTH:I = 0x1a4


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

.field private mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPortraitButton:Lcom/sec/android/glview/TwGLButton;

.field private mText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 43
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_FONT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 12
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "resourceData"
    .parameter "menuResourceDepot"
    .parameter "zOrder"
    .parameter "slideDirection"

    .prologue
    .line 59
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 61
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 63
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v2, 0xe74

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v11

    .line 67
    .local v11, res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x43be

    const v4, 0x43c58000

    const/high16 v5, 0x43d2

    const/high16 v6, 0x42aa

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 68
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const v2, 0x7f0201a1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 70
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43d2

    const/high16 v6, 0x42aa

    iget v7, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v8, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v9, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const v10, 0x7f0201a0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    .line 72
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43bc

    const/high16 v6, 0x42aa

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v8, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41d0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mText:Lcom/sec/android/glview/TwGLText;

    .line 74
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    const/high16 v2, 0x41b0

    const/high16 v3, 0x4100

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0xe74

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 78
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 81
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43d2

    const/high16 v6, 0x42aa

    iget v7, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v8, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v9, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const v10, 0x7f0201a0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    .line 83
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43bc

    const/high16 v6, 0x42aa

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v8, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41d0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mText:Lcom/sec/android/glview/TwGLText;

    .line 85
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 86
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 87
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    const/high16 v2, 0x41b0

    const/high16 v3, 0x4100

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0xe74

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 90
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 98
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    const v3, 0x4432c000

    const/high16 v4, 0x43e1

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    const/high16 v3, 0x43d2

    const/high16 v4, 0x42aa

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 100
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    const/high16 v3, 0x42aa

    const/high16 v4, 0x41f0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 102
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->initAnimation(I)V

    .line 106
    return-void
.end method

.method private initAnimation(I)V
    .locals 14
    .parameter "orientation"

    .prologue
    const/4 v6, 0x1

    const/high16 v13, 0x3f80

    const-wide/16 v11, 0x12c

    const/4 v10, 0x0

    .line 109
    const/4 v4, 0x0

    .line 111
    .local v4, slideInAnim:Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 112
    .local v3, ShowAnim:Landroid/view/animation/AnimationSet;
    const/4 v5, 0x0

    .line 114
    .local v5, slideOutAnim:Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 117
    .local v2, HideAnim:Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_0

    .line 136
    :goto_0
    if-eqz v4, :cond_0

    .line 137
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 138
    invoke-virtual {v4, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 139
    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 140
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 141
    invoke-virtual {v5, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 142
    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 145
    :cond_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v10, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 146
    .local v1, AlphaOnAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v1, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 147
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 149
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v13, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 150
    .local v0, AlphaOffAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 151
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 153
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 154
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 155
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 156
    return-void

    .line 119
    .end local v0           #AlphaOffAnimation:Landroid/view/animation/Animation;
    .end local v1           #AlphaOnAnimation:Landroid/view/animation/Animation;
    :pswitch_0
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .end local v4           #slideInAnim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    invoke-direct {v4, v10, v10, v6, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 120
    .restart local v4       #slideInAnim:Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5           #slideOutAnim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    invoke-direct {v5, v10, v10, v10, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 121
    .restart local v5       #slideOutAnim:Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 123
    :pswitch_1
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .end local v4           #slideInAnim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    neg-float v6, v6

    invoke-direct {v4, v6, v10, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 124
    .restart local v4       #slideInAnim:Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5           #slideOutAnim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    neg-float v6, v6

    invoke-direct {v5, v10, v6, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 125
    .restart local v5       #slideOutAnim:Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 127
    :pswitch_2
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .end local v4           #slideInAnim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    neg-float v6, v6

    invoke-direct {v4, v10, v10, v6, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 128
    .restart local v4       #slideInAnim:Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5           #slideOutAnim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    neg-float v6, v6

    invoke-direct {v5, v10, v10, v10, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 129
    .restart local v5       #slideOutAnim:Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 131
    :pswitch_3
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .end local v4           #slideInAnim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    invoke-direct {v4, v6, v10, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 132
    .restart local v4       #slideInAnim:Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5           #slideOutAnim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    invoke-direct {v5, v10, v6, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v5       #slideOutAnim:Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 202
    :cond_0
    return v1
.end method

.method public onAnimationEnd()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 159
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 163
    const/16 v0, 0x28

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_0

    .line 165
    :cond_0
    const/16 v0, 0xbd0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0xe74
        :pswitch_0
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 174
    packed-switch p1, :pswitch_data_0

    .line 183
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 186
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->initAnimation(I)V

    .line 187
    return-void

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 208
    return-void
.end method
