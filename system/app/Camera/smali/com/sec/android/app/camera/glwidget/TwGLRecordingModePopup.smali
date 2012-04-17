.class public Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLRecordingModePopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final LIST_ITEM_HEIGHT:I = 0x1d3

.field private static final LIST_ITEM_WIDTH:I = 0x147

.field private static final LIST_POS_X:I = 0x0

.field private static final LIST_POS_Y:I = 0x24

.field private static final MENU_HEIGHT:I = 0x1d3

.field private static final MENU_POS_X:I = 0xec

.field private static final MENU_POS_Y:I = 0x64

.field private static final MENU_WIDTH:I = 0x147

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

    .line 50
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->TITLE_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 64
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 66
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    const/16 v2, 0xbb9

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 68
    new-instance v0, Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/high16 v2, 0x436c

    const/high16 v3, 0x42c8

    const v4, 0x43a38000

    const v5, 0x43e98000

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 69
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/high16 v2, 0x4140

    const/high16 v3, 0x3f80

    const v4, 0x439d8000

    const/high16 v5, 0x420c

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41a0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    .line 72
    .local v0, title:Lcom/sec/android/glview/TwGLText;
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 73
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    .line 74
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v2, 0x7f020178

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    .line 76
    new-instance v1, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x4210

    const v5, 0x43a38000

    const v6, 0x43d78000

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mList:Lcom/sec/android/glview/TwGLList;

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mList:Lcom/sec/android/glview/TwGLList;

    const v2, 0x7f02017a

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 78
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup$TwGLMenuAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup$1;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 80
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v1, p2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTag(I)V

    .line 81
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setRotatable(Z)V

    .line 82
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setCenterPivot(Z)V

    .line 84
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 86
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setDragSensitivity(I)V

    .line 87
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mList:Lcom/sec/android/glview/TwGLList;

    .line 94
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 95
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 136
    :cond_0
    return v1
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 129
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->getZorder()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 143
    .local v0, depth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->getZorder()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 144
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 147
    .end local v0           #depth:I
    .local v1, depth:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #depth:I
    .restart local v0       #depth:I
    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    move v1, v0

    .end local v0           #depth:I
    .restart local v1       #depth:I
    goto :goto_0

    .line 150
    .end local v1           #depth:I
    .restart local v0       #depth:I
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .end local v0           #depth:I
    .restart local v1       #depth:I
    goto :goto_0
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 124
    return-void
.end method
