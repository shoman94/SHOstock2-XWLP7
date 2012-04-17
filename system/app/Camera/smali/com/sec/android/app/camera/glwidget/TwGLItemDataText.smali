.class public Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItemDataText.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
#the value of this static final field might be set in the static constructor
.field public static final BLUE_TEXT_COLOR:I = 0x0

.field private static final DATA_FONT_SIZE:F = 22.0f

.field private static final TAG:Ljava/lang/String; = "TwGLItemDataText"

.field public static final WHITE_TEXT_COLOR:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCommandId:I

.field private mText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0xdc

    .line 41
    const/4 v0, 0x0

    const/16 v1, 0xc0

    invoke-static {v3, v0, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->BLUE_TEXT_COLOR:I

    .line 42
    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFI)V
    .locals 6
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "commandId"

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 64
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 65
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCommandId:I

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->refreshView()V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFI)V
    .locals 1
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "commandId"

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 53
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 54
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCommandId:I

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->refreshView()V

    .line 59
    return-void
.end method

.method private refreshView()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->resetSize()V

    .line 87
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    instance-of v0, v0, Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->resetSize()V

    .line 91
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCommandId:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setDraggable(Z)V

    .line 94
    :cond_2
    return-void
.end method

.method private updateText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "TwGLItemDataText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 79
    return-void
.end method

.method protected getView()Lcom/sec/android/glview/TwGLView;
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v9

    .line 119
    .local v9, menuid:I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v10

    .line 120
    .local v10, modeid:I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v12

    .line 121
    .local v12, selectedCommandId:I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v11

    .line 122
    .local v11, res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v11, :cond_2

    .line 123
    const-string v0, "TwGLItemDataText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing resource for CommandID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    const/16 v0, 0x29

    if-ne v9, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 132
    :cond_0
    const/16 v0, 0x27

    if-ne v9, v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    return-object v0

    .line 125
    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->getHeight()F

    move-result v5

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v6, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41b0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->BLUE_TEXT_COLOR:I

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 6
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 97
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isActivityDestoying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCommandId:I

    if-ne v3, v4, :cond_0

    .line 102
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    .line 103
    .local v1, selectedCommandId:I
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v0

    .line 104
    .local v0, res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v0, :cond_2

    .line 105
    const-string v3, "TwGLItemDataText"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing resource for CommandID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_2
    const/16 v3, 0x29

    if-ne p1, v3, :cond_3

    const/16 v3, 0x3e9

    if-ne p2, v3, :cond_3

    .line 108
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, text:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->updateText(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    .end local v2           #text:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->updateText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAlign(II)V
    .locals 1
    .parameter "hAlign"
    .parameter "vAlign"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 155
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 149
    :cond_0
    return-void
.end method
