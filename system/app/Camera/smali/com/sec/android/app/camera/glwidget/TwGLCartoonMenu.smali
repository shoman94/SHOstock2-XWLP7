.class public Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCartoonMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# static fields
.field private static CARTOONSHOT_HELP_TEXT_HEIGHT:I

.field private static CARTOONSHOT_HELP_TEXT_SIZE:I

.field private static CARTOONSHOT_HELP_TEXT_WIDTH:I

.field private static CARTOONSHOT_HELP_TEXT_X:[I

.field private static CARTOONSHOT_HELP_TEXT_Y:[I

.field private static CARTOONSHOT_POPUP_GROUP_HEIGHT:I

.field private static CARTOONSHOT_POPUP_GROUP_WIDTH:I

.field private static CARTOONSHOT_POPUP_GROUP_X:I

.field private static CARTOONSHOT_POPUP_GROUP_Y:I

.field private static CARTOONSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[I

.field private static CARTOONSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[I

.field private static CARTOONSHOT_PROGRESSBAR_HEIGHT:I

.field private static CARTOONSHOT_PROGRESSBAR_WIDTH:I

.field private static CARTOONSHOT_PROGRESSBAR_X:I

.field private static CARTOONSHOT_PROGRESSBAR_Y:I

.field private static CARTOONSHOT_PROGRESS_TEXT_HEIGHT:I

.field private static CARTOONSHOT_PROGRESS_TEXT_SIZE:I

.field private static CARTOONSHOT_PROGRESS_TEXT_WIDTH:I

.field private static CARTOONSHOT_PROGRESS_TEXT_X:I

.field private static CARTOONSHOT_PROGRESS_TEXT_Y:I

.field private static SCREEN_HEIGHT:I


# instance fields
.field private mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mProgressText:Lcom/sec/android/glview/TwGLText;

.field private mSideMenuHidden:Z

.field private mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x190

    const/16 v0, 0x78

    const/16 v1, 0x3c

    .line 38
    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_POPUP_GROUP_X:I

    .line 39
    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_POPUP_GROUP_Y:I

    .line 40
    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_POPUP_GROUP_WIDTH:I

    .line 41
    const/16 v0, 0xfa

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_POPUP_GROUP_HEIGHT:I

    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESS_TEXT_X:I

    .line 43
    const/16 v0, 0x32

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESS_TEXT_Y:I

    .line 44
    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESS_TEXT_WIDTH:I

    .line 45
    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESS_TEXT_HEIGHT:I

    .line 46
    const/16 v0, 0x19

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESS_TEXT_SIZE:I

    .line 47
    const/16 v0, 0x12c

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESSBAR_WIDTH:I

    .line 48
    const/16 v0, 0x16

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESSBAR_HEIGHT:I

    .line 49
    const/16 v0, 0xaa

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESSBAR_X:I

    .line 50
    const/16 v0, 0x10e

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESSBAR_Y:I

    .line 51
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_CARTOONSHOT_HELP_TEXT_X:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_HELP_TEXT_X:[I

    .line 52
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_CARTOONSHOT_HELP_TEXT_Y:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_HELP_TEXT_Y:[I

    .line 53
    const/16 v0, 0x15e

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_HELP_TEXT_WIDTH:I

    .line 54
    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_HELP_TEXT_HEIGHT:I

    .line 55
    const/16 v0, 0x14

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_HELP_TEXT_SIZE:I

    .line 56
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_CARTOONSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[I

    .line 57
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_CARTOONSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[I

    .line 58
    const/16 v0, 0x1e0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->SCREEN_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 71
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mSideMenuHidden:Z

    .line 73
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_POPUP_GROUP_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_POPUP_GROUP_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_POPUP_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_POPUP_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 75
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESS_TEXT_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESS_TEXT_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESS_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESS_TEXT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f09000a

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESS_TEXT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    .line 80
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESSBAR_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESSBAR_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESSBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESSBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0201c6

    const v7, 0x7f0201c5

    const v8, 0x3ecccccd

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 82
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_HELP_TEXT_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_HELP_TEXT_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_HELP_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_HELP_TEXT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0900da

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_HELP_TEXT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLProgressBar;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->setCaptureEnabled(Z)V

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->setTouchHandled(Z)V

    .line 106
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->init()V

    .line 107
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v1, 0x7f030005

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0201c3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESSBAR_X:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLProgressBar;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_PROGRESSBAR_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->CARTOONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 137
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->resetAcquisitionProgress()V

    .line 138
    return-void
.end method


# virtual methods
.method public getProgressValue()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 157
    :cond_0
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 209
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 173
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->hideHelpText()V

    .line 167
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 223
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 225
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 233
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 235
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->setSizeForOrientation()V

    .line 278
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->resetAcquisitionProgress()V

    .line 253
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->reset()V

    .line 257
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->showHelpText()V

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->hidePostCaptureLayout()V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 163
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 244
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->hidePostCaptureLayout()V

    .line 245
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->showHelpText()V

    .line 246
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->setTouchHandled(Z)V

    .line 181
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mSideMenuHidden:Z

    .line 182
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .parameter "nProgress"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 188
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mSideMenuHidden:Z

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->setTouchHandled(Z)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTextMessage()V

    .line 194
    :cond_0
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 198
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 202
    return-void
.end method

.method public setRederingProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 220
    return-void
.end method

.method public setSizeForOrientation()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 274
    :goto_0
    return-void

    .line 267
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    .line 271
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showHelpText()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 143
    .local v0, menu:Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 148
    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 151
    :cond_1
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->hideHelpText()V

    .line 216
    return-void
.end method
