.class public Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLShootAndShareSettingMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final LIST_ITEM_HEIGHT:I = 0x46

.field private static final LIST_ITEM_WIDTH:I = 0x228

.field private static final LIST_POS_X:I = 0x0

.field private static final LIST_POS_Y:I = 0x24

.field private static final MENU_HEIGHT:I = 0xfa

.field private static final MENU_POS_X:I = 0x58

.field private static final MENU_POS_Y:I = 0x6

.field private static final MENU_WIDTH:I = 0x228

.field private static final TITLE_FONT_SIZE:F = 20.0f

.field private static final TITLE_HEIGHT:I = 0x24

.field private static final TITLE_LEFT_PADDING:I = 0xc

#the value of this static final field might be set in the static constructor
.field private static final TITLE_TEXT_COLOR:I = 0x0

.field private static final TITLE_TOP_PADDING:I = 0x1


# instance fields
.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 56
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->TITLE_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 10
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "resourceData"
    .parameter "menuResourceDepot"
    .parameter "zOrder"
    .parameter "slideDirection"

    .prologue
    .line 68
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 70
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 73
    new-instance v1, Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x42b0

    const/high16 v4, 0x40c0

    const/high16 v5, 0x440a

    const/high16 v6, 0x437a

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 74
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x4140

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4407

    const/high16 v6, 0x420c

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41a0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    .line 77
    .local v1, title:Lcom/sec/android/glview/TwGLText;
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 78
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    .line 80
    new-instance v2, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x4210

    const/high16 v6, 0x440a

    const/high16 v7, 0x4356

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 81
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v3, 0x7f02017a

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 82
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$1;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 84
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTag(I)V

    .line 85
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setRotatable(Z)V

    .line 87
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    .line 88
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 89
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setDragSensitivity(I)V

    .line 91
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 93
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    const/high16 v4, 0x42b0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40c0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 94
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x2

    const/high16 v4, 0x42b0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40c0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 95
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x3

    const/high16 v4, 0x42b0

    const/high16 v5, 0x40c0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 97
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 98
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 99
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 100
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 101
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 192
    :cond_0
    return v1
.end method

.method public onAnimationEnd()Z
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 184
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 175
    const/4 v0, 0x1

    .line 177
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
    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    .line 166
    return-void
.end method

