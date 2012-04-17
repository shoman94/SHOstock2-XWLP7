.class public Lmyorg/bouncycastle/jce/spec/ElGamalKeySpec;
.super Ljava/lang/Object;
.source "ElGamalKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private spec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;


# virtual methods
.method public getParams()Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/ElGamalKeySpec;->spec:Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    return-object v0
.end method
