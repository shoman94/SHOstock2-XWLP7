.class public Lcom/android/systemui/statusbar/policy/SyncController;
.super Ljava/lang/Object;
.source "SyncController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;


# instance fields
.field private mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V
    .locals 1
    .parameter "context"
    .parameter "button"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/policy/SyncController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SyncController$1;-><init>(Lcom/android/systemui/statusbar/policy/SyncController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SyncController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SyncController;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SyncController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SyncController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/SyncController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SyncController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    return-object v0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SyncController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SyncController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SyncController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SyncController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 88
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SyncController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SyncController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 6
    .parameter "state"

    .prologue
    .line 101
    const-string v3, "STATUSBAR-SyncController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick() - state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    move v0, p1

    .line 106
    .local v0, buttonStatus:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SyncController;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 108
    .local v1, connManager:Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    .line 110
    .local v2, sync:Z
    new-instance v3, Lcom/android/systemui/statusbar/policy/SyncController$2;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/systemui/statusbar/policy/SyncController$2;-><init>(Lcom/android/systemui/statusbar/policy/SyncController;ZZ)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/SyncController$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    return-void
.end method
