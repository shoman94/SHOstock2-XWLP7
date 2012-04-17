.class public Lcom/android/email/OneTimeInitializer;
.super Landroid/content/BroadcastReceiver;
.source "OneTimeInitializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 54
    const-string v1, "Email"

    const-string v2, "OneTimeInitializer: initializing..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/android/email/Preferences;->getOneTimeInitializationProgress()I

    move-result v1

    .line 59
    if-ge v1, v0, :cond_1

    .line 61
    invoke-static {p1}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-class v1, Lcom/android/email/service/EasAuthenticatorServiceAlternate;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/OneTimeInitializer;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 63
    const-class v1, Lcom/android/email/service/EasAuthenticatorService;

    invoke-direct {p0, p1, v1, v3}, Lcom/android/email/OneTimeInitializer;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 66
    :cond_0
    invoke-static {p1}, Lcom/android/email/ExchangeUtils;->enableEasCalendarSync(Landroid/content/Context;)V

    .line 85
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/email/Preferences;->setOneTimeInitializationProgress(I)V

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0, v3}, Lcom/android/email/OneTimeInitializer;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 87
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 4
    .parameter "context"
    .parameter
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 90
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    .local v0, c:Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz p3, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 96
    return-void

    .line 91
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/email/OneTimeInitializer;->initialize(Landroid/content/Context;)V

    .line 46
    :cond_0
    return-void
.end method
