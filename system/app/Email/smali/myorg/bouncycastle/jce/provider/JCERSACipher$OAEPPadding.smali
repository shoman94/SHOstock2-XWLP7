.class public Lmyorg/bouncycastle/jce/provider/JCERSACipher$OAEPPadding;
.super Lmyorg/bouncycastle/jce/provider/JCERSACipher;
.source "JCERSACipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCERSACipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAEPPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 413
    sget-object v0, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCERSACipher;-><init>(Ljavax/crypto/spec/OAEPParameterSpec;)V

    .line 414
    return-void
.end method
