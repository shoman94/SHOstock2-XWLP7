.class public Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;
.super Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
.source "KeyPurposeId.java"


# static fields
.field public static final anyExtendedKeyUsage:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_OCSPSigning:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_capwapAC:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_capwapWTP:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_clientAuth:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_codeSigning:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_dvcs:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_eapOverLAN:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_eapOverPPP:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_emailProtection:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecEndSystem:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecIKE:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecTunnel:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecUser:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_sbgpCertAAServerAuth:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_scvpClient:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_scvpServer:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_scvp_responder:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_serverAuth:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_smartcardlogon:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_timeStamping:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->ExtendedKeyUsage:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->anyExtendedKeyUsage:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 37
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_serverAuth:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 41
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_clientAuth:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 45
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_codeSigning:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 49
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.4"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_emailProtection:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 53
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.5"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecEndSystem:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 57
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.6"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecTunnel:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 61
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.7"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecUser:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 65
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.8"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_timeStamping:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 69
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.9"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_OCSPSigning:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 73
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.10"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_dvcs:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 77
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.11"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_sbgpCertAAServerAuth:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 81
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.12"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvp_responder:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 85
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.13"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverPPP:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 89
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.14"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverLAN:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 93
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.15"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvpServer:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 97
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.16"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvpClient:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 101
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.17"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecIKE:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 105
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.18"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_capwapAC:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 109
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.5.5.7.3.19"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_capwapWTP:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    .line 117
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    const-string v1, "1.3.6.1.4.1.311.20.2.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_smartcardlogon:Lmyorg/bouncycastle/asn1/x509/KeyPurposeId;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