.method public onDragEnd(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 170
    return-void
.end method

.method public onDragStart(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 162
    return-void
.end method

.method protected onHide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 152
    sget-object v0, Lcom/sec/android/app/camera/command/LaunchSnSSettingMenuCommand;->sAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/sec/android/app/camera/command/LaunchSnSSettingMenuCommand;->sAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 157
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 158
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->refreshMenuPosition()V

    .line 202
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 198
    return-void
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->getZorder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->setListBackgrouond(I)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showWaitingAnimation()V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->refreshMenuPosition()V

    .line 147
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 148
    return-void
.end method

.method public refreshMenuPosition()V
    .locals 13

    .prologue
    const/high16 v12, 0x4228

    const/high16 v11, 0x41a0

    const/4 v10, 0x0

    const/high16 v9, 0x4420

    const/high16 v8, 0x4000

    .line 206
    const/4 v3, 0x6

    .line 208
    .local v3, padding:I
    const/high16 v4, 0x40c0

    .line 209
    .local v4, top:F
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v6, :cond_2

    .line 210
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 219
    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v5

    .line 220
    .local v5, width:F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v1

    .line 223
    .local v1, height:F
    :goto_0
    add-float v0, v4, v1

    .line 225
    .local v0, bottom:F
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v7

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v7, v1, v8

    add-float/2addr v7, v4

    sub-float v2, v6, v7

    .line 226
    .local v2, move:F
    add-float v6, v4, v2

    cmpg-float v6, v6, v10

    if-gez v6, :cond_1

    .line 227
    neg-float v6, v4

    int-to-float v7, v3

    add-float v2, v6, v7

    .line 231
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->resetTranslate()V

    .line 232
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6, v10, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    .line 298
    :goto_2
    return-void

    .line 213
    .end local v0           #bottom:F
    .end local v1           #height:F
    .end local v2           #move:F
    .end local v5           #width:F
    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    .line 214
    .restart local v5       #width:F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v1

    .line 215
    .restart local v1       #height:F
    goto :goto_0

    .line 228
    .restart local v0       #bottom:F
    .restart local v2       #move:F
    :cond_1
    add-float v6, v0, v2

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 229
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    int-to-float v7, v3

    sub-float v2, v6, v7

    goto :goto_1

    .line 234
    .end local v0           #bottom:F
    .end local v1           #height:F
    .end local v2           #move:F
    .end local v5           #width:F
    :cond_2
    const/4 v3, 0x6

    .line 235
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v5

    .line 236
    .restart local v5       #width:F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v1

    .line 237
    .restart local v1       #height:F
    add-float v0, v4, v1

    .line 239
    .restart local v0       #bottom:F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 283
    iget v6, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchY:F

    div-float v7, v1, v8

    add-float/2addr v7, v4

    sub-float v2, v6, v7

    .line 285
    .restart local v2       #move:F
    add-float v6, v4, v2

    cmpg-float v6, v6, v10

    if-gez v6, :cond_3

    .line 286
    neg-float v6, v4

    add-float v2, v6, v12

    .line 289
    :cond_3
    add-float v6, v0, v2

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 290
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    sub-float v2, v6, v8

    .line 293
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->resetTranslate()V

    .line 294
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sub-float v7, v9, v5

    sub-float/2addr v7, v11

    invoke-virtual {v6, v7, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    goto/16 :goto_2

    .line 241
    .end local v2           #move:F
    :pswitch_2
    iget v6, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchY:F

    sub-float v6, v9, v6

    div-float v7, v1, v8

    add-float/2addr v7, v4

    sub-float v2, v6, v7

    .line 243
    .restart local v2       #move:F
    add-float v6, v0, v2

    cmpl-float v6, v6, v9

    if-lez v6, :cond_5

    .line 244
    sub-float v6, v9, v0

    sub-float v2, v6, v12

    .line 246
    :cond_5
    add-float v6, v4, v2

    cmpg-float v6, v6, v10

    if-gez v6, :cond_6

    .line 247
    neg-float v6, v4

    add-float v2, v6, v11

    .line 250
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->resetTranslate()V

    .line 251
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6, v2, v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    goto/16 :goto_2

    .line 254
    .end local v2           #move:F
    :pswitch_3
    iget v6, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchY:F

    const/high16 v7, 0x42a0

    sub-float/2addr v6, v7

    div-float v7, v1, v8

    add-float/2addr v7, v4

    sub-float v2, v6, v7

    .line 256
    .restart local v2       #move:F
    add-float v6, v4, v2

    cmpg-float v6, v6, v10

    if-gez v6, :cond_7

    .line 257
    neg-float v6, v4

    add-float v2, v6, v12

    .line 260
    :cond_7
    add-float v6, v0, v2

    cmpl-float v6, v6, v9

    if-lez v6, :cond_8

    .line 261
    sub-float v6, v9, v0

    sub-float v2, v6, v11

    .line 264
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->resetTranslate()V

    .line 265
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/high16 v7, 0x40c0

    invoke-virtual {v6, v2, v7}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    goto/16 :goto_2

    .line 268
    .end local v2           #move:F
    :pswitch_4
    const/high16 v6, 0x43f0

    iget v7, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchY:F

    sub-float/2addr v6, v7

    div-float v7, v1, v8

    add-float/2addr v7, v4

    sub-float v2, v6, v7

    .line 270
    .restart local v2       #move:F
    add-float v6, v0, v2

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    .line 271
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v1

    sub-float v2, v6, v12

    .line 274
    :cond_9
    add-float v6, v4, v2

    cmpg-float v6, v6, v10

    if-gez v6, :cond_a

    .line 275
    neg-float v6, v4

    add-float v2, v6, v8

    .line 278
    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->resetTranslate()V

    .line 279
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sub-float v7, v9, v5

    sub-float/2addr v7, v11

    invoke-virtual {v6, v7, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    goto/16 :goto_2

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 239
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public setListBackgrouond(I)V
    .locals 2
    .parameter "zOrder"

    .prologue
    .line 104
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f020178

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f020176

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    goto :goto_0
.end method
