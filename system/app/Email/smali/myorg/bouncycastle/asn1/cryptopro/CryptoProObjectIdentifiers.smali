.class public interface abstract Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;
.super Ljava/lang/Object;
.source "CryptoProObjectIdentifiers.java"


# static fields
.field public static final gostR28147_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001_CryptoPro_A:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001_CryptoPro_B:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001_CryptoPro_C:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001_CryptoPro_XchA:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_2001_CryptoPro_XchB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_A:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_B:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_C:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_D:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_XchA:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_XchB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3410_94_CryptoPro_XchC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3411:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3411_94_CryptoProParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3411_94_with_gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gostR3411_94_with_gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gost_ElSgDH3410_1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final gost_ElSgDH3410_default:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.9"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 13
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.21"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR28147_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 15
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.20"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 16
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.19"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 17
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.4"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 19
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 23
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.30.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_CryptoProParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 27
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.32.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_A:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 29
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.32.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_B:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 31
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.32.4"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_C:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 33
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.32.5"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_D:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 37
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.33.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_XchA:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 39
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.33.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_XchB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 41
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.33.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94_CryptoPro_XchC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 45
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.35.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_A:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 47
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.35.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_B:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 49
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.35.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_C:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 53
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.36.0"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchA:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 55
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.36.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_XchB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 58
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.36.0"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gost_ElSgDH3410_default:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 60
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.643.2.2.36.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gost_ElSgDH3410_1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
