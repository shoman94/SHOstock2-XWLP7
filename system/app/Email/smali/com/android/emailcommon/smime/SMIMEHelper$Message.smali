.class public Lcom/android/emailcommon/smime/SMIMEHelper$Message;
.super Ljava/lang/Object;
.source "SMIMEHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/smime/SMIMEHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# instance fields
.field public mAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public mBCC:[Ljavax/mail/Address;

.field public mBodyText:Ljava/lang/String;

.field public mCC:[Ljavax/mail/Address;

.field public mDate:Ljava/lang/String;

.field public mDelivery:Z

.field public mFrom:Ljavax/mail/Address;

.field public mHtmlBodyText:Ljava/lang/String;

.field public mImportance:Ljava/lang/String;

.field public mIsHtml:Z

.field public mMessageID:Ljava/lang/String;

.field public mRead:Z

.field public mReplyTo:[Ljavax/mail/Address;

.field public mSignatures:[Ljava/security/cert/X509Certificate;

.field public mSigned:Z

.field public mSigners:[Lmyorg/bouncycastle/cms/SignerInformation;

.field public mSubject:Ljava/lang/String;

.field public mTo:[Ljavax/mail/Address;

.field public mVerified:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 177
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    return-void
.end method
