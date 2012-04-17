.class Lcom/android/email/activity/utils/html/MediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/utils/html/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaFileType"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field fileType:I

.field iconLarge:I

.field iconSmall:I

.field mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "fileType"
    .parameter "mimeType"
    .parameter "desc"
    .parameter "iconSmall"
    .parameter "iconLarge"

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p1, p0, Lcom/android/email/activity/utils/html/MediaFile$MediaFileType;->fileType:I

    .line 131
    iput-object p2, p0, Lcom/android/email/activity/utils/html/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    .line 132
    iput-object p3, p0, Lcom/android/email/activity/utils/html/MediaFile$MediaFileType;->description:Ljava/lang/String;

    .line 133
    iput p4, p0, Lcom/android/email/activity/utils/html/MediaFile$MediaFileType;->iconSmall:I

    .line 134
    iput p5, p0, Lcom/android/email/activity/utils/html/MediaFile$MediaFileType;->iconLarge:I

    .line 135
    return-void
.end method
