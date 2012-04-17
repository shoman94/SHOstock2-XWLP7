.class public Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLActionMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;
    }
.end annotation


# static fields
.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_ALPHA:F = 0.4f

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I = 0x16

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F = null

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_WIDTH:I = 0x21c

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I = null

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I = null

.field private static final ACTIONSHOT_HELP_TEXT_HEIGHT:I = 0x3c

.field private static final ACTIONSHOT_HELP_TEXT_SIZE:I = 0x14

.field private static final ACTIONSHOT_HELP_TEXT_WIDTH:I = 0x1cc

.field private static final ACTIONSHOT_HELP_TEXT_X:[I = null

.field private static final ACTIONSHOT_HELP_TEXT_Y:[I = null

.field private static final ACTIONSHOT_POPUP_GROUP_HEIGHT:I = 0xfa

.field private static final ACTIONSHOT_POPUP_GROUP_WIDTH:I = 0x190

.field private static final ACTIONSHOT_POPUP_GROUP_X:I = 0x78

.field private static final ACTIONSHOT_POPUP_GROUP_Y:I = 0x78

.field private static final ACTIONSHOT_POST_CAPTURE_PROGRESSBAR_X:[I = null

.field private static final ACTIONSHOT_POST_CAPTURE_PROGRESSBAR_Y:[I = null

.field private static final ACTIONSHOT_PROGRESSBAR_ALPHA:F = 0.4f

.field private static final ACTIONSHOT_PROGRESSBAR_HEIGHT:I = 0x16

.field private static final ACTIONSHOT_PROGRESSBAR_WIDTH:I = 0x12c

.field private static final ACTIONSHOT_PROGRESS_TEXT_HEIGHT:I = 0x3c

.field private static final ACTIONSHOT_PROGRESS_TEXT_SIZE:I = 0x19

.field private static final ACTIONSHOT_PROGRESS_TEXT_WIDTH:I = 0x190

.field private static final ACTIONSHOT_PROGRESS_TEXT_X:I = 0x0

.field private static final ACTIONSHOT_PROGRESS_TEXT_Y:I = 0x32

.field private static final ACTIONSHOT_RECT_HEIGHT:I = 0x136

.field private static final ACTIONSHOT_RECT_POS_X:I = 0x46

.field private static final ACTIONSHOT_RECT_POS_Y:I = 0x5a

.field private static final ACTIONSHOT_RECT_WIDTH:I = 0x1f4


# instance fields
.field private mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mActionRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mIsCreatingResultStarted:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;

.field private mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mProgressText:Lcom/sec/android/glview/TwGLText;

.field private mSideMenuHidden:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_ACTIONSHOT_POST_CAPTURE_PROGRESSBAR_X:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_POST_CAPTURE_PROGRESSBAR_X:[I

    .line 54
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_ACTIONSHOT_POST_CAPTURE_PROGRESSBAR_Y:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_POST_CAPTURE_PROGRESSBAR_Y:[I

    .line 57
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    .line 58
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    .line 63
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

    .line 64
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_ACTIONSHOT_HELP_TEXT_X:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    .line 65
    sget-object v0, Lcom/sec/android/app/camera/TwGLViewCoordinates;->R_GL_ACTIONSHOT_HELP_TEXT_Y:[I

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 96
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;

    .line 98
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/high16 v2, 0x42f0

    const/high16 v3, 0x42f0

    const/high16 v4, 0x43c8

    const/high16 v5, 0x437a

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 100
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4248

    const/high16 v4, 0x43c8

    const/high16 v5, 0x4270

    const v6, 0x7f09000a

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41c8

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    .line 103
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_POST_CAPTURE_PROGRESSBAR_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_POST_CAPTURE_PROGRESSBAR_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4396

    const/high16 v5, 0x41b0

    const v6, 0x7f0201c6

    const v7, 0x7f0201c5

    const v8, 0x3ecccccd

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 105
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4407

    const/high16 v5, 0x41b0

    const v6, 0x7f0201c6

    const v7, 0x7f0201c5

    const v8, 0x3ecccccd

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 108
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x43e6

    const/high16 v5, 0x4270

    const v6, 0x7f0900d8

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41a0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 113
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/high16 v2, 0x428c

    const/high16 v3, 0x42b4

    const/high16 v4, 0x43fa

    const/high16 v5, 0x439b

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/16 v8, 0xff

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v7, 0x5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    .line 114
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/high16 v2, 0x428c

    const/high16 v3, 0x42b4

    const/high16 v4, 0x43fa

    const/high16 v5, 0x439b

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v7, 0x5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLProgressBar;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setCaptureEnabled(Z)V

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setTouchHandled(Z)V

    .line 143
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->init()V

    .line 144
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v1, 0x7f030005

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0201c3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_POST_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_POST_CAPTURE_PROGRESSBAR_X:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_POST_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_POST_CAPTURE_PROGRESSBAR_X:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_POST_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_POST_CAPTURE_PROGRESSBAR_X:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 173
    return-void
.end method


# virtual methods
.method public actionShotCaptureCancelled()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 389
    return-void
.end method

.method public actionShotCreatingResultStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 361
    :cond_1
    return-void
.end method

.method public actionShotRectChanged([B)V
    .locals 10
    .parameter "data"

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x0

    .line 364
    aget-byte v4, p1, v6

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v1, v4, v5

    .line 366
    .local v1, left:I
    aget-byte v4, p1, v9

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x6

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v3, v4, v5

    .line 368
    .local v3, top:I
    const/16 v4, 0x8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x9

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0xa

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/16 v5, 0xb

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v2, v4, v5

    .line 370
    .local v2, right:I
    const/16 v4, 0xc

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xd

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0xe

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/16 v5, 0xf

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v0, v4, v5

    .line 373
    .local v0, bottom:I
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v6}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 375
    sub-int v4, v2, v1

    if-lez v4, :cond_0

    sub-int v4, v0, v3

    if-lez v4, :cond_0

    .line 376
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v6}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 377
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    int-to-float v5, v1

    int-to-float v6, v3

    sub-int v7, v2, v1

    int-to-float v7, v7

    sub-int v8, v0, v3

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 380
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 381
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v9}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 382
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v9}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 384
    :cond_1
    return-void
.end method

.method public clearActionShotRect()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 395
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 396
    return-void
.end method

.method public getProgressValue()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 243
    const-string v0, "TWGLACTION"

    const-string v1, "hideCaptureLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 245
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showHelpText()V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 248
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 181
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 259
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;->onActionShotCaptureCancelled()V

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideHelpText()V

    .line 189
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 271
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    :cond_3
    if-ne p1, v2, :cond_4

    .line 282
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    if-eqz v1, :cond_4

    .line 284
    const-string v1, "MenuBase"

    const-string v2, "mIsCreatingResultStarted is true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 293
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v0

    .line 297
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    .line 298
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    :cond_3
    if-ne p1, v2, :cond_4

    .line 304
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    if-eqz v1, :cond_4

    .line 306
    const-string v1, "MenuBase"

    const-string v2, "mIsCreatingResultStarted is true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setSizeForOrientation()V

    .line 351
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-ltz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onActionShotCaptureCancelled()V

    .line 317
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 319
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showHelpText()V

    .line 326
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showHelpText()V

    .line 185
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setTouchHandled(Z)V

    .line 211
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    .line 212
    return-void
.end method

.method public resetAcquisitionProgressForImageStoreCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setTouchHandled(Z)V

    .line 219
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    .line 220
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .parameter "nProgress"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 226
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setTouchHandled(Z)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTextMessage()V

    .line 232
    :cond_0
    return-void
.end method

.method public setActionShotCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;

    .line 268
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 236
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 240
    return-void
.end method

.method public setSizeForOrientation()V
    .locals 5

    .prologue
    const/high16 v4, 0x41b0

    const/4 v3, 0x2

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 347
    :goto_0
    return-void

    .line 336
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    .line 342
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    .line 333
    nop

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
    .line 251
    const-string v0, "TWGLACTION"

    const-string v1, "showCaptureLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 253
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideHelpText()V

    .line 254
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 177
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 264
    return-void
.end method
