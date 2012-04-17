.class public final enum Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;
.super Ljava/lang/Enum;
.source "CertificateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/smime/CertificateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AllowSMIMEEncryptionAlgorithmNegotiation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

.field public static final enum DO_NOT_NEGOTIATE:Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

.field public static final enum NEGOTIATE_ANY:Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

.field public static final enum NEGOTIATE_STRONG:Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 278
    new-instance v0, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    const-string v1, "DO_NOT_NEGOTIATE"

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->DO_NOT_NEGOTIATE:Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    new-instance v0, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    const-string v1, "NEGOTIATE_STRONG"

    invoke-direct {v0, v1, v3}, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->NEGOTIATE_STRONG:Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    new-instance v0, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    const-string v1, "NEGOTIATE_ANY"

    invoke-direct {v0, v1, v4}, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->NEGOTIATE_ANY:Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    .line 277
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->DO_NOT_NEGOTIATE:Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->NEGOTIATE_STRONG:Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->NEGOTIATE_ANY:Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->$VALUES:[Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 277
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;
    .locals 1
    .parameter

    .prologue
    .line 277
    const-class v0, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    return-object v0
.end method

.method public static values()[Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->$VALUES:[Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    invoke-virtual {v0}, [Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    return-object v0
.end method
