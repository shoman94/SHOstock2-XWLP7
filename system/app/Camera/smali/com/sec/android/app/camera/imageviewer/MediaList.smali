.class public Lcom/sec/android/app/camera/imageviewer/MediaList;
.super Ljava/lang/Object;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;
    }
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "coalesce(date_modified , datetaken) DESC"

.field private static final IMAGE_ORIENTATION:I = 0x5

.field private static final MEDIA_DATA_TAKEN:I = 0x4

.field private static final MEDIA_ID_INDEX:I = 0x0

.field private static final MEDIA_MIME_TYPE_INDEX:I = 0x3

.field private static final MEDIA_PATH_INDEX:I = 0x1

.field private static final MEDIA_TITLE_INDEX:I = 0x2

.field public static final MEDIA_TYPE_IMAGE:I = 0x0

.field public static final MEDIA_TYPE_VIDEO:I = 0x1

.field private static final PROJECTION_IMAGES:[Ljava/lang/String; = null

.field private static final PROJECTION_VIDEOS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MediaList"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "datetaken"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_IMAGES:[Ljava/lang/String;

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "datetaken"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_VIDEOS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "contentResolver"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    .line 69
    iput-object p1, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mContentResolver:Landroid/content/ContentResolver;

    .line 70
    return-void
.end method

.method public static getVideoThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "filename"
    .parameter "width"
    .parameter "height"
    .parameter "autoRotation"

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 295
    .local v2, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 296
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, p1, p2, v4, v5}, Landroid/media/MediaMetadataRetriever;->setVideoSize(IIZZ)V

    .line 297
    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 300
    .local v3, rotation:I
    packed-switch v3, :pswitch_data_0

    .line 312
    const/4 v3, 0x0

    .line 315
    :goto_0
    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 316
    if-nez p3, :cond_0

    if-eqz v3, :cond_0

    .line 317
    rsub-int v4, v3, 0x168

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 325
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 330
    .end local v3           #rotation:I
    :goto_1
    return-object v0

    .line 302
    .restart local v3       #rotation:I
    :pswitch_0
    const/16 v3, 0x5a

    .line 303
    goto :goto_0

    .line 305
    :pswitch_1
    const/16 v3, 0xb4

    .line 306
    goto :goto_0

    .line 308
    :pswitch_2
    const/16 v3, 0x10e

    .line 309
    goto :goto_0

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 319
    .end local v1           #ex:Ljava/lang/RuntimeException;
    .end local v3           #rotation:I
    :catch_1
    move-exception v1

    .line 320
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 326
    :catch_2
    move-exception v1

    .line 327
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 321
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 322
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 325
    :try_start_5
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 326
    :catch_4
    move-exception v1

    .line 327
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 324
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    .line 325
    :try_start_6
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 328
    :goto_2
    throw v4

    .line 326
    :catch_5
    move-exception v1

    .line 327
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    .line 195
    :cond_0
    return-void
.end method

.method public deleteFile(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 259
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    #getter for: Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->id:J
    invoke-static {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->access$000(Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;)J

    move-result-wide v0

    .line 223
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getImagePath(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 202
    const-string v0, "MediaList"

    const-string v1, "getImagePath"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->path:Ljava/lang/String;

    .line 207
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->initialize()V

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 211
    const-string v0, "MediaList"

    const-string v1, "getMimeType"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->mimeType:Ljava/lang/String;

    .line 216
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrientation(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->orientation:I

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->title:Ljava/lang/String;

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->mimeType:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getUri(I)Landroid/net/Uri;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->getUri(Z)Landroid/net/Uri;

    move-result-object v0

    .line 244
    :goto_1
    return-object v0

    .line 242
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 244
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getVideoThumbnail(III)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getImagePath(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, filePath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 270
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 272
    .local v3, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 273
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p2, p3, v4, v5}, Landroid/media/MediaMetadataRetriever;->setVideoSize(IIZZ)V

    .line 274
    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 281
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    :goto_0
    return-object v0

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 275
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 276
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    :try_start_3
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 282
    :catch_2
    move-exception v1

    .line 283
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 277
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 278
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 281
    :try_start_5
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 282
    :catch_4
    move-exception v1

    .line 283
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 280
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    .line 281
    :try_start_6
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 284
    :goto_1
    throw v4

    .line 282
    :catch_5
    move-exception v1

    .line 283
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->initialize(Z)V

    .line 73
    return-void
.end method

.method public initialize(Z)V
    .locals 15
    .parameter "bIsSNS"

    .prologue
    .line 75
    const/4 v3, 0x0

    .line 77
    .local v3, where:Ljava/lang/String;
    const/4 v11, 0x0

    .line 79
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .local v14, listAdded:I
    :goto_0
    const/4 v0, 0x2

    if-ge v14, v0, :cond_7

    .line 80
    if-nez v14, :cond_3

    .line 81
    if-eqz p1, :cond_1

    .line 79
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 84
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%DCIM/Camera/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (mime_type in (?, ?))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "video/mp4"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "video/3gpp"

    aput-object v1, v4, v0

    .line 94
    .local v4, acceptableVidFormat:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_VIDEOS:[Ljava/lang/String;

    const-string v5, "coalesce(date_modified , datetaken) DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    .line 132
    .end local v4           #acceptableVidFormat:[Ljava/lang/String;
    :cond_2
    :goto_2
    if-eqz v11, :cond_0

    .line 134
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 135
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 102
    :cond_3
    const/4 v0, 0x1

    if-ne v14, v0, :cond_2

    .line 103
    if-eqz p1, :cond_4

    .line 105
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%ShareShot/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 125
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND mime_type=\'image/jpeg\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    iget-object v5, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "coalesce(date_modified , datetaken) DESC"

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_2

    .line 115
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%DCIM/Camera/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_3

    .line 139
    :cond_5
    const/4 v0, -0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->move(I)Z

    .line 141
    const/4 v12, 0x0

    .local v12, i:I
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 142
    new-instance v13, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    invoke-direct {v13, p0, v11}, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;-><init>(Lcom/sec/android/app/camera/imageviewer/MediaList;Landroid/database/Cursor;)V

    .line 143
    .local v13, item:Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 146
    .end local v13           #item:Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 149
    .end local v12           #i:I
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 150
    const-string v0, "MediaList"

    const-string v1, "mList is Empty"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_5
    return-void

    .line 153
    :cond_8
    if-eqz p1, :cond_9

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/imageviewer/MediaList$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/imageviewer/MediaList$1;-><init>(Lcom/sec/android/app/camera/imageviewer/MediaList;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_5

    .line 169
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/imageviewer/MediaList$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/imageviewer/MediaList$2;-><init>(Lcom/sec/android/app/camera/imageviewer/MediaList;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_5

    .line 120
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 110
    :catch_1
    move-exception v0

    goto/16 :goto_3

    .line 99
    :catch_2
    move-exception v0

    goto/16 :goto_2
.end method
