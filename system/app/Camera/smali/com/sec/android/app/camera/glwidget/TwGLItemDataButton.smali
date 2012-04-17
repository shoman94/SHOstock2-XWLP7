.class public Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItemDataButton.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "TwGLItemDataButton"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCommandId:I

.field private mGivenSize:Z

.field private mHeight:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFI)V
    .locals 7
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "commandId"

    .prologue
    const/4 v6, 0x0

    .line 44
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 28
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mWidth:F

    .line 29
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mHeight:F

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mGivenSize:Z

    .line 46
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    .line 47
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 48
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 51
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mWidth:F

    .line 52
    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mHeight:F

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mGivenSize:Z

    .line 55
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->refreshButton()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFI)V
    .locals 2
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "commandId"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 28
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mWidth:F

    .line 29
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mHeight:F

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mGivenSize:Z

    .line 35
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    .line 36
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 37
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->refreshButton()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    return-object v0
.end method

.method private refreshButton()V
    .locals 15

    .prologue
    const/16 v14, 0x63

    const v9, 0x7f020194

    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v10

    .line 122
    .local v10, menuid:I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v11

    .line 123
    .local v11, modeid:I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v13

    .line 124
    .local v13, selectedCommandId:I
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    if-ne v0, v14, :cond_0

    .line 125
    const/16 v13, 0x63

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v0, v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v12

    .line 129
    .local v12, res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v12, :cond_2

    .line 130
    const-string v0, "TwGLItemDataButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing resource for CommandID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v0, :cond_3

    .line 135
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mGivenSize:Z

    if-eqz v0, :cond_4

    .line 136
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mHeight:F

    iget v6, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v7, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v8, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    move v3, v2

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 140
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v0, :cond_5

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v2, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v3, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 149
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 184
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    if-ne v0, v14, :cond_1

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    goto :goto_0

    .line 138
    :cond_4
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    move v3, v2

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto :goto_1

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v2, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v3, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 64
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 65
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isActivityDestoying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    if-ne v0, v1, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->refreshButton()V

    goto :goto_0
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 5
    .parameter "gl"

    .prologue
    .line 223
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 224
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 226
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v4}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :cond_0
    monitor-exit v3

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setDim(Z)V
    .locals 1
    .parameter "dim"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 107
    :cond_0
    return-void
.end method

.method public setHighlightVisibility(Z)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 101
    :cond_0
    return-void
.end method

.method public setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V
    .locals 9
    .parameter "l"

    .prologue
    const v8, 0x7f020194

    .line 191
    if-nez p1, :cond_1

    .line 192
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 203
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    .line 204
    .local v0, menuid:I
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v1

    .line 205
    .local v1, modeid:I
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v3

    .line 206
    .local v3, selectedCommandId:I
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    const/16 v5, 0x63

    if-ne v4, v5, :cond_0

    .line 207
    const/16 v3, 0x63

    .line 210
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v2

    .line 212
    .local v2, res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-eqz p1, :cond_2

    .line 213
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget v5, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v6, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v7, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 218
    :goto_1
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 219
    return-void

    .line 194
    .end local v0           #menuid:I
    .end local v1           #modeid:I
    .end local v2           #res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v3           #selectedCommandId:I
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v5, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    goto :goto_0

    .line 215
    .restart local v0       #menuid:I
    .restart local v1       #modeid:I
    .restart local v2       #res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .restart local v3       #selectedCommandId:I
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget v5, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v6, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v7, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    goto :goto_1
.end method

.method public setResourceOffset(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getWidth()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getHeight()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 111
    :cond_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 117
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setText(Lcom/sec/android/glview/TwGLText;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 77
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public setTextAlign(II)V
    .locals 1
    .parameter "hAlign"
    .parameter "vAlign"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    .line 89
    :cond_0
    return-void
.end method

.method public setTextPosition(FF)V
    .locals 1
    .parameter "left"
    .parameter "top"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 83
    :cond_0
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 95
    :cond_0
    return-void
.end method
