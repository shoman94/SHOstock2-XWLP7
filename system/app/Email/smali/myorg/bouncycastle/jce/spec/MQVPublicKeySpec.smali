.class public Lmyorg/bouncycastle/jce/spec/MQVPublicKeySpec;
.super Ljava/lang/Object;
.source "MQVPublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Lmyorg/bouncycastle/jce/interfaces/MQVPublicKey;


# instance fields
.field private ephemeralKey:Ljava/security/PublicKey;

.field private staticKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/security/PublicKey;)V
    .locals 0
    .parameter "staticKey"
    .parameter "ephemeralKey"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lmyorg/bouncycastle/jce/spec/MQVPublicKeySpec;->staticKey:Ljava/security/PublicKey;

    .line 22
    iput-object p2, p0, Lmyorg/bouncycastle/jce/spec/MQVPublicKeySpec;->ephemeralKey:Ljava/security/PublicKey;

    .line 23
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "ECMQV"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEphemeralKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/MQVPublicKeySpec;->ephemeralKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStaticKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/MQVPublicKeySpec;->staticKey:Ljava/security/PublicKey;

    return-object v0
.end method
