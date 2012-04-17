.class public Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSelectPictureMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLSelectPictureItem;,
        Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final CANCEL_BTN_HEIGHT:I = 0x48

.field private static final CANCEL_BTN_POS_X:I = 0x71

.field private static final CANCEL_BTN_POS_Y:I = 0x122

.field private static final CANCEL_BTN_WIDTH:I = 0xc9

.field private static final LIST_ITEM_HEIGHT:I = 0x60

.field private static final LIST_ITEM_WITH:I = 0x2ee

.field private static final LIST_POS_X:I = 0x0

.field private static final LIST_POS_Y:I = 0x58

#the value of this static final field might be set in the static constructor
.field private static final LIST_SELECTOR_HIGHLIGHT_COLOR:I = 0x0

.field private static final MENU_HEIGHT:I = 0x16e

.field private static final MENU_POS_X:I = 0xb9

.field private static final MENU_POS_Y:I = 0x39

.field private static final MENU_WIDTH:I = 0x1ab

.field private static final SCREEN_HEIGHT:I = 0x320

.field private static final SCREEN_WIDTH:I = 0x1e0

.field private static final TITLE_FONT_SIZE:F = 35.0f

.field private static final TITLE_HEIGHT:I = 0x58

.field private static final TITLE_ICON_POS_X:I = 0x16

.field private static final TITLE_ICON_POS_Y:I = 0x17

.field private static final TITLE_LEFT_PADDING:I = 0x55

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TOP_PADDING:I


# instance fields
.field private mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

.field private mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mTitleIcon:Lcom/sec/android/glview/TwGLImage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    .line 71
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->TITLE_TEXT_COLOR:I

    .line 85
    const/16 v0, 0x8

    const/16 v1, 0x83

    const/16 v2, 0xd3

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 12
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"
    .parameter "zOrder"
    .parameter "slideDirection"

    .prologue
    .line 96
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 98
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 99
    new-instance v1, Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x4264

    const v5, 0x43d58000

    const/high16 v6, 0x43b7

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 100
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x42aa

    const/4 v4, 0x0

    const/high16 v5, 0x43ab

    const/high16 v6, 0x42b0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090104

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x420c

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    .line 103
    .local v1, title:Lcom/sec/android/glview/TwGLText;
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 104
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    .line 105
    new-instance v2, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x42b0

    const v6, 0x443b8000

    const/high16 v7, 0x438b

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 106
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v3, 0x7f02017a

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 107
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLMenuAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$1;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 109
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/high16 v4, 0x42e2

    const/high16 v5, 0x4391

    const/high16 v6, 0x4349

    const/high16 v7, 0x4290

    const v8, 0x7f020018

    const v9, 0x7f020019

    const v10, 0x7f020018

    const v11, 0x7f020017

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    .line 111
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09010b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setText(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 125
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTag(I)V

    .line 126
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setRotatable(Z)V

    .line 128
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    .line 129
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 130
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 132
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v3, 0x43d58000

    const/high16 v4, 0x43b7

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 133
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 134
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setDragSensitivity(I)V

    .line 135
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 137
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x0

    const/high16 v4, 0x4339

    const/high16 v5, 0x4264

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 138
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    const/high16 v4, 0x4448

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x43f0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 139
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x2

    const/high16 v4, 0x4339

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x4264

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 140
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x3

    const/high16 v4, 0x4448

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    const/high16 v5, 0x43f0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 142
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move/from16 v0, p6

    invoke-static {v2, v0}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 143
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move/from16 v0, p6

    invoke-static {v2, v0}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 144
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 145
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 146
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 226
    :cond_0
    return v1
.end method

.method public onAnimationEnd()Z
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 218
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 209
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrag(FFFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    .line 200
    return-void
.end method

.method public onDragEnd(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 204
    return-void
.end method

.method public onDragStart(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 196
    return-void
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 191
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 192
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 236
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->getZorder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->setListBackgrouond(I)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 183
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 184
    return-void
.end method

.method public setListBackgrouond(I)V
    .locals 2
    .parameter "zOrder"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f020177

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    .line 150
    return-void
.end method
