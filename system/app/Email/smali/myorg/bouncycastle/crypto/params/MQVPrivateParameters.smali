.class public Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;
.super Ljava/lang/Object;
.source "MQVPrivateParameters.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private ephemeralPrivateKey:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private ephemeralPublicKey:Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

.field private staticPrivateKey:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 0
    .parameter "staticPrivateKey"
    .parameter "ephemeralPrivateKey"
    .parameter "ephemeralPublicKey"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->staticPrivateKey:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 19
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->ephemeralPrivateKey:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 20
    iput-object p3, p0, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->ephemeralPublicKey:Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 21
    return-void
.end method


# virtual methods
.method public getEphemeralPrivateKey()Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->ephemeralPrivateKey:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    return-object v0
.end method

.method public getEphemeralPublicKey()Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->ephemeralPublicKey:Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-object v0
.end method

.method public getStaticPrivateKey()Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->staticPrivateKey:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    return-object v0
.end method
