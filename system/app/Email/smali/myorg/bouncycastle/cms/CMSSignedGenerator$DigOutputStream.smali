.class Lmyorg/bouncycastle/cms/CMSSignedGenerator$DigOutputStream;
.super Ljava/io/OutputStream;
.source "CMSSignedGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/cms/CMSSignedGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DigOutputStream"
.end annotation


# instance fields
.field dig:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 0
    .parameter "dig"

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 274
    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator$DigOutputStream;->dig:Ljava/security/MessageDigest;

    .line 275
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator$DigOutputStream;->dig:Ljava/security/MessageDigest;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 283
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator$DigOutputStream;->dig:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 279
    return-void
.end method
