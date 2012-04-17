.class Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;
.super Landroid/os/AsyncTask;
.source "MmsBGSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsBGSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MMSRequestHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static mAppName:Ljava/lang/String;

.field private static mAudioFileName:Ljava/lang/String;

.field private static mAudioUri:Landroid/net/Uri;

.field private static mBitmap:Landroid/graphics/Bitmap;

.field private static mImageFileName:Ljava/lang/String;

.field private static mImageUri:Landroid/net/Uri;

.field private static mIsSaveAction:Z

.field private static mMsgID:Ljava/lang/String;

.field private static mMsgText:Ljava/lang/String;

.field private static mSubject:Ljava/lang/String;

.field private static mToAddress:[Ljava/lang/String;

.field private static mVideoFileName:Ljava/lang/String;

.field private static mVideoUri:Landroid/net/Uri;


# instance fields
.field private contentException:I

.field private mContext:Landroid/content/Context;

.field private mImgHeight:I

.field private mImgWidth:I

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mTempBitmapfile:Ljava/lang/String;

.field private mTempResizefile:Ljava/lang/String;

.field public mToastHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 129
    iput v1, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    .line 131
    new-instance v0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler$1;-><init>(Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToastHandler:Landroid/os/Handler;

    .line 161
    iput-object p1, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    .line 162
    iput v1, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    .line 163
    return-void
.end method

.method private AddAudio(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 522
    new-instance v0, Lcom/android/mms/model/AudioModel;

    iget-object v1, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 523
    .local v0, aAudio:Lcom/android/mms/model/AudioModel;
    iget-object v1, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 524
    iget-object v1, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 525
    return-void
.end method

.method private AddImage(Landroid/net/Uri;)V
    .locals 7
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 443
    const/4 v0, 0x0

    .line 446
    .local v0, aImage:Lcom/android/mms/model/ImageModel;
    :try_start_0
    new-instance v1, Lcom/android/mms/model/ImageModel;

    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v1, v4, p1, v5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    :try_end_0
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 454
    .end local v0           #aImage:Lcom/android/mms/model/ImageModel;
    .local v1, aImage:Lcom/android/mms/model/ImageModel;
    :try_start_1
    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    .line 477
    .end local v1           #aImage:Lcom/android/mms/model/ImageModel;
    .restart local v0       #aImage:Lcom/android/mms/model/ImageModel;
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v2

    .line 457
    .local v2, e:Lcom/android/mms/ResolutionException;
    :goto_1
    const-string v4, "MMSBGSender"

    const-string v5, "Resolution excepton, width and hight exceeds,  Resizing........"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->getResizedImageUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 459
    .local v3, resize_uri:Landroid/net/Uri;
    new-instance v0, Lcom/android/mms/model/ImageModel;

    .end local v0           #aImage:Lcom/android/mms/model/ImageModel;
    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v0, v4, v3, v5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 468
    .restart local v0       #aImage:Lcom/android/mms/model/ImageModel;
    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_0

    .line 470
    .end local v2           #e:Lcom/android/mms/ResolutionException;
    .end local v3           #resize_uri:Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 471
    .local v2, e:Lcom/android/mms/ExceedMessageSizeException;
    :goto_2
    const-string v4, "MMSBGSender"

    const-string v5, "ExceedMessageSizeException..resize image"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->getResizedImageUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 473
    .restart local v3       #resize_uri:Landroid/net/Uri;
    new-instance v0, Lcom/android/mms/model/ImageModel;

    .end local v0           #aImage:Lcom/android/mms/model/ImageModel;
    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v0, v4, v3, v5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 475
    .restart local v0       #aImage:Lcom/android/mms/model/ImageModel;
    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_0

    .line 470
    .end local v0           #aImage:Lcom/android/mms/model/ImageModel;
    .end local v2           #e:Lcom/android/mms/ExceedMessageSizeException;
    .end local v3           #resize_uri:Landroid/net/Uri;
    .restart local v1       #aImage:Lcom/android/mms/model/ImageModel;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1           #aImage:Lcom/android/mms/model/ImageModel;
    .restart local v0       #aImage:Lcom/android/mms/model/ImageModel;
    goto :goto_2

    .line 455
    .end local v0           #aImage:Lcom/android/mms/model/ImageModel;
    .restart local v1       #aImage:Lcom/android/mms/model/ImageModel;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1           #aImage:Lcom/android/mms/model/ImageModel;
    .restart local v0       #aImage:Lcom/android/mms/model/ImageModel;
    goto :goto_1
.end method

.method private AddVideo(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Lcom/android/mms/UnsupportContentTypeException;,
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->getVideosize(Landroid/net/Uri;)I

    move-result v1

    .line 484
    .local v1, size:I
    if-lez v1, :cond_0

    .line 485
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->checkMessageSize(I)V

    .line 488
    :cond_0
    new-instance v0, Lcom/android/mms/model/VideoModel;

    iget-object v2, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v0, v2, p1, v3}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 497
    .local v0, aVideo:Lcom/android/mms/model/VideoModel;
    iget-object v2, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 498
    return-void
.end method

.method private Convert([Ljava/lang/String;)V
    .locals 2
    .parameter "addresses"

    .prologue
    .line 166
    if-eqz p1, :cond_2

    .line 167
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 168
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 169
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    goto :goto_1

    .line 178
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method private declared-synchronized PostSendRequest(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/PduBody;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 9
    .parameter "aPersister"
    .parameter "pb"
    .parameter "sendReq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    const-string v6, "MMSBGSender"

    const-string v7, "Persisting in Draft Messsage."

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-object v6, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p3, v6}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 409
    .local v1, aMMSUri:Landroid/net/Uri;
    const-string v6, "MMSBGSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URI In Draft"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    sget-boolean v6, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mIsSaveAction:Z

    if-nez v6, :cond_0

    .line 412
    sget-object v6, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->getOrCreateThreadId([Ljava/lang/String;)J

    move-result-wide v2

    .line 413
    .local v2, aThreadId:J
    iget-object v6, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, p2}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    .line 416
    const-string v6, "MMSBGSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting MMSMessageSender with Thread ID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v5, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v6, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v7

    int-to-long v7, v7

    invoke-direct {v5, v6, v1, v7, v8}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    .local v5, sender:Lcom/android/mms/transaction/MmsMessageSender;
    const-wide/16 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v6, v7}, Lcom/android/mms/transaction/MmsMessageSender;->sendMessage(J)Z

    move-result v0

    .line 431
    .local v0, IsSMS:Z
    const-string v6, "MMSBGSender"

    const-string v7, "MMSRequestHandler sender.sendMessage  called"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 439
    .end local v0           #IsSMS:Z
    .end local v2           #aThreadId:J
    .end local v5           #sender:Lcom/android/mms/transaction/MmsMessageSender;
    :goto_0
    monitor-exit p0

    return-void

    .line 432
    .restart local v2       #aThreadId:J
    .restart local v5       #sender:Lcom/android/mms/transaction/MmsMessageSender;
    :catch_0
    move-exception v4

    .line 433
    .local v4, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "MMSBGSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", threadId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 407
    .end local v1           #aMMSUri:Landroid/net/Uri;
    .end local v2           #aThreadId:J
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #sender:Lcom/android/mms/transaction/MmsMessageSender;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 436
    .restart local v1       #aMMSUri:Landroid/net/Uri;
    :cond_0
    :try_start_3
    const-string v6, "MMSBGSender"

    const-string v7, "It is  save  message only. Saved.. coming out"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private decodeImageHeaders(Landroid/net/Uri;)V
    .locals 7
    .parameter "uri"

    .prologue
    .line 616
    const/4 v1, 0x0

    .line 618
    .local v1, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 619
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 620
    .local v3, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 621
    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 622
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImgWidth:I

    .line 623
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImgHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 630
    if-eqz v1, :cond_0

    .line 632
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 639
    .end local v3           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-void

    .line 633
    .restart local v3       #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 635
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MMSBGSender"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 624
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v0

    .line 626
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "MMSBGSender"

    const-string v5, "IOException caught while opening stream"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 630
    if-eqz v1, :cond_0

    .line 632
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 633
    :catch_2
    move-exception v0

    .line 635
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MMSBGSender"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 627
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 628
    .local v2, o:Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v4, "MMSBGSender"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 630
    if-eqz v1, :cond_0

    .line 632
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 633
    :catch_4
    move-exception v0

    .line 635
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "MMSBGSender"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 630
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #o:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    .line 632
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 636
    :cond_1
    :goto_1
    throw v4

    .line 633
    :catch_5
    move-exception v0

    .line 635
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MMSBGSender"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 7
    .parameter "sendReq"

    .prologue
    .line 372
    const/4 v1, 0x0

    .line 375
    .local v1, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    sget-object v3, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 376
    sget-object v3, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    array-length v3, v3

    new-array v1, v3, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 378
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-eqz v1, :cond_0

    sget-object v3, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 379
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    sget-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 384
    .end local v2           #i:I
    :cond_1
    sget-object v3, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 385
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    sget-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSubject:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 388
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 392
    sget-object v3, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 394
    const/16 v3, 0x81

    :try_start_0
    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    .line 395
    const/16 v3, 0x81

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_3
    :goto_1
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Lcom/google/android/mms/InvalidHeaderValueException;
    const-string v3, "MMSBGSender"

    const-string v4, "ReadReport, DeliveryReport Reset failed"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getOrCreateThreadId([Ljava/lang/String;)J
    .locals 3
    .parameter "numbers"

    .prologue
    .line 365
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 366
    .local v0, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 367
    iget-object v1, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v1

    return-wide v1
.end method

.method private getResizedImageData(Landroid/net/Uri;II)[B
    .locals 12
    .parameter "uri"
    .parameter "widthLimit"
    .parameter "heightLimit"

    .prologue
    const/4 v9, 0x0

    .line 642
    iget v7, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImgWidth:I

    .line 643
    .local v7, outWidth:I
    iget v6, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImgHeight:I

    .line 645
    .local v6, outHeight:I
    const/4 v8, 0x1

    .line 646
    .local v8, s:I
    :goto_0
    div-int v10, v7, v8

    if-gt v10, p2, :cond_0

    div-int v10, v6, v8

    if-le v10, p3, :cond_1

    .line 647
    :cond_0
    mul-int/lit8 v8, v8, 0x2

    goto :goto_0

    .line 649
    :cond_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 650
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 652
    const/4 v2, 0x0

    .line 654
    .local v2, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 655
    const/4 v10, 0x0

    invoke-static {v2, v10, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 656
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    .line 670
    if-eqz v2, :cond_2

    .line 672
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 675
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    return-object v9

    .line 673
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 674
    .local v1, e:Ljava/io/IOException;
    const-string v10, "MMSBGSender"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 660
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    :try_start_2
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 661
    .local v5, os:Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x50

    invoke-virtual {v0, v10, v11, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 662
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v9

    .line 670
    if-eqz v2, :cond_2

    .line 672
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 673
    :catch_1
    move-exception v1

    .line 674
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "MMSBGSender"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 663
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v1

    .line 664
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v10, "MMSBGSender"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 670
    if-eqz v2, :cond_2

    .line 672
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 673
    :catch_3
    move-exception v1

    .line 674
    .local v1, e:Ljava/io/IOException;
    const-string v10, "MMSBGSender"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 666
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 667
    .local v3, o:Ljava/lang/OutOfMemoryError;
    :try_start_6
    const-string v10, "MMSBGSender"

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 670
    if-eqz v2, :cond_2

    .line 672
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 673
    :catch_5
    move-exception v1

    .line 674
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "MMSBGSender"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 670
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #o:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_4

    .line 672
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 675
    :cond_4
    :goto_2
    throw v9

    .line 673
    :catch_6
    move-exception v1

    .line 674
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "MMSBGSender"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private getResizedImageUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 583
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->decodeImageHeaders(Landroid/net/Uri;)V

    .line 584
    const/16 v4, 0x280

    const/16 v5, 0x1e0

    invoke-direct {p0, p1, v4, v5}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->getResizedImageData(Landroid/net/Uri;II)[B

    move-result-object v3

    .line 586
    .local v3, resize_data:[B
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->GetTempFileName(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempResizefile:Ljava/lang/String;

    .line 587
    if-eqz v3, :cond_2

    .line 589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempResizefile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 590
    .local v1, file_uri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 592
    .local v2, os:Ljava/io/OutputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 593
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 594
    const-string v4, "MMSBGSender"

    const-string v5, "MMS Temp Resize File Write success"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 602
    if-eqz v2, :cond_0

    .line 604
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 612
    .end local v1           #file_uri:Landroid/net/Uri;
    .end local v2           #os:Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 605
    .restart local v1       #file_uri:Landroid/net/Uri;
    .restart local v2       #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 606
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MMSBGSender"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException while closing: MMS Temp Resize File"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 595
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 596
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "MMSBGSender"

    const-string v5, "Failed to open MMS Temp Resize File."

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 597
    new-instance v4, Lcom/google/android/mms/MmsException;

    invoke-direct {v4, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 602
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 604
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 607
    :cond_1
    :goto_1
    throw v4

    .line 598
    :catch_2
    move-exception v0

    .line 599
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    const-string v4, "MMSBGSender"

    const-string v5, "Failed to write data to MMS Temp Resize File."

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 600
    new-instance v4, Lcom/google/android/mms/MmsException;

    invoke-direct {v4, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 605
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 606
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MMSBGSender"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException while closing: MMS Temp Resize File"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 612
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file_uri:Landroid/net/Uri;
    .end local v2           #os:Ljava/io/OutputStream;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVideosize(Landroid/net/Uri;)I
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 501
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_size"

    aput-object v0, v2, v7

    .line 502
    .local v2, PROJECTION:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 504
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 505
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 506
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 507
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 511
    :cond_0
    return v7
.end method


# virtual methods
.method public GetTempFileName(I)Ljava/lang/String;
    .locals 4
    .parameter "iType"

    .prologue
    .line 571
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    const-string v2, "parts"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 572
    .local v0, path:Ljava/lang/StringBuffer;
    const-string v1, "/TempImage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 574
    if-nez p1, :cond_1

    .line 575
    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 576
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 577
    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public SendMMS()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Lcom/android/mms/UnsupportContentTypeException;,
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToastHandler:Landroid/os/Handler;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    const-string v10, "MMSBGSender"

    const-string v11, "MMSRequestHandler SendMMS method invoked"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 231
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 232
    new-instance v8, Lcom/android/mms/model/SlideModel;

    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v8, v10}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 233
    .local v8, slide:Lcom/android/mms/model/SlideModel;
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10, v8}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 236
    .end local v8           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 238
    new-instance v9, Lcom/android/mms/model/TextModel;

    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    const-string v11, "text/plain"

    const-string v12, "text_0.txt"

    iget-object v13, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v13}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 241
    .local v9, text:Lcom/android/mms/model/TextModel;
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mMsgText:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 242
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mMsgText:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 248
    :goto_0
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImageUri:Landroid/net/Uri;

    if-eqz v10, :cond_b

    .line 250
    :try_start_0
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImageUri:Landroid/net/Uri;

    invoke-direct {p0, v10}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->AddImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 287
    :cond_1
    :goto_1
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAudioUri:Landroid/net/Uri;

    if-eqz v10, :cond_d

    .line 289
    :try_start_1
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAudioUri:Landroid/net/Uri;

    invoke-direct {p0, v10}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->AddAudio(Landroid/net/Uri;)V
    :try_end_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f

    .line 308
    :cond_2
    :goto_2
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mVideoUri:Landroid/net/Uri;

    if-eqz v10, :cond_e

    .line 310
    :try_start_2
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mVideoUri:Landroid/net/Uri;

    invoke-direct {p0, v10}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->AddVideo(Landroid/net/Uri;)V
    :try_end_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_14

    .line 332
    :cond_3
    :goto_3
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 333
    .local v1, aPersister:Lcom/google/android/mms/pdu/PduPersister;
    new-instance v7, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v7}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 334
    .local v7, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-direct {p0, v7}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    .line 335
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    .line 336
    .local v6, pb:Lcom/google/android/mms/pdu/PduBody;
    const-string v10, "MMSBGSender"

    const-string v11, "Encoded content obtained"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v7, v6}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 338
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    if-gtz v10, :cond_4

    .line 339
    invoke-direct {p0, v1, v6, v7}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->PostSendRequest(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/PduBody;Lcom/google/android/mms/pdu/SendReq;)V

    .line 341
    :cond_4
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 342
    new-instance v0, Ljava/io/File;

    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, TempFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 344
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 345
    const-string v10, "MMSBGSender"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Deleted Temp file:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_5
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    .line 349
    .end local v0           #TempFile:Ljava/io/File;
    :cond_6
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempResizefile:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 350
    new-instance v0, Ljava/io/File;

    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempResizefile:Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .restart local v0       #TempFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 352
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 353
    const-string v10, "MMSBGSender"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Deleted Temp file:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempResizefile:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_7
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempResizefile:Ljava/lang/String;

    .line 358
    .end local v0           #TempFile:Ljava/io/File;
    :cond_8
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    if-lez v10, :cond_9

    .line 359
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToastHandler:Landroid/os/Handler;

    iget v11, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    .end local v1           #aPersister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v6           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v7           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v9           #text:Lcom/android/mms/model/TextModel;
    :cond_9
    return-void

    .line 245
    .restart local v9       #text:Lcom/android/mms/model/TextModel;
    :cond_a
    iget-object v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto/16 :goto_0

    .line 251
    :catch_0
    move-exception v3

    .line 252
    .local v3, e1:Lcom/android/mms/ExceedMessageSizeException;
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    .line 253
    .end local v3           #e1:Lcom/android/mms/ExceedMessageSizeException;
    :catch_1
    move-exception v4

    .line 254
    .local v4, e2:Lcom/android/mms/UnsupportContentTypeException;
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    .line 255
    .end local v4           #e2:Lcom/android/mms/UnsupportContentTypeException;
    :catch_2
    move-exception v5

    .line 256
    .local v5, e3:Lcom/android/mms/ContentRestrictionException;
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    .line 257
    .end local v5           #e3:Lcom/android/mms/ContentRestrictionException;
    :catch_3
    move-exception v2

    .line 258
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "MMSBGSender"

    const-string v11, "MMSBGSender - Exception:"

    invoke-static {v10, v11, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 260
    .end local v2           #e:Ljava/lang/Exception;
    :cond_b
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImageFileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 262
    :try_start_3
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImageFileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->AddImage(Landroid/net/Uri;)V
    :try_end_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_1

    .line 263
    :catch_4
    move-exception v3

    .line 264
    .restart local v3       #e1:Lcom/android/mms/ExceedMessageSizeException;
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    .line 265
    .end local v3           #e1:Lcom/android/mms/ExceedMessageSizeException;
    :catch_5
    move-exception v4

    .line 266
    .restart local v4       #e2:Lcom/android/mms/UnsupportContentTypeException;
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    .line 267
    .end local v4           #e2:Lcom/android/mms/UnsupportContentTypeException;
    :catch_6
    move-exception v5

    .line 268
    .restart local v5       #e3:Lcom/android/mms/ContentRestrictionException;
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    .line 269
    .end local v5           #e3:Lcom/android/mms/ContentRestrictionException;
    :catch_7
    move-exception v2

    .line 270
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v10, "MMSBGSender"

    const-string v11, "MMSBGSender - Exception:"

    invoke-static {v10, v11, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 272
    .end local v2           #e:Ljava/lang/Exception;
    :cond_c
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_1

    .line 274
    :try_start_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->UpdateBGImageContent()V

    .line 275
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->AddImage(Landroid/net/Uri;)V
    :try_end_4
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    goto/16 :goto_1

    .line 276
    :catch_8
    move-exception v3

    .line 277
    .restart local v3       #e1:Lcom/android/mms/ExceedMessageSizeException;
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    .line 278
    .end local v3           #e1:Lcom/android/mms/ExceedMessageSizeException;
    :catch_9
    move-exception v4

    .line 279
    .restart local v4       #e2:Lcom/android/mms/UnsupportContentTypeException;
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    .line 280
    .end local v4           #e2:Lcom/android/mms/UnsupportContentTypeException;
    :catch_a
    move-exception v5

    .line 281
    .restart local v5       #e3:Lcom/android/mms/ContentRestrictionException;
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_1

    .line 282
    .end local v5           #e3:Lcom/android/mms/ContentRestrictionException;
    :catch_b
    move-exception v2

    .line 283
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v10, "MMSBGSender"

    const-string v11, "MMSBGSender - Exception:"

    invoke-static {v10, v11, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 290
    .end local v2           #e:Ljava/lang/Exception;
    :catch_c
    move-exception v3

    .line 291
    .restart local v3       #e1:Lcom/android/mms/ExceedMessageSizeException;
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_2

    .line 292
    .end local v3           #e1:Lcom/android/mms/ExceedMessageSizeException;
    :catch_d
    move-exception v4

    .line 293
    .restart local v4       #e2:Lcom/android/mms/UnsupportContentTypeException;
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_2

    .line 294
    .end local v4           #e2:Lcom/android/mms/UnsupportContentTypeException;
    :catch_e
    move-exception v5

    .line 295
    .restart local v5       #e3:Lcom/android/mms/ContentRestrictionException;
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_2

    .line 296
    .end local v5           #e3:Lcom/android/mms/ContentRestrictionException;
    :catch_f
    move-exception v2

    .line 297
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v10, "MMSBGSender"

    const-string v11, "MMSBGSender - Exception:"

    invoke-static {v10, v11, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 299
    .end local v2           #e:Ljava/lang/Exception;
    :cond_d
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAudioFileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 301
    :try_start_5
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAudioFileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->AddAudio(Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10

    goto/16 :goto_2

    .line 302
    :catch_10
    move-exception v2

    .line 303
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v10, "MMSBGSender"

    const-string v11, "MMSBGSender - Exception:"

    invoke-static {v10, v11, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 311
    .end local v2           #e:Ljava/lang/Exception;
    :catch_11
    move-exception v3

    .line 312
    .restart local v3       #e1:Lcom/android/mms/ExceedMessageSizeException;
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_3

    .line 314
    .end local v3           #e1:Lcom/android/mms/ExceedMessageSizeException;
    :catch_12
    move-exception v4

    .line 315
    .restart local v4       #e2:Lcom/android/mms/UnsupportContentTypeException;
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_3

    .line 317
    .end local v4           #e2:Lcom/android/mms/UnsupportContentTypeException;
    :catch_13
    move-exception v5

    .line 318
    .restart local v5       #e3:Lcom/android/mms/ContentRestrictionException;
    iget v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->contentException:I

    goto/16 :goto_3

    .line 320
    .end local v5           #e3:Lcom/android/mms/ContentRestrictionException;
    :catch_14
    move-exception v2

    .line 321
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v10, "MMSBGSender"

    const-string v11, "MMSBGSender - Exception:"

    invoke-static {v10, v11, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 323
    .end local v2           #e:Ljava/lang/Exception;
    :cond_e
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mVideoFileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 325
    :try_start_6
    sget-object v10, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mVideoFileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->AddVideo(Landroid/net/Uri;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_15

    goto/16 :goto_3

    .line 326
    :catch_15
    move-exception v2

    .line 327
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v10, "MMSBGSender"

    const-string v11, "MMSBGSender - Exception:"

    invoke-static {v10, v11, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method

.method public UpdateBGImageContent()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 528
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->GetTempFileName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    .line 529
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 531
    .local v5, partFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 533
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_0

    .line 534
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create new Temp File: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :catch_0
    move-exception v2

    .line 538
    .local v2, e:Ljava/io/IOException;
    const-string v6, "MMSBGSender"

    const-string v7, "createNewFile"

    invoke-static {v6, v7, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 539
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create new  Temp File: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 544
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 545
    .local v3, file_uri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 547
    .local v4, os:Ljava/io/OutputStream;
    :try_start_1
    iget-object v6, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    .line 548
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 549
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 550
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 551
    .local v0, bitmap_data:[B
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 552
    const-string v6, "MMSBGSender"

    const-string v7, "MMS Wave File Write success"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 560
    if-eqz v4, :cond_1

    .line 562
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 568
    :cond_1
    :goto_0
    return-void

    .line 563
    :catch_1
    move-exception v2

    .line 564
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "MMSBGSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException while closing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 553
    .end local v0           #bitmap_data:[B
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 554
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v6, "MMSBGSender"

    const-string v7, "Failed to open Input/Output stream."

    invoke-static {v6, v7, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 555
    new-instance v6, Lcom/google/android/mms/MmsException;

    invoke-direct {v6, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 560
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_2

    .line 562
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 565
    :cond_2
    :goto_1
    throw v6

    .line 556
    :catch_3
    move-exception v2

    .line 557
    .local v2, e:Ljava/io/IOException;
    :try_start_5
    const-string v6, "MMSBGSender"

    const-string v7, "Failed to read/write data."

    invoke-static {v6, v7, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 558
    new-instance v6, Lcom/google/android/mms/MmsException;

    invoke-direct {v6, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 563
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 564
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "MMSBGSender"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException while closing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public checkMessageSize(I)V
    .locals 3
    .parameter "increaseSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 517
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(IILandroid/content/ContentResolver;)V

    .line 518
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 8
    .parameter "intents"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 181
    aget-object v1, p1, v6

    .line 182
    .local v1, intent:Landroid/content/Intent;
    const-string v4, ""

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mMsgText:Ljava/lang/String;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAudioFileName:Ljava/lang/String;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mVideoFileName:Ljava/lang/String;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImageFileName:Ljava/lang/String;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAppName:Ljava/lang/String;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mMsgID:Ljava/lang/String;

    .line 183
    const-string v4, ""

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSubject:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempResizefile:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mTempBitmapfile:Ljava/lang/String;

    .line 184
    sput-object v7, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    .line 185
    sput-object v7, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mVideoUri:Landroid/net/Uri;

    sput-object v7, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAudioUri:Landroid/net/Uri;

    sput-object v7, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImageUri:Landroid/net/Uri;

    .line 186
    sput-object v7, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mBitmap:Landroid/graphics/Bitmap;

    .line 187
    sput-boolean v6, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mIsSaveAction:Z

    .line 188
    iput v6, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImgWidth:I

    iput v6, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImgHeight:I

    .line 189
    const-string v4, "MMSBGSender"

    const-string v5, "MMSRequestHandler doInBackground method invoked"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, uriStr:Ljava/lang/String;
    const-string v4, "com.android.mms.QUICKSND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    const-string v2, ""

    .line 194
    .local v2, strTemp:Ljava/lang/String;
    const-string v4, "mms_to"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 196
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    .line 197
    sget-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mToAddress:[Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->Convert([Ljava/lang/String;)V

    .line 200
    :cond_0
    const-string v4, "mms_subject"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mSubject:Ljava/lang/String;

    .line 201
    const-string v4, "mms_appname"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAppName:Ljava/lang/String;

    .line 202
    const-string v4, "mms_msgid"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mMsgID:Ljava/lang/String;

    .line 203
    const-string v4, "mms_text"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mMsgText:Ljava/lang/String;

    .line 204
    const-string v4, "mms_image"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImageFileName:Ljava/lang/String;

    .line 205
    const-string v4, "mms_audio"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAudioFileName:Ljava/lang/String;

    .line 206
    const-string v4, "mms_video"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mVideoFileName:Ljava/lang/String;

    .line 207
    const-string v4, "mms_image_uri"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mImageUri:Landroid/net/Uri;

    .line 208
    const-string v4, "mms_audio_uri"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mAudioUri:Landroid/net/Uri;

    .line 209
    const-string v4, "mms_video_uri"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mVideoUri:Landroid/net/Uri;

    .line 210
    const-string v4, "mms_save"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mIsSaveAction:Z

    .line 211
    const-string v4, "mms_image_bitmap"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    sput-object v4, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->mBitmap:Landroid/graphics/Bitmap;

    .line 214
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->SendMMS()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v2           #strTemp:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v7

    .line 215
    .restart local v2       #strTemp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MMSBGSender"

    const-string v5, "Exception caught"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
