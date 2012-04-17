.class public Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSmileMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;
    }
.end annotation


# static fields
.field private static final INT_10:I = 0xa

.field private static final INT_80:I = 0x50

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field public static OnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener; = null

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field private static final SCREEN_HEIGHT:I = 0x1e0

.field private static final SCREEN_WIDTH:I = 0x320

.field private static final SIDEMENU_WIDTH:I = 0x50

.field private static final SMILESHOT_BLINK_IMAGE_HEIGHT:I = 0x20

.field private static final SMILESHOT_BLINK_IMAGE_WIDTH:I = 0x20

.field private static final SMILESHOT_BLINK_IMAGE_X:I = 0x78

.field private static final SMILESHOT_BLINK_IMAGE_Y:I = 0xa

.field private static final SMILESHOT_HELP_TEXT_HEIGHT:I = 0x28

.field private static final SMILESHOT_HELP_TEXT_SETSIZE_HEIGHT:[I = null

.field private static final SMILESHOT_HELP_TEXT_SETSIZE_WIDTH:[I = null

.field private static final SMILESHOT_HELP_TEXT_SIZE:I = 0x14

.field private static final SMILESHOT_HELP_TEXT_WIDTH:I = 0x1cc

.field private static final SMILESHOT_HELP_TEXT_X:[I = null

.field private static final SMILESHOT_HELP_TEXT_Y:[I = null

.field private static final SMILESHOT_RECT_POS_X:I = 0x50

.field protected static final TAG:Ljava/lang/String; = "TwGLSmileMenu"


# instance fields
.field public blinkAnimation:Landroid/view/animation/Animation;

.field private mBlinkImage:Lcom/sec/android/glview/TwGLImage;

.field private mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

.field public mHelpText:Lcom/sec/android/glview/TwGLText;

.field public mIsDetecting:Z

.field private mIsWide:Z

.field private mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_SMILESHOT_HELP_TEXT_POS_X:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_X:[I

    .line 36
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_SMILESHOT_HELP_TEXT_POS_Y:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_Y:[I

    .line 47
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_SMILESHOT_HELP_TEXT_SETSIZE_WIDTH:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_SETSIZE_WIDTH:[I

    .line 48
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_SMILESHOT_HELP_TEXT_SETSIZE_HEIGHT:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_SETSIZE_HEIGHT:[I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 12
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 80
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsWide:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/glview/TwGLRectangle;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/glview/TwGLRectangle;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    .line 65
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setCaptureEnabled(Z)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setTouchHandled(Z)V

    .line 85
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x43e6

    const/high16 v5, 0x4220

    const v6, 0x7f0900e1

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41a0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 88
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/high16 v2, 0x42f0

    const/high16 v3, 0x4120

    const/high16 v4, 0x4200

    const/high16 v5, 0x4200

    const/4 v6, 0x0

    const v7, 0x7f020059

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    const v2, 0x44318000

    const/high16 v3, 0x4120

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    const/high16 v2, 0x42b4

    const/high16 v3, 0x43eb

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    const/high16 v2, 0x442a

    const/high16 v3, 0x43eb

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 100
    const/high16 v0, 0x7f04

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->blinkAnimation:Landroid/view/animation/Animation;

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 110
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v0, 0x5

    if-ge v8, v0, :cond_0

    .line 111
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/high16 v2, 0x42a0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/16 v7, 0xc8

    const/16 v10, 0x7d

    const/4 v11, 0x0

    invoke-static {v6, v7, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v7, 0x5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    aput-object v0, v9, v8

    .line 112
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/high16 v2, 0x42a0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/16 v10, 0xff

    const/4 v11, 0x0

    invoke-static {v6, v7, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v7, 0x5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    aput-object v0, v9, v8

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v0, v0, v8

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 110
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 133
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->init()V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 141
    return-void
.end method


# virtual methods
.method public cleanSmileRect()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 362
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    .line 362
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_2
    return-void
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 251
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 220
    :cond_0
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 234
    return-void
.end method

.method public isDetecting()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    return v0
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;->onSmileDetectingStopped()V

    .line 201
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 202
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 203
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;->onSmileDetectingStopped()V

    .line 176
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showPostCaptureLayout()V

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->hideHelpText()V

    .line 189
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setSizeForOrientation()V

    .line 290
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSmileDetectingStopped()V

    .line 208
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showHelpText()V

    .line 184
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 261
    const-string v0, "TwGLSmileMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setTouchHandled(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showHelpText()V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 227
    :cond_0
    return-void
.end method

.method public setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;

    .line 180
    return-void
.end method

.method public setSizeForOrientation()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 268
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_SETSIZE_WIDTH:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_SETSIZE_HEIGHT:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_SETSIZE_WIDTH:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_SETSIZE_HEIGHT:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    .line 276
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_SETSIZE_WIDTH:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_SETSIZE_HEIGHT:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    .line 280
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_SETSIZE_WIDTH:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->SMILESHOT_HELP_TEXT_SETSIZE_HEIGHT:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 257
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 214
    :cond_0
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 242
    return-void
.end method

.method public smileShotFaceRectChanged([B)V
    .locals 10
    .parameter "data"

    .prologue
    .line 297
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v5, 0x5

    if-ge v1, v5, :cond_3

    .line 298
    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v2, v5, v6

    .line 301
    .local v2, left:I
    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x5

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x7

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v4, v5, v6

    .line 304
    .local v4, top:I
    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x8

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x9

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xa

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xb

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v3, v5, v6

    .line 307
    .local v3, right:I
    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0xc

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xd

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xe

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xf

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v0, v5, v6

    .line 314
    .local v0, bottom:I
    sub-int v5, v3, v2

    if-lez v5, :cond_2

    sub-int v5, v0, v4

    if-lez v5, :cond_2

    .line 315
    iget-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsWide:Z

    if-eqz v5, :cond_1

    .line 316
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    int-to-float v6, v2

    int-to-float v7, v4

    sub-int v8, v3, v2

    int-to-float v8, v8

    sub-int v9, v0, v4

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 320
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 297
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 318
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    add-int/lit8 v6, v2, 0x50

    int-to-float v6, v6

    int-to-float v7, v4

    sub-int v8, v3, v2

    int-to-float v8, v8

    sub-int v9, v0, v4

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    goto :goto_1

    .line 321
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLRectangle;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 322
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 323
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mFaceRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    goto :goto_2

    .line 326
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    :cond_3
    return-void
.end method

.method public smileShotSmileRectChanged([B)V
    .locals 10
    .parameter "data"

    .prologue
    .line 331
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v5, 0x5

    if-ge v1, v5, :cond_3

    .line 332
    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v2, v5, v6

    .line 335
    .local v2, left:I
    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x5

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x7

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v4, v5, v6

    .line 338
    .local v4, top:I
    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0x8

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0x9

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xa

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xb

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v3, v5, v6

    .line 341
    .local v3, right:I
    mul-int/lit8 v5, v1, 0x14

    add-int/lit8 v5, v5, 0xc

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xd

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xe

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x14

    add-int/lit8 v6, v6, 0xf

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int v0, v5, v6

    .line 346
    .local v0, bottom:I
    sub-int v5, v3, v2

    if-lez v5, :cond_2

    sub-int v5, v0, v4

    if-lez v5, :cond_2

    .line 347
    iget-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsWide:Z

    if-eqz v5, :cond_1

    .line 348
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    int-to-float v6, v2

    int-to-float v7, v4

    sub-int v8, v3, v2

    int-to-float v8, v8

    sub-int v9, v0, v4

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 352
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 331
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 350
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    add-int/lit8 v6, v2, 0x50

    int-to-float v6, v6

    int-to-float v7, v4

    sub-int v8, v3, v2

    int-to-float v8, v8

    sub-int v9, v0, v4

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    goto :goto_1

    .line 353
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLRectangle;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 354
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 355
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mSmileRect:[Lcom/sec/android/glview/TwGLRectangle;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    goto :goto_2

    .line 359
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    :cond_3
    return-void
.end method

.method public startDetect(Z)V
    .locals 2
    .parameter "isWide"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    .line 153
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsWide:Z

    .line 154
    return-void
.end method

.method public stopDetect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 160
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    .line 161
    return-void
.end method

.method public stopSmileShot()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenu()V

    .line 165
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    if-eq v0, v2, :cond_0

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mIsDetecting:Z

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 169
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setTouchHandled(Z)V

    goto :goto_0
.end method
