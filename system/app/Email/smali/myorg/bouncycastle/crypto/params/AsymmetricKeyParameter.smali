.class public Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.super Ljava/lang/Object;
.source "AsymmetricKeyParameter.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field privateKey:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "privateKey"

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->privateKey:Z

    .line 11
    return-void
.end method


# virtual methods
.method public isPrivate()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->privateKey:Z

    return v0
.end method
