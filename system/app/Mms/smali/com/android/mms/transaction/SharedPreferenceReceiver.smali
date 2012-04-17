.class public Lcom/android/mms/transaction/SharedPreferenceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SharedPreferenceReceiver.java"


# instance fields
.field private mBooleanValue:Z

.field private mContext:Landroid/content/Context;

.field mEditor:Landroid/content/SharedPreferences$Editor;

.field private mIntValue:I

.field private mKey:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mStringValue:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private writeOnSharedPreference(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 57
    const-string v0, "STRING"

    iget-object v1, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const-string v0, "VALUE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mStringValue:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mStringValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mStringValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    iget-object v0, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MessagingCscSetting;->loadCscToDefaultSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void

    .line 61
    :cond_1
    const-string v0, "INT"

    iget-object v1, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    const-string v0, "VALUE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mIntValue:I

    .line 63
    iget-object v0, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mKey:Ljava/lang/String;

    iget v2, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mIntValue:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 64
    :cond_2
    const-string v0, "BOOLEAN"

    iget-object v1, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "VALUE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mBooleanValue:Z

    .line 66
    iget-object v0, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mBooleanValue:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mContext:Landroid/content/Context;

    .line 44
    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SharedPreferenceReceiver] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mPrefs:Landroid/content/SharedPreferences;

    .line 47
    iget-object v0, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 49
    const-string v0, "TYPE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mType:Ljava/lang/String;

    .line 50
    const-string v0, "KEY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SharedPreferenceReceiver;->mKey:Ljava/lang/String;

    .line 52
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/SharedPreferenceReceiver;->writeOnSharedPreference(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
