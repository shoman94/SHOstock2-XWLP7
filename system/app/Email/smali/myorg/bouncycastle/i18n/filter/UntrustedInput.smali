.class public Lmyorg/bouncycastle/i18n/filter/UntrustedInput;
.super Ljava/lang/Object;
.source "UntrustedInput.java"


# instance fields
.field protected input:Ljava/lang/Object;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lmyorg/bouncycastle/i18n/filter/UntrustedInput;->input:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
