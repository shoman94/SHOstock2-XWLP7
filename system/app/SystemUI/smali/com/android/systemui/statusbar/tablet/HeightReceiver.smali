.class public Lcom/android/systemui/statusbar/tablet/HeightReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeightReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mHeight:I

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mPlugged:Z

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mWindowManager:Landroid/view/WindowManager;

    .line 49
    return-void
.end method

.method private setPlugged(Z)V
    .locals 0
    .parameter "plugged"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mPlugged:Z

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->updateHeight()V

    .line 77
    return-void
.end method


# virtual methods
.method public addOnBarHeightChangedListener(Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mHeight:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;->onBarHeightChanged(I)V

    .line 54
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mHeight:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    .local v0, plugged:Z
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->setPlugged(Z)V

    .line 65
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 71
    .local v1, val:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method public updateHeight()V
    .locals 12

    .prologue
    .line 80
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 82
    .local v7, res:Landroid/content/res/Resources;
    const/4 v3, -0x1

    .line 83
    .local v3, height:I
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mPlugged:Z

    if-eqz v9, :cond_0

    .line 84
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 85
    .local v5, metrics:Landroid/util/DisplayMetrics;
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 86
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 89
    iget v9, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 90
    .local v8, shortSide:I
    invoke-virtual {v1}, Landroid/view/Display;->getRawExternalWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/Display;->getRawExternalHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 92
    .local v2, externalShortSide:I
    sub-int v3, v8, v2

    .line 95
    .end local v1           #display:Landroid/view/Display;
    .end local v2           #externalShortSide:I
    .end local v5           #metrics:Landroid/util/DisplayMetrics;
    .end local v8           #shortSide:I
    :cond_0
    const v9, 0x105000a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 97
    .local v6, minHeight:I
    if-ge v3, v6, :cond_1

    .line 98
    move v3, v6

    .line 100
    :cond_1
    const-string v9, "StatusBar.HeightReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Resizing status bar plugged="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mPlugged:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " height="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " old="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput v3, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mHeight:I

    .line 104
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 105
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 106
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;

    invoke-interface {v9, v3}, Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;->onBarHeightChanged(I)V

    .line 105
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    :cond_2
    return-void
.end method
