.class public Lcom/android/mms/model/SlideshowModel;
.super Lcom/android/mms/model/Model;
.source "SlideshowModel.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/SlideModel;",
        ">;",
        "Lcom/android/mms/model/IModelChangedObserver;"
    }
.end annotation


# static fields
.field private static mCheckMessageSize:Z

.field private static mIsDrmContentsPresent:Z

.field private static mIsRawAttachmentsPresent:Z

.field private static mRawAttachmentAddSlide:Z

.field private static mRawAttachmentAddSlideforCompose:Z

.field private static simOper:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMessageSize:I

.field private mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

.field private final mLayout:Lcom/android/mms/model/LayoutModel;

.field private mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

.field public final mRawAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field public final mSlides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    .line 89
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    .line 91
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    .line 93
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mCheckMessageSize:Z

    .line 110
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/SlideshowModel;->simOper:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 114
    new-instance v0, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v0}, Lcom/android/mms/model/LayoutModel;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 116
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    .line 118
    return-void
.end method

.method private constructor <init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V
    .locals 4
    .parameter "layouts"
    .parameter
    .parameter
    .parameter "documentCache"
    .parameter "pbCache"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    .local p3, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 124
    iput-object p2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 125
    iput-object p6, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 126
    iput-object p3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    .line 128
    iput-object p4, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 129
    iput-object p5, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 130
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 131
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 132
    invoke-virtual {v2, p0}, Lcom/android/mms/model/SlideModel;->setParent(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0

    .line 135
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 136
    .local v0, attachment:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getMediaSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    goto :goto_1

    .line 138
    .end local v0           #attachment:Lcom/android/mms/model/AttachmentModel;
    :cond_1
    return-void
.end method

.method private static checkCRMode(ZZLcom/android/mms/model/MediaModel;)Z
    .locals 3
    .parameter "checkCRMode"
    .parameter "doNotAddMedia"
    .parameter "media"

    .prologue
    .line 258
    if-eqz p0, :cond_0

    .line 260
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    move-object v0, p2

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 262
    check-cast p2, Lcom/android/mms/model/ImageModel;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    .line 280
    :cond_0
    :goto_0
    return p1

    .line 263
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    move-object v0, p2

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    .line 265
    check-cast p2, Lcom/android/mms/model/AudioModel;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto :goto_0

    .line 270
    :catch_0
    move-exception v2

    goto :goto_0

    .line 266
    .restart local p2
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    move-object v0, p2

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    .line 268
    check-cast p2, Lcom/android/mms/model/VideoModel;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 272
    :catch_1
    move-exception v2

    goto :goto_0

    .line 274
    :catch_2
    move-exception v1

    .line 275
    .local v1, e:Lcom/android/mms/ResolutionException;
    const/4 p1, 0x1

    .line 278
    goto :goto_0

    .line 276
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v1

    .line 277
    .local v1, e:Lcom/android/mms/ContentRestrictionException;
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private static checkContentId(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 3
    .parameter "p"

    .prologue
    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, contentId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 672
    new-instance v0, Ljava/lang/String;

    .end local v0           #contentId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 674
    .restart local v0       #contentId:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 675
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 677
    :cond_1
    return-object v0
.end method

.method private static checkContentLocation(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 683
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 687
    .local v0, contentLoc:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 685
    .end local v0           #contentLoc:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #contentLoc:Ljava/lang/String;
    goto :goto_0
.end method

.method private static checkContentType(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "p"
    .parameter "contentType"
    .parameter "mediaName"

    .prologue
    .line 691
    const-string v0, ".vcf"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    const-string v0, "text/x-vCard"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 693
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .line 705
    .restart local p1
    :cond_0
    :goto_0
    return-object p1

    .line 694
    :cond_1
    const-string v0, ".vcs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    const-string v0, "text/x-vCalendar"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 696
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .restart local p1
    goto :goto_0

    .line 698
    :cond_2
    const-string v0, ".vnt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 699
    const-string v0, "text/x-vNote"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 700
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .restart local p1
    goto :goto_0

    .line 701
    :cond_3
    const-string v0, ".vts"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    const-string v0, "text/x-vtodo"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 703
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .restart local p1
    goto :goto_0
.end method

.method private checkDRMExtension(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "part"
    .parameter "src"
    .parameter "contentType"

    .prologue
    .line 885
    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 886
    .local v1, dotPos:I
    const/4 v2, 0x0

    .line 887
    .local v2, extension:Ljava/lang/String;
    if-ltz v1, :cond_0

    .line 888
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 891
    :cond_0
    const-string v4, "dcf"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 892
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, changeExtension:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 895
    const-string v0, "dcf"

    .line 896
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 897
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 898
    const-string p3, "application/vnd.oma.drm.content"

    .line 900
    .end local v0           #changeExtension:Ljava/lang/String;
    .end local v3           #fileName:Ljava/lang/String;
    :cond_2
    return-object p3
.end method

.method private checkMediaFileName(IILcom/android/mms/model/MediaModel;Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "i"
    .parameter "j"
    .parameter "media"
    .parameter "part"
    .parameter "src"

    .prologue
    .line 904
    add-int/lit8 v1, p1, 0x1

    .local v1, m:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 905
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 907
    .local v3, slide2:Lcom/android/mms/model/SlideModel;
    if-eqz v3, :cond_2

    .line 908
    const/4 v2, 0x0

    .local v2, n:I
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 909
    if-eq p1, v1, :cond_0

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 910
    const/16 v4, 0x2e

    invoke-virtual {p5, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 911
    .local v0, index:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 912
    new-instance v4, Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {p5, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p5

    .line 915
    :goto_2
    const-string v4, "Mms/slideshow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changed file name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    .end local v0           #index:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 914
    .restart local v0       #index:I
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_2

    .line 904
    .end local v0           #index:I
    .end local v2           #n:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 920
    .end local v3           #slide2:Lcom/android/mms/model/SlideModel;
    :cond_3
    return-object p5
.end method

.method private static checkSlideMedia(Ljava/lang/String;)Z
    .locals 2
    .parameter "slideMediaName"

    .prologue
    .line 710
    const-string v1, ".vcf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".vcs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".vnt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".vts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 714
    :cond_0
    const/4 v0, 0x0

    .line 718
    .local v0, isSlideMedia:Z
    :goto_0
    return v0

    .line 716
    .end local v0           #isSlideMedia:Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #isSlideMedia:Z
    goto :goto_0
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;
    .locals 32
    .parameter "context"
    .parameter "uri"
    .parameter "checkCRMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static/range {p0 .. p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    .line 152
    .local v4, pb:Lcom/google/android/mms/pdu/PduBody;
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    .line 153
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    .line 154
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v5

    .line 157
    .local v5, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v24

    .line 158
    .local v24, sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v29

    .line 159
    .local v29, srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-static/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->createRegionModel(Lorg/w3c/dom/smil/SMILRootLayoutElement;)Lcom/android/mms/model/RegionModel;

    move-result-object v23

    .line 162
    .local v23, rootLayout:Lcom/android/mms/model/RegionModel;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v22, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->makeRegionModelList(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/util/ArrayList;)I

    move-result v30

    .line 165
    .local v30, sumOfRegionHeight:I
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    if-lez v30, :cond_0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v3

    move/from16 v0, v30

    if-le v0, v3, :cond_0

    .line 166
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setHeight(I)V

    .line 172
    :cond_0
    new-instance v6, Lcom/android/mms/model/LayoutModel;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v1}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V

    .line 175
    .local v6, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v12

    .line 176
    .local v12, docBody:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v12}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v26

    .line 177
    .local v26, slideNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v27

    .line 178
    .local v27, slidesNum:I
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .local v7, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/4 v8, 0x0

    .line 182
    .local v8, mediaCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v4, v1}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;

    move-result-object v9

    .line 184
    .local v9, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move/from16 v0, v27

    if-ge v14, v0, :cond_8

    .line 187
    const/4 v11, 0x0

    .line 188
    .local v11, doNotAddSlide:Z
    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/smil/SMILParElement;

    .line 189
    .local v20, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v3

    const/high16 v31, 0x447a

    mul-float v3, v3, v31

    float-to-int v0, v3

    move/from16 v21, v0

    .line 191
    .local v21, parDuration:I
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 192
    .local v17, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    .line 193
    .local v18, mediaNum:I
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .local v19, mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    move/from16 v8, v18

    .line 195
    const/4 v15, 0x0

    .local v15, j:I
    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_6

    .line 196
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    check-cast v28, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 197
    .local v28, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    const/4 v10, 0x0

    .line 199
    .local v10, doNotAddMedia:Z
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v21

    invoke-static {v0, v1, v6, v4, v2}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;I)Lcom/android/mms/model/MediaModel;

    move-result-object v16

    .line 204
    .local v16, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    .line 207
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v31, "text/x-vCard"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v31, "text/x-vCalendar"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v31, "text/x-vNote"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v31, "text/x-vtodo"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 212
    :cond_2
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    .line 195
    .end local v16           #media:Lcom/android/mms/model/MediaModel;
    .end local v28           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_3
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 216
    .restart local v16       #media:Lcom/android/mms/model/MediaModel;
    .restart local v28       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_4
    const/4 v3, 0x1

    if-ne v8, v3, :cond_5

    sget-boolean v3, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    if-eqz v3, :cond_5

    .line 217
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v3, v27, -0x1

    if-ne v14, v3, :cond_5

    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlideForCompose()Z

    move-result v3

    if-nez v3, :cond_5

    .line 219
    const/4 v10, 0x1

    .line 220
    const/4 v11, 0x1

    .line 231
    :cond_5
    move/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v10, v1}, Lcom/android/mms/model/SlideshowModel;->checkCRMode(ZZLcom/android/mms/model/MediaModel;)Z

    move-result v10

    .line 232
    if-nez v10, :cond_3

    .line 233
    check-cast v28, Lorg/w3c/dom/events/EventTarget;

    .end local v28           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 234
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 236
    .end local v16           #media:Lcom/android/mms/model/MediaModel;
    :catch_0
    move-exception v13

    .line 237
    .local v13, e:Ljava/io/IOException;
    const-string v3, "Mms/slideshow"

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v3, v0, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 238
    .end local v13           #e:Ljava/io/IOException;
    :catch_1
    move-exception v13

    .line 239
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "Mms/slideshow"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v3, v0, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 243
    .end local v10           #doNotAddMedia:Z
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :cond_6
    new-instance v25, Lcom/android/mms/model/SlideModel;

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v3

    const/high16 v31, 0x447a

    mul-float v3, v3, v31

    float-to-int v3, v3

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 244
    .local v25, slide:Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 245
    check-cast v20, Lorg/w3c/dom/events/EventTarget;

    .end local v20           #par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 246
    if-nez v11, :cond_7

    .line 247
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 251
    .end local v11           #doNotAddSlide:Z
    .end local v15           #j:I
    .end local v17           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v18           #mediaNum:I
    .end local v19           #mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v21           #parDuration:I
    .end local v25           #slide:Lcom/android/mms/model/SlideModel;
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->trimToSize()V

    move-object/from16 v3, p0

    .line 252
    invoke-static/range {v3 .. v9}, Lcom/android/mms/model/SlideshowModel;->createSlideshowModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;ILjava/util/ArrayList;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    return-object v3
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    .locals 30
    .parameter "context"
    .parameter "pb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 306
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    .line 307
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    .line 308
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v6

    .line 311
    .local v6, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface {v6}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v24

    .line 312
    .local v24, sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v29

    .line 313
    .local v29, srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-static/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->createRegionModel(Lorg/w3c/dom/smil/SMILRootLayoutElement;)Lcom/android/mms/model/RegionModel;

    move-result-object v23

    .line 316
    .local v23, rootLayout:Lcom/android/mms/model/RegionModel;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v22, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->makeRegionModelList(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/util/ArrayList;)I

    .line 318
    new-instance v7, Lcom/android/mms/model/LayoutModel;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V

    .line 321
    .local v7, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-interface {v6}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v11

    .line 322
    .local v11, docBody:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v26

    .line 323
    .local v26, slideNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v27

    .line 324
    .local v27, slidesNum:I
    new-instance v8, Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 326
    .local v8, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/4 v9, 0x0

    .line 328
    .local v9, mediaCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;

    move-result-object v10

    .line 330
    .local v10, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move/from16 v0, v27

    if-ge v13, v0, :cond_5

    .line 333
    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/smil/SMILParElement;

    .line 334
    .local v20, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v4

    const/high16 v5, 0x447a

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v21, v0

    .line 336
    .local v21, parDuration:I
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 337
    .local v17, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    .line 339
    .local v18, mediaNum:I
    const/16 v16, 0x0

    .line 341
    .local v16, mediaDuration:I
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 342
    .local v19, mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    move/from16 v9, v18

    .line 343
    const/4 v14, 0x0

    .local v14, j:I
    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_4

    .line 344
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/model/SlideshowModel;->getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v28

    .line 345
    .local v28, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    if-nez v28, :cond_0

    .line 343
    .end local v28           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 347
    .restart local v28       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    move/from16 v3, v21

    invoke-static {v0, v1, v7, v2, v3}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;I)Lcom/android/mms/model/MediaModel;

    move-result-object v15

    .line 360
    .local v15, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 361
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    .line 363
    :cond_1
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/x-vCard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/x-vCalendar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/x-vNote"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/x-vtodo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 368
    :cond_2
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 382
    .end local v15           #media:Lcom/android/mms/model/MediaModel;
    .end local v28           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_0
    move-exception v12

    .line 383
    .local v12, e:Ljava/io/IOException;
    const-string v4, "Mms/slideshow"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 380
    .end local v12           #e:Ljava/io/IOException;
    .restart local v15       #media:Lcom/android/mms/model/MediaModel;
    .restart local v28       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_3
    :try_start_1
    check-cast v28, Lorg/w3c/dom/events/EventTarget;

    .end local v28           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v28

    invoke-static {v0, v15}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 381
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 384
    .end local v15           #media:Lcom/android/mms/model/MediaModel;
    :catch_1
    move-exception v12

    .line 385
    .local v12, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "Mms/slideshow"

    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 386
    .end local v12           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v12

    .line 387
    .local v12, e:Lcom/android/mms/UnsupportContentTypeException;
    const-string v4, "Mms/slideshow"

    invoke-virtual {v12}, Lcom/android/mms/UnsupportContentTypeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 404
    .end local v12           #e:Lcom/android/mms/UnsupportContentTypeException;
    :cond_4
    new-instance v25, Lcom/android/mms/model/SlideModel;

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v4

    const/high16 v5, 0x447a

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v1}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 405
    .local v25, slide:Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 406
    check-cast v20, Lorg/w3c/dom/events/EventTarget;

    .end local v20           #par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 407
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 412
    .end local v14           #j:I
    .end local v16           #mediaDuration:I
    .end local v17           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v18           #mediaNum:I
    .end local v19           #mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v21           #parDuration:I
    .end local v25           #slide:Lcom/android/mms/model/SlideModel;
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->trimToSize()V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 413
    invoke-static/range {v4 .. v10}, Lcom/android/mms/model/SlideshowModel;->createSlideshowModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;ILjava/util/ArrayList;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    return-object v4
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"

    .prologue
    .line 141
    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0}, Lcom/android/mms/model/SlideshowModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static createRegionModel(Lorg/w3c/dom/smil/SMILRootLayoutElement;)Lcom/android/mms/model/RegionModel;
    .locals 6
    .parameter "srle"

    .prologue
    const/4 v2, 0x0

    .line 513
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v4

    .line 514
    .local v4, w:I
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v5

    .line 515
    .local v5, h:I
    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 516
    :cond_0
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v4

    .line 517
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v5

    .line 518
    invoke-interface {p0, v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 519
    invoke-interface {p0, v5}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 521
    :cond_1
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const/4 v1, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 522
    .local v0, rootLayout:Lcom/android/mms/model/RegionModel;
    return-object v0
.end method

.method private static createSlideshowModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;ILjava/util/ArrayList;)Lcom/android/mms/model/SlideshowModel;
    .locals 14
    .parameter "context"
    .parameter "pb"
    .parameter "document"
    .parameter "layouts"
    .parameter
    .parameter "mediaCount"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;)",
            "Lcom/android/mms/model/SlideshowModel;"
        }
    .end annotation

    .prologue
    .line 461
    .local p4, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    .local p6, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/SlideshowModel;-><init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V

    .line 464
    .local v0, slideshow:Lcom/android/mms/model/SlideshowModel;
    sget-boolean v1, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlide()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v11

    .line 468
    .local v11, size:I
    new-instance v12, Lcom/android/mms/model/SlideModel;

    invoke-direct {v12, v0}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 470
    .local v12, slide:Lcom/android/mms/model/SlideModel;
    new-instance v13, Lcom/android/mms/model/TextModel;

    const-string v1, "text/plain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:text_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v13, p0, v1, v2, v3}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 472
    .local v13, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v8

    .line 474
    .local v8, fileCount:I
    const/4 v1, 0x1

    if-ne v8, v1, :cond_3

    .line 475
    const v1, 0x7f090167

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 479
    .local v7, detail:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList()Ljava/lang/String;

    move-result-object v9

    .line 480
    .local v9, name:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 481
    .local v10, shown:Ljava/lang/String;
    invoke-virtual {v13, v10}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {v12, v13}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 484
    const/4 v1, 0x1

    if-ne v11, v1, :cond_4

    if-nez p5, :cond_4

    .line 485
    add-int/lit8 v1, v11, -0x1

    invoke-virtual {v0, v1, v12}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 486
    invoke-virtual {v0, v11}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 490
    :goto_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlide(Z)V

    .line 492
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result v1

    if-nez v1, :cond_0

    .line 493
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 499
    .end local v7           #detail:Ljava/lang/String;
    .end local v8           #fileCount:I
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #shown:Ljava/lang/String;
    .end local v11           #size:I
    .end local v12           #slide:Lcom/android/mms/model/SlideModel;
    .end local v13           #text:Lcom/android/mms/model/TextModel;
    :cond_0
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlide()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlide(Z)V

    .line 503
    :cond_1
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result v1

    if-nez v1, :cond_2

    .line 504
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 508
    :cond_2
    invoke-virtual {v0, v0}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 509
    return-object v0

    .line 477
    .restart local v8       #fileCount:I
    .restart local v11       #size:I
    .restart local v12       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v13       #text:Lcom/android/mms/model/TextModel;
    :cond_3
    const v1, 0x7f090168

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #detail:Ljava/lang/String;
    goto :goto_0

    .line 488
    .restart local v9       #name:Ljava/lang/String;
    .restart local v10       #shown:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, v11, v12}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    goto :goto_1
