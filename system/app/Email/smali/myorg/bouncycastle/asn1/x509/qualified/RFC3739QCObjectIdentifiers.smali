.class public interface abstract Lmyorg/bouncycastle/asn1/x509/qualified/RFC3739QCObjectIdentifiers;
.super Ljava/lang/Object;
.source "RFC3739QCObjectIdentifiers.java"


# static fields
.field public static final id_qcs_pkixQCSyntax_v1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_qcs_pkixQCSyntax_v2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.11.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/qualified/RFC3739QCObjectIdentifiers;->id_qcs_pkixQCSyntax_v1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 13
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.11.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/qualified/RFC3739QCObjectIdentifiers;->id_qcs_pkixQCSyntax_v2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
