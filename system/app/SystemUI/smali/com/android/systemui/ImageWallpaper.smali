.class public Lcom/android/systemui/ImageWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ImageWallpaper$DrawableEngine;
    }
.end annotation


# instance fields
.field mIsHwAccelerated:Z

.field mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 93
    return-void
.end method

.method private static isEmulator()Z
    .locals 3

    .prologue
    .line 86
    const-string v0, "1"

    const-string v1, "ro.kernel.qemu"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 72
    const-string v2, "wallpaper"

    invoke-virtual {p0, v2}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    iput-object v2, p0, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 76
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->isEmulator()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 79
    .local v1, windowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 80
    .local v0, display:Landroid/view/Display;
    invoke-static {v0}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    .line 83
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #windowManager:Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;-><init>(Lcom/android/systemui/ImageWallpaper;)V

    return-object v0
.end method
