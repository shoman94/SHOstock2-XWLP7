.class public Lcom/android/systemui/statusbar/policy/AirplaneModeController;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneModeController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;


# instance fields
.field private mAirplaneMode:Z

.field private mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

.field private mCheckBox:Landroid/widget/CompoundButton;

.field private mContext:Landroid/content/Context;

.field private mIsWaitingForEcmExit:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V
    .locals 4
    .parameter "context"
    .parameter "checkbox"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 48
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mIsWaitingForEcmExit:Z

    .line 55
    new-instance v1, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;-><init>(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->getAirplaneMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mAirplaneMode:Z

    .line 72
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mCheckBox:Landroid/widget/CompoundButton;

    .line 73
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mAirplaneMode:Z

    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 74
    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V
    .locals 2
    .parameter "context"
    .parameter "button"

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mIsWaitingForEcmExit:Z

    .line 55
    new-instance v0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AirplaneModeController$1;-><init>(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mContext:Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->getAirplaneMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mAirplaneMode:Z

    .line 90
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;)V

    .line 92
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mAirplaneMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/AirplaneModeController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mAirplaneMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mCheckBox:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/AirplaneModeController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAirplaneMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setAirplaneMode(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 163
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mIsWaitingForEcmExit:Z

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 169
    .local v0, ecmDialogIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 174
    .end local v0           #ecmDialogIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->unsafe(Z)V

    goto :goto_0
.end method

.method private unsafe(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 179
    new-instance v0, Lcom/android/systemui/statusbar/policy/AirplaneModeController$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/AirplaneModeController$2;-><init>(Lcom/android/systemui/statusbar/policy/AirplaneModeController;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 120
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mAirplaneMode:Z

    if-eq p2, v0, :cond_0

    .line 125
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->setAirplaneMode(Z)V

    .line 127
    :cond_0
    return-void
.end method

.method public onClick(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->setAirplaneMode(Z)V

    .line 98
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    const-string v3, "state"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 135
    .local v1, enabled:Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mAirplaneMode:Z

    if-eq v1, v3, :cond_1

    .line 136
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mAirplaneMode:Z

    .line 138
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mCheckBox:Landroid/widget/CompoundButton;

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    if-eqz v3, :cond_1

    .line 142
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 155
    .end local v1           #enabled:Z
    :cond_1
    :goto_1
    return-void

    .line 142
    .restart local v1       #enabled:Z
    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    .line 146
    .end local v1           #enabled:Z
    :cond_3
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    const-string v3, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mIsWaitingForEcmExit:Z

    if-eqz v3, :cond_1

    .line 151
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mIsWaitingForEcmExit:Z

    .line 152
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->unsafe(Z)V

    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    return-void
.end method
