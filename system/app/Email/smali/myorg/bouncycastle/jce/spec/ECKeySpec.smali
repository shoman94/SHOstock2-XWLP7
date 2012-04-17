.class public Lmyorg/bouncycastle/jce/spec/ECKeySpec;
.super Ljava/lang/Object;
.source "ECKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private spec:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;


# virtual methods
.method public getParams()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/ECKeySpec;->spec:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    return-object v0
.end method
