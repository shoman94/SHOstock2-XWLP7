.class public Lcom/android/email/ResourceHelper;
.super Ljava/lang/Object;
.source "ResourceHelper.java"


# static fields
.field private static sInstance:Lcom/android/email/ResourceHelper;


# instance fields
.field private final mAccountColorArray:Landroid/content/res/TypedArray;

.field private final mAccountColorArray2:Landroid/content/res/TypedArray;

.field private final mAccountColorNinePatch:[Landroid/graphics/NinePatch;

.field private final mAccountColors:Landroid/content/res/TypedArray;

.field private final mContext:Landroid/content/Context;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/ResourceHelper;->mContext:Landroid/content/Context;

    .line 53
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/ResourceHelper;->mResources:Landroid/content/res/Resources;

    .line 54
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mResources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/email/activity/ActivityResourceInterface;->getId_combined_view_account_colors()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColorArray:Landroid/content/res/TypedArray;

    .line 56
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mResources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/email/activity/ActivityResourceInterface;->getId_combined_view_account_colors_2()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColorArray2:Landroid/content/res/TypedArray;

    .line 61
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mResources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/email/activity/ActivityResourceInterface;->getId_account_colors()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColors:Landroid/content/res/TypedArray;

    .line 63
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColors:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v2, v2, [Landroid/graphics/NinePatch;

    iput-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColorNinePatch:[Landroid/graphics/NinePatch;

    .line 64
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColors:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/email/ResourceHelper;->mAccountColorArray:Landroid/content/res/TypedArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    .local v0, colorBitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/email/ResourceHelper;->mAccountColorNinePatch:[Landroid/graphics/NinePatch;

    new-instance v3, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    aput-object v3, v2, v1

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0           #colorBitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 73
    const-class v1, Lcom/android/email/ResourceHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/ResourceHelper;->sInstance:Lcom/android/email/ResourceHelper;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/email/ResourceHelper;

    invoke-direct {v0, p0}, Lcom/android/email/ResourceHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/ResourceHelper;->sInstance:Lcom/android/email/ResourceHelper;

    .line 76
    :cond_0
    sget-object v0, Lcom/android/email/ResourceHelper;->sInstance:Lcom/android/email/ResourceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAccountColor(J)I
    .locals 3
    .parameter "accountId"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/email/ResourceHelper;->mAccountColors:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/email/ResourceHelper;->getAccountColorIndex(J)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method public getAccountColorId(J)I
    .locals 3
    .parameter "accountId"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/ResourceHelper;->mAccountColorArray2:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/email/ResourceHelper;->getAccountColorIndex(J)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method getAccountColorIndex(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/email/ResourceHelper;->mAccountColors:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    int-to-long v0, v0

    rem-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method public getAccountColorNinePatch(J)Landroid/graphics/NinePatch;
    .locals 2
    .parameter "accountId"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/email/ResourceHelper;->mAccountColorNinePatch:[Landroid/graphics/NinePatch;

    invoke-virtual {p0, p1, p2}, Lcom/android/email/ResourceHelper;->getAccountColorIndex(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
