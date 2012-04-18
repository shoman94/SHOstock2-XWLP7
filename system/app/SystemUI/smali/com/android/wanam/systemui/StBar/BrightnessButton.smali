.class public Lcom/android/wanam/systemui/StBar/BrightnessButton;
.super Lcom/android/wanam/systemui/StBar/PowerButton;
.source "BrightnessButton.java"


# static fields
.field private static final AUTO_BACKLIGHT:I = -0x1

.field private static final CM_MODE_AUTO_LOW_MAX:I = 0x2

.field private static final CM_MODE_AUTO_MIN_DEF_MAX:I = 0x0

.field private static final CM_MODE_AUTO_MIN_LOW_MID_HIGH_MAX:I = 0x1

.field private static final CM_MODE_MIN_MAX:I = 0x3

.field private static final DEFAULT_BACKLIGHT:I = 0x66

.field private static final HIGH_BACKLIGHT:I = 0xbf

.field private static final LOW_BACKLIGHT:I = 0x3f

.field private static final MAX_BACKLIGHT:I = 0xff

.field private static final MID_BACKLIGHT:I = 0x7f

.field private static final MIN_BACKLIGHT:I = 0x1e

.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    sget-object v0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerButton;-><init>()V

    const-string v0, "toggleBrightness"

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getBrightnessState(Landroid/content/Context;)I
    .locals 9

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0}, Lcom/android/wanam/systemui/StBar/BrightnessButton;->getCurrentCMMode(Landroid/content/Context;)I

    move-result v1

    const/16 v6, 0x3f

    if-ge v0, v6, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/16 v6, 0x66

    if-lt v0, v6, :cond_0

    const/16 v6, 0x7f

    if-ge v0, v6, :cond_2

    if-eq v1, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    const/16 v2, 0xbf

    if-ge v0, v2, :cond_4

    if-ne v1, v5, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    const/16 v2, 0xff

    if-ge v0, v2, :cond_5

    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_0
.end method

.method private static getCurrentCMMode(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_brightness_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getMinBacklight(Landroid/content/Context;)I
    .locals 4

    const/16 v0, 0x1e

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "light_sensor_custom"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "light_screen_dim"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static getNextBrightnessValue(Landroid/content/Context;)I
    .locals 10

    const/16 v4, 0x66

    const/4 v9, 0x3

    const/16 v2, 0x3f

    const/4 v8, 0x2

    const/16 v3, 0xff

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0}, Lcom/android/wanam/systemui/StBar/BrightnessButton;->getCurrentCMMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/android/wanam/systemui/StBar/BrightnessButton;->isAutomaticModeSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/android/wanam/systemui/StBar/BrightnessButton;->isBrightnessSetToAutomatic(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v1, v8, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p0}, Lcom/android/wanam/systemui/StBar/BrightnessButton;->getMinBacklight(Landroid/content/Context;)I

    move-result v2

    goto :goto_0

    :cond_2
    if-ge v0, v2, :cond_4

    if-eq v1, v8, :cond_0

    if-ne v1, v9, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    if-ge v0, v4, :cond_8

    if-nez v1, :cond_5

    move v2, v4

    goto :goto_0

    :cond_5
    if-eq v1, v8, :cond_6

    if-ne v1, v9, :cond_7

    :cond_6
    move v2, v3

    goto :goto_0

    :cond_7
    const/16 v2, 0x7f

    goto :goto_0

    :cond_8
    const/16 v4, 0x7f

    if-ge v0, v4, :cond_a

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    const/16 v2, 0x7f

    goto :goto_0

    :cond_9
    move v2, v3

    goto :goto_0

    :cond_a
    const/16 v4, 0xbf

    if-ge v0, v4, :cond_c

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    const/16 v2, 0xbf

    goto :goto_0

    :cond_b
    move v2, v3

    goto :goto_0

    :cond_c
    if-ge v0, v3, :cond_d

    move v2, v3

    goto :goto_0

    :cond_d
    invoke-static {p0}, Lcom/android/wanam/systemui/StBar/BrightnessButton;->isAutomaticModeSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-eq v1, v9, :cond_e

    const/4 v2, -0x1

    goto :goto_0

    :cond_e
    if-eq v1, v8, :cond_0

    invoke-static {p0}, Lcom/android/wanam/systemui/StBar/BrightnessButton;->getMinBacklight(Landroid/content/Context;)I

    move-result v2

    goto :goto_0
.end method

.method private static isAutomaticModeSupported(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->SUPPORTS_AUTO_BACKLIGHT:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private static isBrightnessSetToAutomatic(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "PowerWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightnessMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    const v0, 0x30b0049

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 8

    iget-object v5, p0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/android/wanam/systemui/StBar/BrightnessButton;->getNextBrightnessValue(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x1

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v2}, Lcom/android/wanam/systemui/StBar/BrightnessButton;->isAutomaticModeSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    const-string v5, "screen_brightness"

    invoke-static {v1, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v5, "PowerWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updateState()V
    .locals 5

    const v4, 0x3020078

    const/4 v3, 0x5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wanam/systemui/StBar/BrightnessButton;->isBrightnessSetToAutomatic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3020075

    iput v1, p0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->mIcon:I

    iput v2, p0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->mState:I

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/android/wanam/systemui/StBar/BrightnessButton;->getBrightnessState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const v1, 0x3020077

    iput v1, p0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->mIcon:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->mState:I

    goto :goto_0

    :pswitch_1
    iput v4, p0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->mIcon:I

    iput v2, p0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->mState:I

    goto :goto_0

    :pswitch_2
    iput v4, p0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->mIcon:I

    iput v3, p0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->mState:I

    goto :goto_0

    :pswitch_3
    const v1, 0x3020076

    iput v1, p0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->mIcon:I

    iput v3, p0, Lcom/android/wanam/systemui/StBar/BrightnessButton;->mState:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
