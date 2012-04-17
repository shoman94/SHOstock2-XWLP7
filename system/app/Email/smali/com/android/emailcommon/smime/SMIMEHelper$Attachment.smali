.class public Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;
.super Ljava/lang/Object;
.source "SMIMEHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/smime/SMIMEHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attachment"
.end annotation


# instance fields
.field public mAttachmentBody:Ljavax/mail/BodyPart;

.field public mContentId:Ljava/lang/String;

.field public mEncoding:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mIsInline:I

.field public mSize:I

.field public mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const-string v0, "base64"

    iput-object v0, p0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mEncoding:Ljava/lang/String;

    return-void
.end method
