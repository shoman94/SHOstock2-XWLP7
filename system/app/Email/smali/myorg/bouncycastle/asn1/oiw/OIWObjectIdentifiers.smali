.class public interface abstract Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;
.super Ljava/lang/Object;
.source "OIWObjectIdentifiers.java"


# static fields
.field public static final desCBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final desCFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final desECB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final desEDE:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final desOFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final dsaWithSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final elGamalAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final idSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final md4WithRSA:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final md4WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final md5WithRSA:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final sha1WithRSA:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.14.3.2.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->md4WithRSA:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 11
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.14.3.2.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->md5WithRSA:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 12
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.14.3.2.4"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->md4WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 14
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.14.3.2.6"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desECB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 15
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.14.3.2.7"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 16
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.14.3.2.8"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desOFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 17
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.14.3.2.9"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 19
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.14.3.2.17"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desEDE:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 21
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.14.3.2.26"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 23
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.14.3.2.27"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 25
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.14.3.2.29"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 31
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.14.7.2.1.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
