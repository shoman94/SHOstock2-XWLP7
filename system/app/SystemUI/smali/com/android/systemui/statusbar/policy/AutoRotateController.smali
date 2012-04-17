.class public Lcom/android/systemui/statusbar/policy/AutoRotateController;
.super Ljava/lang/Object;
.source "AutoRotateController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/AutoRotateController$AutoRotationObserver;
    }
.end annotation


# instance fields
.field private mAutoRotation:Z

.field private mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/AutoRotateController$AutoRotationObserver;

.field private mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

.field private mCheckBox:Landroid/widget/CompoundButton;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V
    .locals 1
    .parameter "context"
    .parameter "checkbox"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/policy/AutoRotateController$AutoRotationObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AutoRotateController$AutoRotationObserver;-><init>(Lcom/android/systemui/statusbar/policy/AutoRotateController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/AutoRotateController$AutoRotationObserver;

    .line 113
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mContext:Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->getAutoRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    .line 115
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mCheckBox:Landroid/widget/CompoundButton;

    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 117
    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V
    .locals 1
    .parameter "context"
    .parameter "button"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/policy/AutoRotateController$AutoRotationObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AutoRotateController$AutoRotationObserver;-><init>(Lcom/android/systemui/statusbar/policy/AutoRotateController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/AutoRotateController$AutoRotationObserver;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/AutoRotateController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/AutoRotateController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/AutoRotateController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->getAutoRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/AutoRotateController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    return-object v0
.end method

.method private getAutoRotation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 128
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "accelerometer_rotation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setAutoRotation(Z)V
    .locals 1
    .parameter "autorotate"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    .line 133
    new-instance v0, Lcom/android/systemui/statusbar/policy/AutoRotateController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/AutoRotateController$1;-><init>(Lcom/android/systemui/statusbar/policy/AutoRotateController;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/AutoRotateController$AutoRotationObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 87
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/AutoRotateController$AutoRotationObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->getAutoRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 83
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    if-eq p2, v0, :cond_0

    .line 122
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->setAutoRotation(Z)V

    .line 124
    :cond_0
    return-void
.end method

.method public onClick(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 90
    const-string v0, "STATUSBAR-AutoRotateController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() - state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    if-eq p1, v0, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->setAutoRotation(Z)V

    .line 94
    :cond_0
    return-void
.end method
