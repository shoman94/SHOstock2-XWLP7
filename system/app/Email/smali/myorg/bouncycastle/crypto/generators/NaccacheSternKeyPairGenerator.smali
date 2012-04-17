.class public Lmyorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;
.super Ljava/lang/Object;
.source "NaccacheSternKeyPairGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static smallPrimes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const/16 v0, 0x65

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->smallPrimes:[I

    .line 33
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void

    .line 22
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0x83t 0x0t 0x0t 0x0t
        0x89t 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
        0x95t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x9dt 0x0t 0x0t 0x0t
        0xa3t 0x0t 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
        0xadt 0x0t 0x0t 0x0t
        0xb3t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0xd3t 0x0t 0x0t 0x0t
        0xdft 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
        0xe5t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
        0x1t 0x1t 0x0t 0x0t
        0x7t 0x1t 0x0t 0x0t
        0xdt 0x1t 0x0t 0x0t
        0xft 0x1t 0x0t 0x0t
        0x15t 0x1t 0x0t 0x0t
        0x19t 0x1t 0x0t 0x0t
        0x1bt 0x1t 0x0t 0x0t
        0x25t 0x1t 0x0t 0x0t
        0x33t 0x1t 0x0t 0x0t
        0x37t 0x1t 0x0t 0x0t
        0x39t 0x1t 0x0t 0x0t
        0x3dt 0x1t 0x0t 0x0t
        0x4bt 0x1t 0x0t 0x0t
        0x51t 0x1t 0x0t 0x0t
        0x5bt 0x1t 0x0t 0x0t
        0x5dt 0x1t 0x0t 0x0t
        0x61t 0x1t 0x0t 0x0t
        0x67t 0x1t 0x0t 0x0t
        0x6ft 0x1t 0x0t 0x0t
        0x75t 0x1t 0x0t 0x0t
        0x7bt 0x1t 0x0t 0x0t
        0x7ft 0x1t 0x0t 0x0t
        0x85t 0x1t 0x0t 0x0t
        0x8dt 0x1t 0x0t 0x0t
        0x91t 0x1t 0x0t 0x0t
        0x99t 0x1t 0x0t 0x0t
        0xa3t 0x1t 0x0t 0x0t
        0xa5t 0x1t 0x0t 0x0t
        0xaft 0x1t 0x0t 0x0t
        0xb1t 0x1t 0x0t 0x0t
        0xb7t 0x1t 0x0t 0x0t
        0xbbt 0x1t 0x0t 0x0t
        0xc1t 0x1t 0x0t 0x0t
        0xc9t 0x1t 0x0t 0x0t
        0xcdt 0x1t 0x0t 0x0t
        0xcft 0x1t 0x0t 0x0t
        0xd3t 0x1t 0x0t 0x0t
        0xdft 0x1t 0x0t 0x0t
        0xe7t 0x1t 0x0t 0x0t
        0xebt 0x1t 0x0t 0x0t
        0xf3t 0x1t 0x0t 0x0t
        0xf7t 0x1t 0x0t 0x0t
        0xfdt 0x1t 0x0t 0x0t
        0x9t 0x2t 0x0t 0x0t
        0xbt 0x2t 0x0t 0x0t
        0x1dt 0x2t 0x0t 0x0t
        0x23t 0x2t 0x0t 0x0t
        0x2dt 0x2t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
