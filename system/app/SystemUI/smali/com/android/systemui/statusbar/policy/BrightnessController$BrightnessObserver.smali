.class Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 126
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 133
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$100(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 135
    .local v0, brightness:I
    add-int/lit8 v1, v0, -0x1e

    .line 136
    .local v1, val:I
    if-gez v1, :cond_0

    .line 137
    const/4 v1, 0x0

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/policy/BrightnessController;

    #getter for: Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BrightnessController;->access$100(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setValue(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0           #brightness:I
    .end local v1           #val:I
    :cond_1
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v2

    goto :goto_0
.end method
