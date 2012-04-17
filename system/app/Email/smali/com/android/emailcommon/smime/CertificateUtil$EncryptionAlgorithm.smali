.class public final enum Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
.super Ljava/lang/Enum;
.source "CertificateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/smime/CertificateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptionAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

.field public static final enum UNKNOWN:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

.field public static final enum aES128_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

.field public static final enum aES192_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

.field public static final enum aES256_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

.field public static final enum dES_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

.field public static final enum dES_EDE3_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

.field public static final enum rC2128_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

.field public static final enum rC240_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

.field public static final enum rC264_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 282
    new-instance v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->UNKNOWN:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    new-instance v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    const-string v1, "dES_CBC"

    invoke-direct {v0, v1, v4}, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->dES_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    new-instance v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    const-string v1, "dES_EDE3_CBC"

    invoke-direct {v0, v1, v5}, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->dES_EDE3_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    new-instance v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    const-string v1, "rC2128_CBC"

    invoke-direct {v0, v1, v6}, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->rC2128_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    new-instance v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    const-string v1, "rC264_CBC"

    invoke-direct {v0, v1, v7}, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->rC264_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    new-instance v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    const-string v1, "rC240_CBC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->rC240_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    new-instance v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    const-string v1, "aES128_CBC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->aES128_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    new-instance v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    const-string v1, "aES192_CBC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->aES192_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    new-instance v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    const-string v1, "aES256_CBC"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->aES256_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    .line 281
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->UNKNOWN:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->dES_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->dES_EDE3_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->rC2128_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->rC264_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->rC240_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->aES128_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->aES192_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->aES256_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->$VALUES:[Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

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
    .line 281
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    .locals 1
    .parameter

    .prologue
    .line 281
    const-class v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    return-object v0
.end method

.method public static values()[Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->$VALUES:[Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    invoke-virtual {v0}, [Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    return-object v0
.end method
