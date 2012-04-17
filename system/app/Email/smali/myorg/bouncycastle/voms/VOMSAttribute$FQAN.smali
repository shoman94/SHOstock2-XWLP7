.class public Lmyorg/bouncycastle/voms/VOMSAttribute$FQAN;
.super Ljava/lang/Object;
.source "VOMSAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/voms/VOMSAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FQAN"
.end annotation


# instance fields
.field capability:Ljava/lang/String;

.field fqan:Ljava/lang/String;

.field group:Ljava/lang/String;

.field role:Ljava/lang/String;


# virtual methods
.method public getFQAN()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lmyorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lmyorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    .line 170
    :goto_0
    return-object v0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lmyorg/bouncycastle/voms/VOMSAttribute$FQAN;->role:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmyorg/bouncycastle/voms/VOMSAttribute$FQAN;->role:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lmyorg/bouncycastle/voms/VOMSAttribute$FQAN;->capability:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/Capability="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmyorg/bouncycastle/voms/VOMSAttribute$FQAN;->capability:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lmyorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    goto :goto_0

    .line 167
    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lmyorg/bouncycastle/voms/VOMSAttribute$FQAN;->getFQAN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
