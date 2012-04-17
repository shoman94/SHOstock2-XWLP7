.class public Lcom/sec/android/app/camera/CaptureData;
.super Ljava/lang/Object;
.source "CaptureData.java"


# instance fields
.field private mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

.field private mCaptureOnlyData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 55
    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 57
    :cond_0
    return-void
.end method

.method public getCaptureBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 65
    const/16 v0, 0x1e0

    const/16 v1, 0x168

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureData()[B
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    return-object v0
.end method

.method public setCaptureData([BI)V
    .locals 6
    .parameter "data"
    .parameter "sampleSize"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x1e0

    const/16 v3, 0x168

    .line 30
    iput-object p1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    .line 32
    iget-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    if-eqz v1, :cond_1

    .line 33
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 34
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 35
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 36
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 37
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 38
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 40
    iget-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    iget-object v2, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    array-length v2, v2

    invoke-static {v1, v5, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 41
    iget-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 42
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 47
    .end local v0           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