.end method

.method private static extractCID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "slideMediaName"

    .prologue
    .line 663
    const-string v0, "cid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    const-string v0, "cid:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 666
    :cond_0
    return-object p0
.end method

.method private static extractLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "compareContentLoc"

    .prologue
    .line 655
    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 657
    .local v0, endIndex:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 659
    .end local v0           #endIndex:I
    :cond_0
    return-object p0
.end method

.method public static getAddAttachmentSlide()Z
    .locals 2

    .prologue
    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, resultValue:Z
    sget-boolean v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    if-eqz v1, :cond_0

    .line 725
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    .line 727
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    .line 728
    return v0
.end method

.method public static getAddAttachmentSlideForCompose()Z
    .locals 2

    .prologue
    .line 749
    const/4 v0, 0x0

    .line 750
    .local v0, resultValue:Z
    sget-boolean v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    if-eqz v1, :cond_0

    .line 751
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    .line 753
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    .line 754
    return v0
.end method

.method private static getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;
    .locals 31
    .parameter "context"
    .parameter "pb"
    .parameter "slideNodes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    const/16 v22, 0x0

    .line 552
    .local v22, slideMediaCount:I
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    .line 553
    .local v26, slidesNum:I
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v25, slideMediaSrc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move/from16 v0, v26

    if-ge v9, v0, :cond_2

    .line 556
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/smil/SMILParElement;

    .line 557
    .local v21, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 558
    .local v15, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    .line 559
    .local v16, mediaNum:I
    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    move/from16 v0, v16

    if-ge v11, v0, :cond_1

    .line 561
    invoke-interface {v15, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v13

    .line 562
    .local v13, media:Lorg/w3c/dom/smil/SMILMediaElement;
    if-eqz v13, :cond_0

    .line 563
    invoke-interface {v13}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v27

    .line 564
    .local v27, src:Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    .end local v27           #src:Ljava/lang/String;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 568
    .end local v13           #media:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_1
    add-int v22, v22, v16

    .line 555
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 571
    .end local v11           #j:I
    .end local v15           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v16           #mediaNum:I
    .end local v21           #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v17

    .line 572
    .local v17, numOfParts:I
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 576
    .local v3, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/4 v11, 0x0

    .restart local v11       #j:I
    :goto_2
    move/from16 v0, v17

    if-ge v11, v0, :cond_f

    .line 577
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v20

    .line 578
    .local v20, p:Lcom/google/android/mms/pdu/PduPart;
    new-instance v7, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    .line 579
    .local v7, contentType:Ljava/lang/String;
    const/4 v14, 0x0

    .line 580
    .local v14, mediaName:Ljava/lang/String;
    const-string v29, "application/smil"

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 576
    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 583
    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v29

    if-eqz v29, :cond_5

    .line 584
    new-instance v14, Ljava/lang/String;

    .end local v14           #mediaName:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([B)V

    .line 587
    .restart local v14       #mediaName:Ljava/lang/String;
    :cond_5
    if-nez v14, :cond_6

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v29

    if-eqz v29, :cond_6

    .line 588
    new-instance v14, Ljava/lang/String;

    .end local v14           #mediaName:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([B)V

    .line 592
    .restart local v14       #mediaName:Ljava/lang/String;
    :cond_6
    if-eqz v14, :cond_7

    .line 593
    move-object/from16 v0, v20

    invoke-static {v0, v7, v14}, Lcom/android/mms/model/SlideshowModel;->checkContentType(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 597
    :cond_7
    invoke-static/range {v20 .. v20}, Lcom/android/mms/model/SlideshowModel;->checkContentLocation(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v6

    .line 600
    .local v6, contentLoc:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/model/SlideshowModel;->checkContentId(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v5

    .line 602
    .local v5, contentId:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 603
    .local v24, slideMediaNum:I
    const/4 v10, 0x0

    .line 604
    .local v10, isSlideMedia:Z
    const/4 v12, 0x0

    .local v12, k:I
    :goto_4
    move/from16 v0, v24

    if-ge v12, v0, :cond_b

    .line 605
    if-eqz v6, :cond_8

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    if-eqz v29, :cond_8

    .line 606
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->extractCID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 608
    .local v23, slideMediaName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/model/SlideshowModel;->extractLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 611
    .local v4, compareContentLoc:Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 612
    invoke-static/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->checkSlideMedia(Ljava/lang/String;)Z

    move-result v10

    .line 604
    .end local v4           #compareContentLoc:Ljava/lang/String;
    .end local v23           #slideMediaName:Ljava/lang/String;
    :cond_8
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 613
    .restart local v4       #compareContentLoc:Ljava/lang/String;
    .restart local v23       #slideMediaName:Ljava/lang/String;
    :cond_9
    if-eqz v5, :cond_8

    .line 614
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 615
    invoke-static/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->checkSlideMedia(Ljava/lang/String;)Z

    move-result v10

    goto :goto_5

    .line 616
    :cond_a
    const/16 v29, 0x2e

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v29

    if-lez v29, :cond_8

    .line 617
    const/16 v29, 0x0

    const/16 v30, 0x2e

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v30

    move-object/from16 v0, v23

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 619
    .local v28, tempMediaName:Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 620
    invoke-static/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->checkSlideMedia(Ljava/lang/String;)Z

    move-result v10

    goto :goto_5

    .line 627
    .end local v4           #compareContentLoc:Ljava/lang/String;
    .end local v23           #slideMediaName:Ljava/lang/String;
    .end local v28           #tempMediaName:Ljava/lang/String;
    :cond_b
    if-nez v10, :cond_3

    .line 629
    const/16 v18, 0x0

    .line 630
    .local v18, object:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v29

    if-nez v29, :cond_e

    .line 632
    :try_start_0
    new-instance v19, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v18           #object:Lcom/android/mms/model/AttachmentModel;
    .local v19, object:Lcom/android/mms/model/AttachmentModel;
    move-object/from16 v18, v19

    .line 644
    .end local v19           #object:Lcom/android/mms/model/AttachmentModel;
    .restart local v18       #object:Lcom/android/mms/model/AttachmentModel;
    :cond_c
    :goto_6
    if-eqz v18, :cond_d

    .line 645
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 647
    :cond_d
    const/16 v29, 0x1

    sput-boolean v29, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    goto/16 :goto_3

    .line 634
    :catch_0
    move-exception v8

    .line 636
    .local v8, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_6

    .line 639
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    :cond_e
    new-instance v18, Lcom/android/mms/model/AttachmentModel;

    .end local v18           #object:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 640
    .restart local v18       #object:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v29

    if-eqz v29, :cond_c

    .line 641
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/mms/model/AttachmentModel;->setUri(Landroid/net/Uri;)V

    goto :goto_6

    .line 651
    .end local v5           #contentId:Ljava/lang/String;
    .end local v6           #contentLoc:Ljava/lang/String;
    .end local v7           #contentType:Ljava/lang/String;
    .end local v10           #isSlideMedia:Z
    .end local v12           #k:I
    .end local v14           #mediaName:Ljava/lang/String;
    .end local v18           #object:Lcom/android/mms/model/AttachmentModel;
    .end local v20           #p:Lcom/google/android/mms/pdu/PduPart;
    .end local v24           #slideMediaNum:I
    :cond_f
    return-object v3
.end method

.method public static getCheckMessageSizeforSlide()Z
    .locals 1

    .prologue
    .line 741
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mCheckMessageSize:Z

    .line 742
    .local v0, resultValue:Z
    return v0
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .locals 4
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 986
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 987
    .local v1, p:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 989
    .local v2, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 990
    .local v0, msgType:I
    const/16 v3, 0x80

    if-eq v0, v3, :cond_0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_1

    .line 992
    :cond_0
    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v2           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    return-object v3

    .line 994
    .restart local v2       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v3
.end method

.method private static getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 6
    .parameter "node"

    .prologue
    .line 528
    move-object v2, p0

    .line 532
    .local v2, mNode:Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    .line 534
    .local v4, mSME:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 535
    .local v3, mNodeList:Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 537
    .local v1, mChildCount:I
    instance-of v5, v2, Lorg/w3c/dom/smil/SMILMediaElement;

    if-eqz v5, :cond_1

    move-object v4, v2

    .line 538
    check-cast v4, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 544
    :cond_0
    return-object v4

    .line 540
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 541
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/model/SlideshowModel;->getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1001
    const/4 v1, 0x0

    .line 1003
    .local v1, subStr:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 1005
    .local v0, pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 1007
    .local v2, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_0

    .line 1008
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 1014
    .end local v2           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    return-object v3
.end method

.method private makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;
    .locals 21
    .parameter "context"
    .parameter "document"
    .parameter "isMakingCopy"

    .prologue
    .line 775
    new-instance v14, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v14}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 777
    .local v14, pb:Lcom/google/android/mms/pdu/PduBody;
    const/4 v11, 0x0

    .line 778
    .local v11, hasForwardLock:Z
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 780
    .local v15, s:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_c

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/mms/model/SlideModel;

    .line 782
    .local v16, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v16, :cond_b

    .line 783
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v2

    if-ge v4, v2, :cond_b

    .line 784
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v5

    .line 786
    .local v5, media:Lcom/android/mms/model/MediaModel;
    if-eqz p3, :cond_1

    .line 788
    :try_start_0
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isAllowedToForward()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 789
    const/4 v11, 0x1

    .line 783
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 792
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    :catch_0
    move-exception v10

    .line 794
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 798
    .end local v10           #e:Ljava/io/IOException;
    :cond_1
    new-instance v6, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 799
    .local v6, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    .line 801
    .local v7, src:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v18, v5

    .line 802
    check-cast v18, Lcom/android/mms/model/TextModel;

    .line 806
    .local v18, text:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v20, "text/x-vCalendar"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v20, "text/x-vCard"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v20, "text/x-vNote"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v20, "text/x-vtodo"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 819
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 826
    .end local v18           #text:Lcom/android/mms/model/TextModel;
    :goto_3
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v9

    .line 828
    .local v9, contentType:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v9}, Lcom/android/mms/model/SlideshowModel;->checkDRMExtension(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 831
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 834
    const-string v2, "cid:"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    .line 835
    .local v17, startWithContentId:Z
    if-eqz v17, :cond_3

    .line 836
    const-string v2, "cid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 841
    .local v13, location:Ljava/lang/String;
    :goto_4
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 844
    if-eqz v17, :cond_4

    .line 846
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 853
    :goto_5
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 854
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v19

    .line 855
    .local v19, wrapper:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 856
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 866
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .end local v19           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    :goto_6
    invoke-virtual {v14, v6}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_2

    .end local v9           #contentType:Ljava/lang/String;
    .end local v13           #location:Ljava/lang/String;
    .end local v17           #startWithContentId:Z
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    :cond_2
    move-object/from16 v2, p0

    .line 821
    invoke-direct/range {v2 .. v7}, Lcom/android/mms/model/SlideshowModel;->checkMediaFileName(IILcom/android/mms/model/MediaModel;Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 822
    invoke-virtual {v5, v7}, Lcom/android/mms/model/MediaModel;->setSrc(Ljava/lang/String;)V

    goto :goto_3

    .line 838
    .restart local v9       #contentType:Ljava/lang/String;
    .restart local v17       #startWithContentId:Z
    :cond_3
    move-object v13, v7

    .restart local v13       #location:Ljava/lang/String;
    goto :goto_4

    .line 848
    :cond_4
    const/16 v2, 0x2e

    invoke-virtual {v13, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 849
    .local v12, index:I
    const/4 v2, -0x1

    if-eq v12, v2, :cond_5

    if-nez v12, :cond_6

    :cond_5
    move-object v8, v13

    .line 850
    .local v8, contentId:Ljava/lang/String;
    :goto_7
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_5

    .line 849
    .end local v8           #contentId:Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v13, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    .line 857
    .end local v12           #index:I
    :cond_7
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 858
    check-cast v5, Lcom/android/mms/model/TextModel;

    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_6

    .line 859
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    :cond_8
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 860
    :cond_9
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    goto :goto_6

    .line 862
    :cond_a
    const-string v2, "Mms/slideshow"

    const-string v20, "Unsupport media: "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_6

    .line 780
    .end local v4           #j:I
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .end local v6           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v7           #src:Ljava/lang/String;
    .end local v9           #contentType:Ljava/lang/String;
    .end local v13           #location:Ljava/lang/String;
    .end local v17           #startWithContentId:Z
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 871
    .end local v16           #slide:Lcom/android/mms/model/SlideModel;
    :cond_c
    if-eqz v11, :cond_d

    if-eqz p3, :cond_d

    if-eqz p1, :cond_d

    .line 872
    const v2, 0x7f090051

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 874
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object p2

    .line 877
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mms/model/SlideshowModel;->makeVItemPart(Lcom/google/android/mms/pdu/PduBody;)V

    .line 879
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14}, Lcom/android/mms/model/SlideshowModel;->makeSmilPart(Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;)V

    .line 881
    return-object v14
.end method

.method private makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2
    .parameter "document"

    .prologue
    .line 771
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method private static makeRegionModelList(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/util/ArrayList;)I
    .locals 13
    .parameter "sle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 285
    .local v9, nlRegions:Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    .line 287
    .local v10, regionsNum:I
    const/4 v12, 0x0

    .line 290
    .local v12, sumOfRegionHeight:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 291
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 292
    .local v11, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    new-instance v0, Lcom/android/mms/model/RegionModel;

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v3

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v4

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v5

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v6

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 295
    .local v0, r:Lcom/android/mms/model/RegionModel;
    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v1

    add-int/2addr v12, v1

    .line 299
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 301
    .end local v0           #r:Lcom/android/mms/model/RegionModel;
    .end local v11           #sre:Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_0
    return v12
.end method

.method private makeSmilPart(Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 951
    const/4 v2, 0x0

    .line 953
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    :try_start_1
    invoke-static {p1, v1}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 955
    new-instance v0, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 956
    const-string v2, "smil"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 957
    const-string v2, "smil.xml"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 958
    const-string v2, "application/smil"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 959
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 962
    invoke-virtual {p2, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 964
    if-eqz v1, :cond_0

    .line 966
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 967
    :catch_0
    move-exception v0

    .line 968
    const-string v1, "Mms/slideshow"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 964
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 966
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 969
    :cond_1
    :goto_2
    throw v0

    .line 967
    :catch_1
    move-exception v1

    .line 968
    const-string v2, "Mms/slideshow"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 964
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private makeVItemPart(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 8
    .parameter "pb"

    .prologue
    .line 925
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 926
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    .line 927
    .local v1, attachment:Lcom/android/mms/model/AttachmentModel;
    new-instance v0, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 928
    .local v0, attachPart:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    .line 929
    .local v5, src:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 930
    if-eq v2, v4, :cond_0

    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v6}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 931
    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 932
    .local v3, index:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 933
    new-instance v6, Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 929
    .end local v3           #index:I
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 935
    .restart local v3       #index:I
    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 938
    .end local v3           #index:I
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 939
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 940
    iget-object v6, v1, Lcom/android/mms/model/AttachmentModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 941
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getData()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 942
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 943
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 944
    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 925
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 946
    .end local v0           #attachPart:Lcom/google/android/mms/pdu/PduPart;
    .end local v1           #attachment:Lcom/android/mms/model/AttachmentModel;
    .end local v2           #i:I
    .end local v5           #src:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private registerObserver(Lcom/android/mms/model/Model;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 1366
    invoke-virtual {p1, p0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1367
    iget-object v2, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/IModelChangedObserver;

    .line 1368
    .local v1, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p1, v1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1370
    .end local v1           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    return-void
.end method

.method public static setAddAttachmentSlide(Z)V
    .locals 0
    .parameter "addSlide"

    .prologue
    .line 732
    sput-boolean p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    .line 733
    return-void
.end method

.method public static setAddAttachmentSlideForCompose(Z)V
    .locals 0
    .parameter "addSlide"

    .prologue
    .line 758
    sput-boolean p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    .line 759
    return-void
.end method

.method public static setCheckMessageSizeforSlide(Z)V
    .locals 0
    .parameter "checkSize"

    .prologue
    .line 737
    sput-boolean p0, Lcom/android/mms/model/SlideshowModel;->mCheckMessageSize:Z

    .line 738
    return-void
.end method


# virtual methods
.method public add(ILcom/android/mms/model/SlideModel;)V
    .locals 2
    .parameter "location"
    .parameter "object"

    .prologue
    .line 1134
    if-eqz p2, :cond_0

    .line 1135
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 1136
    .local v0, increaseSize:I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1138
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1139
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1140
    invoke-direct {p0, p2}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    .line 1141
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1143
    .end local v0           #increaseSize:I
    :cond_0
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    return-void
.end method

.method public add(Lcom/android/mms/model/SlideModel;)Z
    .locals 3
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    .line 1054
    if-eqz p1, :cond_0

    .line 1055
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 1056
    .local v0, increaseSize:I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1058
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1059
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1060
    invoke-direct {p0, p1}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    .line 1061
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1065
    .end local v0           #increaseSize:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    check-cast p1, Lcom/android/mms/model/SlideModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1069
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAttachment(ILcom/android/mms/model/AttachmentModel;)V
    .locals 2
    .parameter "location"
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 1354
    if-eqz p2, :cond_0

    .line 1355
    invoke-virtual {p2}, Lcom/android/mms/model/AttachmentModel;->getMediaSize()I

    move-result v0

    .line 1357
    .local v0, increaseSize:I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1358
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1359
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1360
    invoke-direct {p0, p2}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    .line 1361
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1363
    .end local v0           #increaseSize:I
    :cond_0
    return-void
.end method

.method public addAttachment(Lcom/android/mms/model/AttachmentModel;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/model/SlideshowModel;->addAttachment(ILcom/android/mms/model/AttachmentModel;)V

    .line 1350
    return-void
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
    .line 1282
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1288
    :goto_0
    return-void

    .line 1286
    :cond_0
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 1287
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(IILandroid/content/ContentResolver;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1074
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 1075
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3, p0}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1076
    iget-object v4, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 1077
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1080
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1081
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1082
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1084
    :cond_2
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1091
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .locals 1
    .parameter "decreaseSize"

    .prologue
    .line 1033
    if-lez p1, :cond_0

    .line 1034
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1036
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/mms/model/SlideModel;
    .locals 2
    .parameter "location"

    .prologue
    .line 1150
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1152
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1158
    :goto_0
    return-object v0

    .line 1155
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    goto :goto_0

    .line 1158
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentList()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1397
    const-string v1, ""

    .line 1398
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1399
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 1400
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1401
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1403
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 1404
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1405
    if-eqz v0, :cond_2

    .line 1406
    const-string v4, "text/x-vCard"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".vcf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".vcf"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1411
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1414
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public getCurrentMessageSize()I
    .locals 1

    .prologue
    .line 1023
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    return v0
.end method

.method public getLayout()Lcom/android/mms/model/LayoutModel;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    return-object v0
.end method

.method public getRawAttachmentsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRawAttachmentsSize()I
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRemainContentsSize()I
    .locals 2

    .prologue
    .line 1043
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v0

    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSlides()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    return-object v0
.end method

.method public increaseMessageSize(I)V
    .locals 1
    .parameter "increaseSize"

    .prologue
    .line 1027
    if-lez p1, :cond_0

    .line 1028
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1030
    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDrmContentsPresent()Z
    .locals 1

    .prologue
    .line 1423
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isRawAttachmentPresent()Z
    .locals 1

    .prologue
    .line 1418
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    return v0
.end method

.method public isSimple()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1297
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 1317
    :cond_0
    :goto_0
    return v1

    .line 1300
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 1302
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    xor-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 1303
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->isCanAddVideo()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1306
    goto :goto_0

    .line 1309
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1311
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->isCanAddVideo()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1314
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1317
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2
    .parameter "context"

    .prologue
    .line 975
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 1
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    const/4 v0, 0x0

    .line 1249
    if-eqz p2, :cond_0

    .line 1250
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 1251
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 1253
    :cond_0
    return-void
.end method

.method public prepareForSend()V
    .locals 3

    .prologue
    .line 1339
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1340
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    .line 1341
    .local v0, text:Lcom/android/mms/model/TextModel;
    if-eqz v0, :cond_0

    .line 1342
    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->cloneText()V

    .line 1345
    .end local v0           #text:Lcom/android/mms/model/TextModel;
    :cond_0
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 1223
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1225
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1226
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1228
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method public remove(I)Lcom/android/mms/model/SlideModel;
    .locals 2
    .parameter "location"

    .prologue
    .line 1179
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1180
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    .line 1181
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1182
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 1183
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1185
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    .line 1103
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1104
    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1105
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1106
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 1107
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1110
    .end local v0           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAttachment(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    .line 1373
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1374
    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 1375
    .local v0, attach:Lcom/android/mms/model/AttachmentModel;
    iget v2, v0, Lcom/android/mms/model/AttachmentModel;->mSize:I

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1376
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->unregisterAllModelChangedObservers()V

    .line 1377
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1380
    .end local v0           #attach:Lcom/android/mms/model/AttachmentModel;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAttachment(Ljava/lang/Object;I)Z
    .locals 3
    .parameter "object"
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 1385
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 1386
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v0, p1

    .line 1387
    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 1388
    .local v0, attach:Lcom/android/mms/model/AttachmentModel;
    iget v2, v0, Lcom/android/mms/model/AttachmentModel;->mSize:I

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1389
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->unregisterAllModelChangedObservers()V

    .line 1390
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1393
    .end local v0           #attach:Lcom/android/mms/model/AttachmentModel;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;
    .locals 4
    .parameter "location"
    .parameter "object"

    .prologue
    .line 1189
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 1190
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    if-eqz p2, :cond_1

    .line 1191
    const/4 v1, 0x0

    .line 1192
    .local v1, removeSize:I
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 1193
    .local v0, addSize:I
    if-eqz v2, :cond_0

    .line 1194
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 1196
    :cond_0
    if-le v0, v1, :cond_4

    .line 1197
    sub-int v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1198
    sub-int v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1204
    .end local v0           #addSize:I
    .end local v1           #removeSize:I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 1205
    .restart local v2       #slide:Lcom/android/mms/model/SlideModel;
    if-eqz v2, :cond_2

    .line 1206
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 1209
    :cond_2
    if-eqz p2, :cond_3

    .line 1210
    invoke-direct {p0, p2}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    .line 1213
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1214
    return-object v2

    .line 1200
    .restart local v0       #addSize:I
    .restart local v1       #removeSize:I
    :cond_4
    sub-int v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    goto :goto_0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentMessageSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1019
    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1020
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sync(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 7
    .parameter

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1257
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 1258
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 1259
    if-eqz v4, :cond_3

    .line 1260
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v5

    .line 1261
    if-nez v5, :cond_2

    .line 1262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content-Type of the part may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1263
    :cond_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 1264
    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1265
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 1267
    :cond_3
    iget-object v1, v0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1268
    iget-object v1, v0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    .line 1269
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 1270
    if-eqz v5, :cond_4

    .line 1271
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/mms/model/AttachmentModel;->setUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 1278
    :cond_5
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1130
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toPduBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 764
    :cond_0
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 765
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 1241
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->unregisterAllModelChangedObservers()V

    .line 1243
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1244
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 1246
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 1232
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1234
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1235
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1237
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method
