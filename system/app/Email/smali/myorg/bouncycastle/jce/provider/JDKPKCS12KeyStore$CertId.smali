.class Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
.super Ljava/lang/Object;
.source "JDKPKCS12KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CertId"
.end annotation


# instance fields
.field id:[B

.field final synthetic this$0:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V
    .locals 1
    .parameter
    .parameter "key"

    .prologue
    .line 114
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->this$0:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    #calls: Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    invoke-static {p1, p2}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->access$100(Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    .line 116
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;[B)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 118
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->this$0:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    .line 120
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 127
    if-ne p1, p0, :cond_0

    .line 128
    const/4 v1, 0x1

    .line 137
    :goto_0
    return v1

    .line 131
    :cond_0
    instance-of v1, p1, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    if-nez v1, :cond_1

    .line 132
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 135
    check-cast v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    .line 137
    .local v0, cId:Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    iget-object v2, v0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    invoke-static {v1, v2}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    invoke-static {v0}, Lmyorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
