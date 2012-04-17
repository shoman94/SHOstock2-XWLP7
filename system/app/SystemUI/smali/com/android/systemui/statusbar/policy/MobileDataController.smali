.class public Lcom/android/systemui/statusbar/policy/MobileDataController;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;
    }
.end annotation


# instance fields
.field private isAirPlaneMode:I

.field private mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

.field private mCheckBox:Landroid/widget/CompoundButton;

.field private mContext:Landroid/content/Context;

.field private mMobileData:Z

.field private mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;

.field mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V
    .locals 2
    .parameter "context"
    .parameter "button"

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;-><init>(Lcom/android/systemui/statusbar/policy/MobileDataController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->getMobileData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    .line 85
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;)V

    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 92
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/MobileDataController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/MobileDataController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/MobileDataController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MobileDataController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/MobileDataController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MobileDataController;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mCheckBox:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/MobileDataController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/MobileDataController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private getMobileData()Z
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 190
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .line 193
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSimReady()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 209
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 210
    .local v0, SimState:I
    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_2

    .line 212
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080093

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 214
    const v3, 0x7f080094

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 215
    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/statusbar/policy/MobileDataController$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/MobileDataController$1;-><init>(Lcom/android/systemui/statusbar/policy/MobileDataController;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 221
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v3, :cond_1

    .line 222
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapse()V

    .line 226
    :cond_1
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 227
    .local v1, alert:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 228
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 229
    const/4 v3, 0x0

    .line 231
    .end local v1           #alert:Landroid/app/AlertDialog;
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    return v3
.end method

.method private onDisplayMobileDataOffAlert()V
    .locals 7

    .prologue
    .line 247
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 249
    .local v3, mMobileDataAlertLayout:Landroid/view/LayoutInflater;
    const v5, 0x7f03001d

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 252
    .local v4, mMobileDataAlertView:Landroid/view/View;
    const v5, 0x7f0e0095

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 254
    .local v2, mDisableAlertCheckBox:Landroid/widget/CheckBox;
    new-instance v5, Lcom/android/systemui/statusbar/policy/MobileDataController$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/MobileDataController$2;-><init>(Lcom/android/systemui/statusbar/policy/MobileDataController;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 268
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 269
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f080088

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 270
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 271
    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/statusbar/policy/MobileDataController$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/MobileDataController$3;-><init>(Lcom/android/systemui/statusbar/policy/MobileDataController;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/systemui/statusbar/policy/MobileDataController$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/MobileDataController$4;-><init>(Lcom/android/systemui/statusbar/policy/MobileDataController;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 285
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v5, :cond_0

    .line 286
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v5}, Landroid/app/StatusBarManager;->collapse()V

    .line 290
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 291
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 292
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 293
    return-void
.end method

.method private setMobileData(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quickpanel_mobiledata_checked"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 199
    .local v0, mChecked:I
    const-string v1, "STATUSBAR-MobileDataController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mobile data waring checked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-nez p1, :cond_0

    if-nez v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->onDisplayMobileDataOffAlert()V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    .line 236
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 238
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 239
    const-string v1, "STATUSBAR-MobileDataController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMobileDataEnabled : set to  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    const-string v1, "STATUSBAR-MobileDataController"

    const-string v2, "setMobileDataEnabled : connectivityManager = null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    const-string v1, "STATUSBAR-MobileDataController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() : mMobileData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    if-eq p2, v0, :cond_0

    .line 183
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MobileDataController;->setMobileData(Z)V

    .line 185
    :cond_0
    return-void
.end method

.method public onClick(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I

    .line 133
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    if-eq p1, v0, :cond_0

    .line 138
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->setMobileData(Z)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, intentAction:Ljava/lang/String;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->getMobileData()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    .line 152
    const-string v3, "STATUSBAR-MobileDataController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: ACTION_AIRPLANE_MODE_CHANGED, isAirPlaneMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mMobileData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I

    if-ne v3, v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
