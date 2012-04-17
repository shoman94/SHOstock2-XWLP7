.class public Lcom/android/systemui/statusbar/policy/DoNotDisturbController;
.super Ljava/lang/Object;
.source "DoNotDisturbController.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;


# instance fields
.field private mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

.field private mCheckBox:Landroid/widget/CompoundButton;

.field private mContext:Landroid/content/Context;

.field private mDoNotDisturb:Z

.field mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V
    .locals 3
    .parameter "context"
    .parameter "checkbox"

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    .line 120
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "do_not_disturb"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    .line 124
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mCheckBox:Landroid/widget/CompoundButton;

    .line 125
    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V
    .locals 1
    .parameter "context"
    .parameter "button"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 69
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "do_not_disturb"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    .line 62
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 64
    const-string v0, "STATUSBAR-DoNotDisturbController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() - mDoNotDisturb : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 134
    if-nez p2, :cond_1

    const/4 v1, 0x1

    .line 135
    .local v1, value:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-eq v1, v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "do_not_disturb"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    .line 134
    .end local v1           #value:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 4
    .parameter "state"

    .prologue
    .line 72
    const-string v1, "STATUSBAR-DoNotDisturbController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick() - state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-eq p1, v1, :cond_0

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "do_not_disturb"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    if-eqz p1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 86
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 83
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "prefs"
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 143
    const-string v2, "do_not_disturb"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 145
    .local v0, val:Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    if-eq v0, v2, :cond_1

    .line 146
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mDoNotDisturb:Z

    .line 147
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mCheckBox:Landroid/widget/CompoundButton;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 149
    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 153
    return-void
.end method
