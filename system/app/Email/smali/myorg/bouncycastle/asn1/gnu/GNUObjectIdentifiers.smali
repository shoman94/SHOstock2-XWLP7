.class public interface abstract Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;
.super Ljava/lang/Object;
.source "GNUObjectIdentifiers.java"


# static fields
.field public static final CRC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CRC32:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final GNU:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final GnuPG:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final GnuRadar:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final Serpent:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final Serpent_128_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final Serpent_128_CFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final Serpent_128_ECB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final Serpent_128_OFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final Serpent_192_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final Serpent_192_CFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final Serpent_192_ECB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final Serpent_192_OFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final Serpent_256_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final Serpent_256_CFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final Serpent_256_ECB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final Serpent_256_OFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final Tiger_192:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final digestAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final encryptionAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final notation:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final pkaAddress:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->GNU:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 9
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->GnuPG:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 11
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.2.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->notation:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 13
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.2.1.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->pkaAddress:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 15
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->GnuRadar:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 17
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.12"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->digestAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 19
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.12.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Tiger_192:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 21
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.13"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->encryptionAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 23
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.13.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 25
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.13.2.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_128_ECB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 27
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.13.2.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_128_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 29
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.13.2.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_128_OFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 31
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.13.2.4"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_128_CFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 33
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.13.2.21"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_192_ECB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 35
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.13.2.22"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_192_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 37
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.13.2.23"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_192_OFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 39
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.13.2.24"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_192_CFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 41
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.13.2.41"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_256_ECB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 43
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.13.2.42"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_256_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 45
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.13.2.43"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_256_OFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 47
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.13.2.44"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_256_CFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 49
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.14"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->CRC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 51
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11591.14.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->CRC32:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
