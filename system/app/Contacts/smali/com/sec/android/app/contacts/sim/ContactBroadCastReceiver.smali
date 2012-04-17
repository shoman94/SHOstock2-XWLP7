.class public Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContactBroadCastReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isSimDBInitializeNeeded()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 85
    const-string v6, "ro.runtime.firstboot"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, firstBootTime:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 87
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v6, "runtime_firstboot_time"

    const-string v7, "0"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, runtimeBootTime:Ljava/lang/String;
    const-string v6, "sim_db_ready"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 89
    .local v4, simDbReady:I
    const-string v6, "ContactBroadCastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ firstBootTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " runtimeBootTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " simDbReady : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 92
    :cond_0
    if-eqz v4, :cond_1

    .line 93
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "sim_db_ready"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v6, "adn_editable"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v5, 0x1

    .line 101
    :cond_2
    return v5
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v1, "com.samsung.intent.action.SIM_DB_INIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->isSimDBInitializeNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    const-string v1, "op"

    const/16 v2, 0x270f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string v1, "com.samsung.intent.action.PB_SYNC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    const-string v1, "op"

    const/16 v2, 0x1e61

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 75
    :cond_2
    const-string v1, "android.intent.action.FDN_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    const-string v1, "op"

    const/16 v2, 0x1a0a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
