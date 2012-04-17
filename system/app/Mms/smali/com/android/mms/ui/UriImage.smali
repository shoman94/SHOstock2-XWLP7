.class public Lcom/android/mms/ui/UriImage;
.super Ljava/lang/Object;
.source "UriImage.java"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private mPath:Ljava/lang/String;

.field private mRotate:I

.field private mSrc:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    .line 76
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 77
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 80
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 87
    :cond_2
    :goto_0
    invoke-static {p2, p1}, Lcom/android/mms/ui/UriImage;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    .line 89
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const/16 v2, 0x20

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    .line 99
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->decodeBoundsInfo()V

    .line 100
    return-void

    .line 83
    :cond_3
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromFile(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private decodeBoundsInfo()V
    .locals 6

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 153
    .local v1, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 154
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 155
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 156
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 157
    iget v3, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_2

    .line 158
    :cond_0
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 159
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 170
    :goto_0
    if-eqz v1, :cond_1

    .line 172
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 179
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_1
    return-void

    .line 161
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :try_start_2
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 162
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 164
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while opening stream"

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    if-eqz v1, :cond_1

    .line 172
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 173
    :catch_1
    move-exception v0

    .line 175
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 173
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v0

    .line 175
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 167
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v3, "Mms/image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 170
    if-eqz v1, :cond_1

    .line 172
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 173
    :catch_4
    move-exception v0

    .line 175
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 170
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 172
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 176
    :cond_3
    :goto_2
    throw v3

    .line 173
    :catch_5
    move-exception v0

    .line 175
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static getDegreeFromFile(Landroid/net/Uri;)I
    .locals 7
    .parameter "uri"

    .prologue
    .line 498
    const/4 v4, 0x0

    .line 501
    .local v4, path:Ljava/lang/String;
    const-string v5, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 502
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 510
    :goto_0
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .local v2, mExif:Landroid/media/ExifInterface;
    const/4 v0, 0x0

    .line 517
    .local v0, degree:I
    if-eqz v2, :cond_0

    .line 518
    const/4 v3, 0x0

    .line 520
    .local v3, orientation:I
    :try_start_1
    const-string v5, "Orientation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 524
    :goto_1
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 525
    packed-switch v3, :pswitch_data_0

    .line 536
    :pswitch_0
    const/4 v0, 0x0

    .line 541
    .end local v0           #degree:I
    .end local v2           #mExif:Landroid/media/ExifInterface;
    .end local v3           #orientation:I
    :cond_0
    :goto_2
    return v0

    .line 504
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 511
    :catch_0
    move-exception v1

    .line 512
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "Mms/image"

    const-string v6, "can not read exif"

    invoke-static {v5, v6, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 513
    const/4 v0, 0x0

    goto :goto_2

    .line 521
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #degree:I
    .restart local v2       #mExif:Landroid/media/ExifInterface;
    .restart local v3       #orientation:I
    :catch_1
    move-exception v1

    .line 522
    .local v1, ex:Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_1

    .line 527
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :pswitch_1
    const/16 v0, 0x5a

    .line 528
    goto :goto_2

    .line 530
    :pswitch_2
    const/16 v0, 0xb4

    .line 531
    goto :goto_2

    .line 533
    :pswitch_3
    const/16 v0, 0x10e

    .line 534
    goto :goto_2

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getResizedImageData(III)[B
    .locals 24
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"

    .prologue
    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    move/from16 v18, v0

    .line 306
    .local v18, outWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    move/from16 v17, v0

    .line 308
    .local v17, outHeight:I
    const/high16 v21, 0x3f80

    .line 309
    .local v21, scaleFactor:F
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 311
    .local v10, cscCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDTFeature()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isORGFeature()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "NEE"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string v3, "TLA"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string v3, "COV"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string v3, "HTS"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string v3, "VDS"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string v3, "TEN"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string v3, "NCM"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string v3, "ODK"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string v3, "TSF"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string v3, "ELS"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string v3, "DNF"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 323
    :cond_0
    move/from16 v0, v18

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    move/from16 v0, v18

    move/from16 v1, p1

    if-le v0, v1, :cond_8

    .line 324
    move/from16 v0, v18

    int-to-float v3, v0

    move/from16 v0, p1

    int-to-float v4, v0

    div-float v21, v3, v4

    .line 333
    :cond_1
    :goto_0
    const-string v3, "Mms:app"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 334
    const-string v3, "Mms/image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResizedImageData: wlimit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hlimit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sizeLimit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", initialScaleFactor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_2
    const/4 v12, 0x0

    .line 340
    .local v12, input:Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 342
    .local v15, os:Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x1

    .local v9, attempts:I
    move-object/from16 v16, v15

    .line 345
    .end local v15           #os:Ljava/io/ByteArrayOutputStream;
    .local v16, os:Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_0
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 346
    .local v14, options:Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v21

    float-to-int v3, v0

    iput v3, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 347
    if-eqz v12, :cond_3

    .line 349
    :try_start_1
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    :cond_3
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v12

    .line 356
    const/16 v19, 0x50

    .line 358
    .local v19, quality:I
    const/4 v3, 0x0

    :try_start_3
    invoke-static {v12, v3, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 360
    .local v2, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/UriImage;->mRotate:I

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 361
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 362
    .local v7, m:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/UriImage;->mRotate:I

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 363
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 365
    .end local v7           #m:Landroid/graphics/Matrix;
    :cond_4
    if-nez v2, :cond_c

    .line 366
    const/4 v3, 0x0

    .line 436
    if-eqz v12, :cond_5

    .line 438
    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 443
    :cond_5
    :goto_3
    if-eqz v16, :cond_6

    .line 445
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    :goto_4
    move-object/from16 v15, v16

    .line 448
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v14           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .end local v19           #quality:I
    .restart local v15       #os:Ljava/io/ByteArrayOutputStream;
    :cond_7
    :goto_5
    return-object v3

    .line 325
    .end local v9           #attempts:I
    .end local v12           #input:Ljava/io/InputStream;
    .end local v15           #os:Ljava/io/ByteArrayOutputStream;
    :cond_8
    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_1

    .line 326
    move/from16 v0, v17

    int-to-float v3, v0

    move/from16 v0, p2

    int-to-float v4, v0

    div-float v21, v3, v4

    goto/16 :goto_0

    .line 328
    :cond_9
    :goto_6
    move/from16 v0, v18

    int-to-float v3, v0

    div-float v3, v3, v21

    move/from16 v0, p1

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_a

    move/from16 v0, v17

    int-to-float v3, v0

    div-float v3, v3, v21

    move/from16 v0, p2

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 329
    :cond_a
    const/high16 v3, 0x4000

    mul-float v21, v21, v3

    goto :goto_6

    .line 350
    .restart local v9       #attempts:I
    .restart local v12       #input:Ljava/io/InputStream;
    .restart local v14       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v11

    .line 351
    .local v11, e:Ljava/io/IOException;
    :try_start_6
    const-string v3, "Mms/image"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 432
    .end local v11           #e:Ljava/io/IOException;
    .end local v14           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v11

    move-object/from16 v15, v16

    .line 433
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .local v11, e:Ljava/io/FileNotFoundException;
    .restart local v15       #os:Ljava/io/ByteArrayOutputStream;
    :goto_7
    :try_start_7
    const-string v3, "Mms/image"

    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 434
    const/4 v3, 0x0

    .line 436
    if-eqz v12, :cond_b

    .line 438
    :try_start_8
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e

    .line 443
    .end local v11           #e:Ljava/io/FileNotFoundException;
    :cond_b
    :goto_8
    if-eqz v15, :cond_7

    .line 445
    :try_start_9
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    .line 446
    :catch_2
    move-exception v11

    .line 447
    .local v11, e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 439
    .end local v11           #e:Ljava/io/IOException;
    .end local v15           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #b:Landroid/graphics/Bitmap;
    .restart local v14       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #quality:I
    :catch_3
    move-exception v11

    .line 440
    .restart local v11       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 446
    .end local v11           #e:Ljava/io/IOException;
    :catch_4
    move-exception v11

    .line 447
    .restart local v11       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 368
    .end local v11           #e:Ljava/io/IOException;
    :cond_c
    :try_start_a
    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p1

    if-gt v3, v0, :cond_d

    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    if-le v3, v0, :cond_11

    .line 371
    :cond_d
    move/from16 v0, v18

    int-to-float v3, v0

    div-float v3, v3, v21

    float-to-int v0, v3

    move/from16 v23, v0

    .line 372
    .local v23, scaledWidth:I
    move/from16 v0, v17

    int-to-float v3, v0

    div-float v3, v3, v21

    float-to-int v0, v3

    move/from16 v22, v0

    .line 374
    .local v22, scaledHeight:I
    const-string v3, "Mms:app"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 375
    const-string v3, "Mms/image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResizedImageData: retry scaling using Bitmap.createScaledBitmap: w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_e
    const/4 v3, 0x0

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v2

    .line 381
    if-nez v2, :cond_11

    .line 382
    const/4 v3, 0x0

    .line 436
    if-eqz v12, :cond_f

    .line 438
    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 443
    :cond_f
    :goto_9
    if-eqz v16, :cond_10

    .line 445
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_10
    :goto_a
    move-object/from16 v15, v16

    .line 448
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v15       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .line 439
    .end local v15           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v11

    .line 440
    .restart local v11       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 446
    .end local v11           #e:Ljava/io/IOException;
    :catch_6
    move-exception v11

    .line 447
    .restart local v11       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 391
    .end local v11           #e:Ljava/io/IOException;
    .end local v22           #scaledHeight:I
    .end local v23           #scaledWidth:I
    :cond_11
    if-eqz v16, :cond_12

    .line 393
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1

    .line 398
    :cond_12
    :goto_b
    :try_start_e
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_1

    .line 399
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v15       #os:Ljava/io/ByteArrayOutputStream;
    :try_start_f
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 400
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    .line 401
    .local v13, jpgFileSize:I
    move/from16 v0, p3

    if-le v13, v0, :cond_14

    .line 402
    mul-int v3, v19, p3

    div-int v20, v3, v13

    .line 403
    .local v20, reducedQuality:I
    const/16 v3, 0x32

    move/from16 v0, v20

    if-lt v0, v3, :cond_14

    .line 404
    move/from16 v19, v20

    .line 406
    const-string v3, "Mms:app"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 407
    const-string v3, "Mms/image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResizedImageData: compress(2) w/ quality="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_a

    .line 410
    :cond_13
    :try_start_10
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_a

    .line 414
    :goto_c
    :try_start_11
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_a

    .line 415
    .end local v15           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    :try_start_12
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_1

    move-object/from16 v15, v16

    .line 422
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v13           #jpgFileSize:I
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .end local v20           #reducedQuality:I
    .restart local v15       #os:Ljava/io/ByteArrayOutputStream;
    :cond_14
    :goto_d
    :try_start_13
    const-string v3, "Mms:app"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 423
    const-string v4, "Mms/image"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attempt="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v15, :cond_19

    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " width="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    int-to-float v5, v0

    div-float v5, v5, v21

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " height="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    int-to-float v5, v0

    div-float v5, v5, v21

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " scaleFactor="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " quality="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_15
    const/high16 v3, 0x4000

    mul-float v21, v21, v3

    .line 428
    add-int/lit8 v9, v9, 0x1

    .line 429
    if-eqz v15, :cond_16

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_a

    move-result v3

    move/from16 v0, p3

    if-le v3, v0, :cond_17

    :cond_16
    const/4 v3, 0x4

    if-lt v9, v3, :cond_1d

    .line 431
    :cond_17
    if-nez v15, :cond_1a

    const/4 v3, 0x0

    .line 436
    :goto_f
    if-eqz v12, :cond_18

    .line 438
    :try_start_14
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 443
    :cond_18
    :goto_10
    if-eqz v15, :cond_7

    .line 445
    :try_start_15
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    goto/16 :goto_5

    .line 446
    :catch_7
    move-exception v11

    .line 447
    .restart local v11       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 394
    .end local v11           #e:Ljava/io/IOException;
    .end local v15           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #b:Landroid/graphics/Bitmap;
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    :catch_8
    move-exception v11

    .line 395
    .restart local v11       #e:Ljava/io/IOException;
    :try_start_16
    const-string v3, "Mms/image"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_1

    goto/16 :goto_b

    .line 418
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v11           #e:Ljava/io/IOException;
    :catch_9
    move-exception v11

    move-object/from16 v15, v16

    .line 419
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .local v11, e:Ljava/lang/OutOfMemoryError;
    .restart local v15       #os:Ljava/io/ByteArrayOutputStream;
    :goto_11
    :try_start_17
    const-string v3, "Mms/image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_a

    goto/16 :goto_d

    .line 432
    .end local v11           #e:Ljava/lang/OutOfMemoryError;
    :catch_a
    move-exception v11

    goto/16 :goto_7

    .line 411
    .restart local v2       #b:Landroid/graphics/Bitmap;
    .restart local v13       #jpgFileSize:I
    .restart local v20       #reducedQuality:I
    :catch_b
    move-exception v11

    .line 412
    .local v11, e:Ljava/io/IOException;
    :try_start_18
    const-string v3, "Mms/image"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_a

    goto/16 :goto_c

    .line 418
    .end local v11           #e:Ljava/io/IOException;
    .end local v13           #jpgFileSize:I
    .end local v20           #reducedQuality:I
    :catch_c
    move-exception v11

    goto :goto_11

    .line 423
    .end local v2           #b:Landroid/graphics/Bitmap;
    :cond_19
    :try_start_19
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    goto/16 :goto_e

    .line 431
    :cond_1a
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_a

    move-result-object v3

    goto :goto_f

    .line 439
    :catch_d
    move-exception v11

    .line 440
    .restart local v11       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 439
    .end local v14           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v19           #quality:I
    .local v11, e:Ljava/io/FileNotFoundException;
    :catch_e
    move-exception v11

    .line 440
    .local v11, e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 436
    .end local v11           #e:Ljava/io/IOException;
    .end local v15           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v3

    move-object/from16 v15, v16

    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v15       #os:Ljava/io/ByteArrayOutputStream;
    :goto_12
    if-eqz v12, :cond_1b

    .line 438
    :try_start_1a
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_f

    .line 443
    :cond_1b
    :goto_13
    if-eqz v15, :cond_1c

    .line 445
    :try_start_1b
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_10

    .line 448
    :cond_1c
    :goto_14
    throw v3

    .line 439
    :catch_f
    move-exception v11

    .line 440
    .restart local v11       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 446
    .end local v11           #e:Ljava/io/IOException;
    :catch_10
    move-exception v11

    .line 447
    .restart local v11       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 436
    .end local v11           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    goto :goto_12

    .restart local v14       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v19       #quality:I
    :cond_1d
    move-object/from16 v16, v15

    .end local v15           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_1
.end method

.method public static getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I
    .locals 9
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 474
    const/4 v8, 0x0

    .line 475
    .local v8, degree:I
    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/android/mms/ui/UriImage;->isMediaUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    const/4 v7, 0x0

    .line 478
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 480
    if-eqz v7, :cond_0

    .line 481
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const-string v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 487
    :cond_0
    if-eqz v7, :cond_1

    .line 488
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 494
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v8

    .line 485
    .restart local v7       #cur:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 487
    if-eqz v7, :cond_1

    .line 488
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 487
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 488
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 491
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_3
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/mms/ui/UriImage;->isMMSUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 492
    invoke-static {p0}, Lcom/android/mms/ui/UriImage;->getDegreeFromFile(Landroid/net/Uri;)I

    move-result v8

    goto :goto_0
.end method

.method private getRotatedImageData()[B
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 255
    const/4 v8, 0x0

    .line 256
    .local v8, input:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 258
    .local v10, os:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 259
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v8

    .line 260
    const/16 v12, 0x64

    .line 262
    .local v12, quality:I
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v8, v1, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 264
    .local v0, b:Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 265
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 266
    .local v5, m:Landroid/graphics/Matrix;
    iget v1, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 267
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 269
    .end local v5           #m:Landroid/graphics/Matrix;
    :cond_0
    if-nez v0, :cond_3

    .line 284
    if-eqz v8, :cond_1

    .line 286
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 291
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 293
    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 296
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #quality:I
    :cond_2
    :goto_1
    return-object v13

    .line 287
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v9       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #quality:I
    :catch_0
    move-exception v7

    .line 288
    .local v7, e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 294
    .end local v7           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 295
    .restart local v7       #e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 272
    .end local v7           #e:Ljava/io/IOException;
    :cond_3
    :try_start_4
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 274
    .end local v10           #os:Ljava/io/ByteArrayOutputStream;
    .local v11, os:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1, v12, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_a

    move-object v10, v11

    .line 279
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #os:Ljava/io/ByteArrayOutputStream;
    :goto_2
    if-nez v10, :cond_7

    move-object v1, v13

    .line 284
    :goto_3
    if-eqz v8, :cond_4

    .line 286
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 291
    :cond_4
    :goto_4
    if-eqz v10, :cond_5

    .line 293
    :try_start_7
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_5
    :goto_5
    move-object v13, v1

    .line 296
    goto :goto_1

    .line 275
    :catch_2
    move-exception v7

    .line 276
    .local v7, e:Ljava/lang/OutOfMemoryError;
    :goto_6
    :try_start_8
    const-string v1, "Mms/image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 280
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #quality:I
    :catch_3
    move-exception v7

    .line 281
    .local v7, e:Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_9
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 284
    if-eqz v8, :cond_6

    .line 286
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 291
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :cond_6
    :goto_8
    if-eqz v10, :cond_2

    .line 293
    :try_start_b
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_1

    .line 294
    :catch_4
    move-exception v7

    .line 295
    .local v7, e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 279
    .end local v7           #e:Ljava/io/IOException;
    .restart local v9       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #quality:I
    :cond_7
    :try_start_c
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3

    move-result-object v1

    goto :goto_3

    .line 287
    :catch_5
    move-exception v7

    .line 288
    .restart local v7       #e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 294
    .end local v7           #e:Ljava/io/IOException;
    :catch_6
    move-exception v7

    .line 295
    .restart local v7       #e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 287
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #quality:I
    .local v7, e:Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v7

    .line 288
    .local v7, e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 284
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :goto_9
    if-eqz v8, :cond_8

    .line 286
    :try_start_d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 291
    :cond_8
    :goto_a
    if-eqz v10, :cond_9

    .line 293
    :try_start_e
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 296
    :cond_9
    :goto_b
    throw v1

    .line 287
    :catch_8
    move-exception v7

    .line 288
    .restart local v7       #e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 294
    .end local v7           #e:Ljava/io/IOException;
    :catch_9
    move-exception v7

    .line 295
    .restart local v7       #e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 284
    .end local v7           #e:Ljava/io/IOException;
    .end local v10           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v9       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #quality:I
    :catchall_1
    move-exception v1

    move-object v10, v11

    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #os:Ljava/io/ByteArrayOutputStream;
    goto :goto_9

    .line 280
    .end local v10           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    :catch_a
    move-exception v7

    move-object v10, v11

    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #os:Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 275
    .end local v10           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    :catch_b
    move-exception v7

    move-object v10, v11

    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_6
.end method

.method private initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 123
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns null result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 134
    :cond_2
    :try_start_1
    invoke-static {p2}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    const-string v0, "fn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, filePath:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 139
    :cond_3
    const-string v0, "ct"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 144
    :goto_0
    iput-object v8, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 148
    return-void

    .line 141
    .end local v8           #filePath:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 142
    .restart local v8       #filePath:Ljava/lang/String;
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private initFromFile(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 103
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v2

    .line 105
    .local v2, mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/util/MessageMimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, extension:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 110
    .local v0, dotPos:I
    if-ltz v0, :cond_0

    .line 111
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    .end local v0           #dotPos:I
    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 117
    return-void
.end method

.method private static isMMSUri(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, authority:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const/4 v1, 0x1

    .line 469
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isMediaUri(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 454
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, authority:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    const/4 v1, 0x1

    .line 459
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    return v0
.end method

.method public getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    .locals 7
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"

    .prologue
    .line 206
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 208
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/UriImage;->getResizedImageData(III)[B

    move-result-object v1

    .line 209
    .local v1, data:[B
    if-nez v1, :cond_0

    .line 213
    const/4 v2, 0x0

    .line 226
    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_0
    return-object v2

    .line 216
    .restart local v2       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 217
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 218
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, src:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 220
    .local v5, srcBytes:[B
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 221
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 222
    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 223
    .local v3, period:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    if-eqz v3, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 224
    .local v0, contentId:[B
    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_0

    .end local v0           #contentId:[B
    :cond_1
    move-object v0, v5

    .line 223
    goto :goto_1
.end method

.method public getRotate()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    return v0
.end method

.method public getRotateImageAsPart()Lcom/google/android/mms/pdu/PduPart;
    .locals 7

    .prologue
    .line 231
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 233
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->getRotatedImageData()[B

    move-result-object v1

    .line 234
    .local v1, data:[B
    if-nez v1, :cond_0

    .line 238
    const/4 v2, 0x0

    .line 251
    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_0
    return-object v2

    .line 241
    .restart local v2       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 242
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 243
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, src:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 245
    .local v5, srcBytes:[B
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 246
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 247
    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 248
    .local v3, period:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    if-eqz v3, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 249
    .local v0, contentId:[B
    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_0

    .end local v0           #contentId:[B
    :cond_1
    move-object v0, v5

    .line 248
    goto :goto_1
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    return v0
.end method
