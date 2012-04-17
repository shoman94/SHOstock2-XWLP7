.class public Lmyorg/bouncycastle/mail/smime/handlers/pkcs7_mime;
.super Lmyorg/bouncycastle/mail/smime/handlers/PKCS7ContentHandler;
.source "pkcs7_mime.java"


# static fields
.field private static final ADF:Ljavax/activation/ActivationDataFlavor;

.field private static final DFS:[Lmyjava/awt/datatransfer/DataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 10
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    const-class v1, Ljavax/mail/internet/MimeBodyPart;

    const-string v2, "application/pkcs7-mime"

    const-string v3, "Encrypted Data"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/mail/smime/handlers/pkcs7_mime;->ADF:Ljavax/activation/ActivationDataFlavor;

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    const/4 v1, 0x0

    sget-object v2, Lmyorg/bouncycastle/mail/smime/handlers/pkcs7_mime;->ADF:Ljavax/activation/ActivationDataFlavor;

    aput-object v2, v0, v1

    sput-object v0, Lmyorg/bouncycastle/mail/smime/handlers/pkcs7_mime;->DFS:[Lmyjava/awt/datatransfer/DataFlavor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lmyorg/bouncycastle/mail/smime/handlers/pkcs7_mime;->ADF:Ljavax/activation/ActivationDataFlavor;

    sget-object v1, Lmyorg/bouncycastle/mail/smime/handlers/pkcs7_mime;->DFS:[Lmyjava/awt/datatransfer/DataFlavor;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/mail/smime/handlers/PKCS7ContentHandler;-><init>(Ljavax/activation/ActivationDataFlavor;[Lmyjava/awt/datatransfer/DataFlavor;)V

    .line 18
    return-void
.end method
