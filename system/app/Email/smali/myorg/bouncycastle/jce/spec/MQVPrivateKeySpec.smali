.class public Lmyorg/bouncycastle/jce/spec/MQVPrivateKeySpec;
.super Ljava/lang/Object;
.source "MQVPrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Lmyorg/bouncycastle/jce/interfaces/MQVPrivateKey;


# instance fields
.field private ephemeralPrivateKey:Ljava/security/PrivateKey;

.field private ephemeralPublicKey:Ljava/security/PublicKey;

.field private staticPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/PrivateKey;)V
    .locals 1
    .parameter "staticPrivateKey"
    .parameter "ephemeralPrivateKey"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmyorg/bouncycastle/jce/spec/MQVPrivateKeySpec;-><init>(Ljava/security/PrivateKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 0
    .parameter "staticPrivateKey"
    .parameter "ephemeralPrivateKey"
    .parameter "ephemeralPublicKey"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lmyorg/bouncycastle/jce/spec/MQVPrivateKeySpec;->staticPrivateKey:Ljava/security/PrivateKey;

    .line 35
    iput-object p2, p0, Lmyorg/bouncycastle/jce/spec/MQVPrivateKeySpec;->ephemeralPrivateKey:Ljava/security/PrivateKey;

    .line 36
    iput-object p3, p0, Lmyorg/bouncycastle/jce/spec/MQVPrivateKeySpec;->ephemeralPublicKey:Ljava/security/PublicKey;

    .line 37
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "ECMQV"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEphemeralPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/MQVPrivateKeySpec;->ephemeralPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getEphemeralPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/MQVPrivateKeySpec;->ephemeralPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStaticPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/MQVPrivateKeySpec;->staticPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method
