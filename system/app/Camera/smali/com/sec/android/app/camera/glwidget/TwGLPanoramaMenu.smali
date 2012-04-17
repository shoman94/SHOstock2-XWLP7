.class public Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLPanoramaMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;
    }
.end annotation


# static fields
.field private static final INT_20:I = 0x14

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final PANORAMASHOT_CAPTURE_PROGRESSBAR_ALPHA:F = 0.4f

.field private static final PANORAMASHOT_CAPTURE_PROGRESSBAR_TEXT_INTERVAL:I = 0x3c

.field private static final PANORAMASHOT_CAPTURE_PROGRESSBAR_TEXT_SIZE:F = 21.0f

.field private static final PANORAMASHOT_CAPTURE_PROGRESS_HEIGHT:I = 0x16

.field private static final PANORAMASHOT_CAPTURE_PROGRESS_X:[I = null

.field private static final PANORAMASHOT_CAPTURE_PROGRESS_Y:[I = null

.field private static final PANORAMASHOT_CAPTURE_SETSIZE_WIDTH:[I = null

.field private static final PANORAMASHOT_HELP_TEXT_HEIGHT:I = 0x5a

.field private static final PANORAMASHOT_HELP_TEXT_SIZE:F = 20.0f

.field private static final PANORAMASHOT_HELP_TEXT_WIDTH:I = 0x1cc

.field private static final PANORAMASHOT_HELP_TEXT_X:[I = null

.field private static final PANORAMASHOT_HELP_TEXT_Y:[I = null

.field private static final PANORAMASHOT_POST_PROGRESSBAR_HEIGHT:I = 0xf

.field private static final PANORAMASHOT_POST_PROGRESSBAR_POS_X:[I = null

.field private static final PANORAMASHOT_POST_PROGRESSBAR_POS_Y:[I = null

.field private static final PANORAMASHOT_POST_PROGRESSBAR_WIDTH:I = 0x17c

.field private static final PANORAMASHOT_RECT_HEIGHT:F = 480.0f

.field private static final PANORAMASHOT_RECT_WIDTH:F = 640.0f

.field public static final PANORAMASHOT_RESULT_TEXT_HEIGHT:I = 0x113

.field public static final PANORAMASHOT_RESULT_TEXT_POS_X:[I = null

.field public static final PANORAMASHOT_RESULT_TEXT_POS_Y:[I = null

.field public static final PANORAMASHOT_RESULT_TEXT_WIDTH:I = 0x1b8

.field private static final PANORAMASHOT_TRI_HEIGHT:I = 0x1e

.field private static final PANORAMASHOT_TRI_POS_X:[I = null

.field private static final PANORAMASHOT_TRI_POS_Y:[I = null

.field private static final PANORAMASHOT_TRI_WIDTH:I = 0x1e

.field public static final PANORAMAX1_MAX_IMAGE_COUNT:I = 0x8

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field protected static final TAG:Ljava/lang/String; = "TwGLPanoramaMenu"


# instance fields
.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mCaptureCount:I

.field private mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mIsPanoramaCapturing:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

.field private mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mResultText:Lcom/sec/android/glview/TwGLText;

.field private mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_CAPTURE_PROGRESSBAR_X:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_X:[I

    .line 55
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_CAPTURE_PROGRESSBAR_Y:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_Y:[I

    .line 56
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_CAPTURE_PROGRESS_SETSIZE_WIDTH:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_SETSIZE_WIDTH:[I

    .line 64
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_HELP_TEXT_X:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_X:[I

    .line 65
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_HELP_TEXT_Y:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_Y:[I

    .line 67
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_POST_PROGRESSBAR_POS_X:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_X:[I

    .line 68
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_POST_PROGRESSBAR_POS_Y:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_Y:[I

    .line 71
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_RESULT_TEXT_POS_X:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_X:[I

    .line 72
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_RESULT_TEXT_POS_Y:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_Y:[I

    .line 75
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_TRI_POS_X:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    .line 76
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_PANORAMASHOT_TRI_POS_Y:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 14
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 125
    const/4 v6, 0x5

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    .line 93
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/android/glview/TwGLTriangle;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 102
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    .line 127
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setCaptureEnabled(Z)V

    .line 129
    new-instance v1, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_SETSIZE_WIDTH:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x41b0

    const v7, 0x7f0201c6

    const v8, 0x7f0201c5

    const v9, 0x3ecccccd

    const/16 v10, 0x3c

    const/high16 v11, 0x41a8

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIFIF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 132
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x43e6

    const/high16 v6, 0x42b4

    const v7, 0x7f0900dc

    invoke-virtual {p1, v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41a0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 135
    new-instance v1, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x43be

    const/high16 v6, 0x4170

    const v7, 0x7f0201c6

    const v8, 0x7f0201c5

    const v9, 0x3ecccccd

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 137
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x43dc

    const v6, 0x43898000

    const v7, 0x7f09000a

    invoke-virtual {p1, v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41c8

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    .line 140
    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v11, 0x0

    new-instance v1, Lcom/sec/android/glview/TwGLTriangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x41f0

    const/high16 v6, 0x41f0

    const/4 v7, 0x0

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v12, 0xff

    const/4 v13, 0x0

    invoke-static {v8, v9, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLTriangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V

    aput-object v1, v10, v11

    .line 141
    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v11, 0x1

    new-instance v1, Lcom/sec/android/glview/TwGLTriangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x41f0

    const/high16 v6, 0x41f0

    const/high16 v7, 0x42b4

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v12, 0xff

    const/4 v13, 0x0

    invoke-static {v8, v9, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLTriangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V

    aput-object v1, v10, v11

    .line 142
    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v11, 0x2

    new-instance v1, Lcom/sec/android/glview/TwGLTriangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x41f0

    const/high16 v6, 0x41f0

    const/high16 v7, 0x4334

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v12, 0xff

    const/4 v13, 0x0

    invoke-static {v8, v9, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLTriangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V

    aput-object v1, v10, v11

    .line 143
    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v11, 0x3

    new-instance v1, Lcom/sec/android/glview/TwGLTriangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x41f0

    const/high16 v6, 0x41f0

    const/high16 v7, 0x4387

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v12, 0xff

    const/4 v13, 0x0

    invoke-static {v8, v9, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLTriangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFII)V

    aput-object v1, v10, v11

    .line 145
    new-instance v1, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x441b

    const/high16 v6, 0x43e6

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    const/4 v8, 0x5

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    .line 147
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 169
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 173
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 178
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLProgressBar;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 181
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->init()V

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;)Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v1, 0x7f030005

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x7f0201c3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setNinePatchBackground(I)Z

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_PROGRESS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_HELP_TEXT_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_RESULT_TEXT_POS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 213
    return-void
.end method


# virtual methods
.method public clearPanoramaRect()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 499
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 501
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLRectangle;->resetTranslate()V

    .line 503
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 504
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 505
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 503
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    :cond_2
    return-void
.end method

.method public getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    return v0
.end method

.method public getPostCaptureProgress()I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 325
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 221
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 311
    return-void
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mIsPanoramaCapturing:Z

    return v0
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    if-lez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;->onPanoramaCaptureCancelled()V

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->hideCaptureLayout()V

    .line 238
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 337
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 341
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    .line 342
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getPostCaptureProgress()I

    move-result v1

    if-lez v1, :cond_3

    .line 344
    const-string v1, "TwGLPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Down - it is stitching ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getPostCaptureProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    :cond_3
    if-ne p1, v2, :cond_4

    .line 350
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 352
    const-string v1, "TwGLPanoramaMenu"

    const-string v2, "Down - PANORAMAX1_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 361
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v0

    .line 365
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    .line 366
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getPostCaptureProgress()I

    move-result v1

    if-lez v1, :cond_3

    .line 368
    const-string v1, "TwGLPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Up - it is stitching ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getPostCaptureProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    :cond_3
    if-ne p1, v2, :cond_4

    .line 374
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 376
    const-string v1, "TwGLPanoramaMenu"

    const-string v2, "Up - PANORAMAX1_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setSizeForOrientation()V

    .line 418
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 385
    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    .line 388
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    .line 390
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showCaptureLayout()V

    .line 234
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 393
    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    .line 395
    return-void
.end method

.method public panoramaDirectionChanged(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 421
    packed-switch p1, :pswitch_data_0

    .line 471
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 477
    :goto_0
    return-void

    .line 423
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto :goto_0

    .line 429
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto :goto_0

    .line 435
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto :goto_0

    .line 441
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto :goto_0

    .line 447
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto/16 :goto_0

    .line 453
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto/16 :goto_0

    .line 459
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto/16 :goto_0

    .line 465
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLTriangle;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLTriangle;->setVisibility(I)V

    goto/16 :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public panoramaRectChanged(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLRectangle;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->translateAbsolute(FF)V

    .line 496
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mIsPanoramaCapturing:Z

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 245
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setTouchHandled(Z)V

    .line 247
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showHelpText()V

    .line 248
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 251
    :cond_0
    return-void
.end method

.method public restartCancelTimer()V
    .locals 2

    .prologue
    .line 262
    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    .line 264
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->startCancelTimer()V

    .line 265
    return-void
.end method

.method public setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V
    .locals 7
    .parameter "view"

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v4, -0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 480
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 481
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 482
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHideAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 490
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 491
    return-void
.end method

.method public setCaptureProgressIncreased()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 275
    const-string v0, "TwGLPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCaptureCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mIsPanoramaCapturing:Z

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 279
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureCount:I

    if-le v0, v3, :cond_1

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->hideHelpText()V

    .line 286
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTextMessage()V

    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setTouchHandled(Z)V

    .line 289
    return-void

    .line 283
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showHelpText()V

    goto :goto_0
.end method

.method public setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;

    .line 334
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 296
    const-string v0, "dspark"

    const-string v1, "setPostCaptureProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 298
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 306
    return-void
.end method

.method public setSizeForOrientation()V
    .locals 4

    .prologue
    const/high16 v3, 0x41b0

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 413
    :goto_0
    return-void

    .line 406
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_SETSIZE_WIDTH:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    goto :goto_0

    .line 410
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->PANORAMASHOT_CAPTURE_SETSIZE_WIDTH:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 330
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 217
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mResultText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 316
    return-void
.end method

.method public startCancelTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 259
    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 268
    const-string v0, "TwGLPanoramaMenu"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    :cond_0
    return-void
.end method
