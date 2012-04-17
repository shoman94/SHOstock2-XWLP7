.class public Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsBackgroundSendingReceiver.java"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMediaUri:Landroid/net/Uri;

.field private mMessageUri:Landroid/net/Uri;

.field private mPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private mRecipients:[Ljava/lang/String;

.field private mResizable:Z

.field private mResizedata:[B

.field private mSendReq:Lcom/google/android/mms/pdu/SendReq;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mResizable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;Lcom/google/android/mms/pdu/PduPersister;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->initMmsComponents()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->sendMessage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->sendMmsWorker(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    return-void
.end method

.method private createNewSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 173
    .local v1, media:Lcom/android/mms/model/MediaModel;
    iget-object v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 175
    .local v3, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v2, Lcom/android/mms/model/SlideModel;

    invoke-direct {v2, v3}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 177
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 181
    iget-object v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContentType:Ljava/lang/String;

    const-string v5, "image/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    new-instance v1, Lcom/android/mms/model/ImageModel;

    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    iget-object v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 199
    .restart local v1       #media:Lcom/android/mms/model/MediaModel;
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 203
    :try_start_0
    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v3           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :goto_1
    return-object v3

    .line 185
    .restart local v3       #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContentType:Ljava/lang/String;

    const-string v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    new-instance v1, Lcom/android/mms/model/VideoModel;

    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    iget-object v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v1       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_0

    .line 189
    :cond_1
    iget-object v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContentType:Ljava/lang/String;

    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 191
    new-instance v1, Lcom/android/mms/model/AudioModel;

    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    iget-object v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mMediaUri:Landroid/net/Uri;

    invoke-direct {v1, v4, v5}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .restart local v1       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_0

    .line 195
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 205
    :catch_0
    move-exception v0

    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    move-object v4, v1

    .line 207
    check-cast v4, Lcom/android/mms/model/ImageModel;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->resizeMedia(Lcom/android/mms/model/ImageModel;I)V

    .line 209
    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 211
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mResizable:Z

    goto :goto_1
.end method

.method private static encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 5
    .parameter "array"

    .prologue
    .line 285
    array-length v0, p0

    .line 287
    .local v0, count:I
    if-lez v0, :cond_0

    .line 289
    new-array v1, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 291
    .local v1, encodedArray:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 293
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    .end local v1           #encodedArray:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v2           #i:I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 2
    .parameter "sendReq"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mRecipients:[Ljava/lang/String;

    .line 273
    .local v0, dests:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 275
    .local v1, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 281
    :cond_0
    return-void
.end method

.method private static getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J
    .locals 7
    .parameter "context"
    .parameter "dests"

    .prologue
    .line 309
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 311
    .local v3, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 313
    .local v4, s:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 315
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    invoke-static {p0, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v5

    return-wide v5
.end method

.method private initMmsComponents()V
    .locals 2

    .prologue
    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->createNewSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 160
    invoke-direct {p0}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->makeSendReq()Lcom/google/android/mms/pdu/SendReq;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mSendReq:Lcom/google/android/mms/pdu/SendReq;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_0
.end method

.method private makeSendReq()Lcom/google/android/mms/pdu/SendReq;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v5, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v5}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 225
    .local v5, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-direct {p0, v5}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    .line 227
    iget-object v6, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    .line 229
    .local v4, pb:Lcom/google/android/mms/pdu/PduBody;
    iget-boolean v6, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mResizable:Z

    if-eqz v6, :cond_1

    .line 231
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 233
    .local v3, partCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 235
    invoke-virtual {v4, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 237
    .local v2, p:Lcom/google/android/mms/pdu/PduPart;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 239
    .local v0, contentType:Ljava/lang/String;
    const-string v6, "image/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 241
    iget-object v6, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mResizedata:[B

    invoke-virtual {v2, v6}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 233
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v0           #contentType:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #p:Lcom/google/android/mms/pdu/PduPart;
    .end local v3           #partCount:I
    :cond_1
    invoke-virtual {v5, v4}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 259
    iget-object v6, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    sget-object v7, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mMessageUri:Landroid/net/Uri;

    .line 261
    iget-object v6, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v4}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    .line 263
    return-object v5
.end method

.method private resizeMedia(Lcom/android/mms/model/ImageModel;I)V
    .locals 5
    .parameter "media"
    .parameter "byteLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v2, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mMediaUri:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 329
    .local v0, image:Lcom/android/mms/ui/UriImage;
    if-nez v0, :cond_0

    .line 331
    new-instance v2, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No room to resize picture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 335
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3, p2}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 343
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    if-nez v1, :cond_1

    .line 344
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "part is null during resize media."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 346
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mResizedata:[B

    .line 348
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p1, v2}, Lcom/android/mms/model/ImageModel;->setResizeImageSize(I)V

    .line 350
    return-void
.end method

.method private sendMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mMessageUri:Landroid/net/Uri;

    .line 121
    .local v0, mmsUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 123
    .local v1, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$2;-><init>(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 133
    return-void
.end method

.method private sendMmsWorker(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 5
    .parameter "mmsUri"
    .parameter "slideshow"

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v1, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v2, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 146
    .local v1, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mRecipients:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/MmsBackgroundSendingReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 75
    const-string v0, "recipients"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mRecipients:[Ljava/lang/String;

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContentType:Ljava/lang/String;

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mMediaUri:Landroid/net/Uri;

    .line 83
    iput-object p1, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$1;-><init>(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;)V

    invoke-virtual {v0}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$1;->start()V

    .line 115
    return-void
.end method
