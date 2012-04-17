.class public final Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;
.super Ljava/security/Provider;
.source "BouncyCastleProvider.java"

# interfaces
.implements Lmyorg/bouncycastle/jce/interfaces/ConfigurableProvider;


# static fields
.field private static final ASYMMETRIC_CIPHERS:[Ljava/lang/String;

.field public static PROVIDER_NAME:Ljava/lang/String;

.field private static final SYMMETRIC_CIPHERS:[Ljava/lang/String;

.field private static info:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    const-string v0, "BouncyCastle Security Provider v1.45"

    sput-object v0, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    .line 51
    const-string v0, "myBC"

    sput-object v0, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AES"

    aput-object v1, v0, v3

    const-string v1, "Camellia"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "CAST5"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Grainv1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Grain128"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "IDEA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Noekeon"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SEED"

    aput-object v2, v0, v1

    sput-object v0, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Ljava/lang/String;

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "EC"

    aput-object v1, v0, v3

    sput-object v0, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 75
    sget-object v0, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-wide v1, 0x3ff7333333333333L

    sget-object v3, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 77
    new-instance v0, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider$1;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider$1;-><init>(Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->setup()V

    return-void
.end method

.method private addHMACAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mac."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.Mac.HMAC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.Mac.HMAC/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyGenerator."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.KeyGenerator.HMAC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.KeyGenerator.HMAC/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    return-void
.end method

.method private addHMACAlias(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.Mac."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.KeyGenerator."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    return-void
.end method

.method private addMacAlgorithms()V
    .locals 3

    .prologue
    .line 772
    const-string v0, "Mac.DESMAC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$DES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const-string v0, "Alg.Alias.Mac.DES"

    const-string v1, "DESMAC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string v0, "Mac.DESMAC/CFB8"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$DESCFB8"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string v0, "Alg.Alias.Mac.DES/CFB8"

    const-string v1, "DESMAC/CFB8"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string v0, "Mac.DESEDEMAC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$DESede"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string v0, "Alg.Alias.Mac.DESEDE"

    const-string v1, "DESEDEMAC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string v0, "Mac.DESEDEMAC/CFB8"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$DESedeCFB8"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v0, "Alg.Alias.Mac.DESEDE/CFB8"

    const-string v1, "DESEDEMAC/CFB8"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const-string v0, "Mac.DESWITHISO9797"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$DES9797Alg3"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const-string v0, "Alg.Alias.Mac.DESISO9797MAC"

    const-string v1, "DESWITHISO9797"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    const-string v0, "Mac.DESEDEMAC64"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$DESede64"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    const-string v0, "Alg.Alias.Mac.DESEDE64"

    const-string v1, "DESEDEMAC64"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    const-string v0, "Mac.DESEDEMAC64WITHISO7816-4PADDING"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$DESede64with7816d4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const-string v0, "Alg.Alias.Mac.DESEDE64WITHISO7816-4PADDING"

    const-string v1, "DESEDEMAC64WITHISO7816-4PADDING"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const-string v0, "Alg.Alias.Mac.DESEDEISO9797ALG1MACWITHISO7816-4PADDING"

    const-string v1, "DESEDEMAC64WITHISO7816-4PADDING"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const-string v0, "Alg.Alias.Mac.DESEDEISO9797ALG1WITHISO7816-4PADDING"

    const-string v1, "DESEDEMAC64WITHISO7816-4PADDING"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string v0, "Mac.ISO9797ALG3MAC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$DES9797Alg3"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-string v0, "Alg.Alias.Mac.ISO9797ALG3"

    const-string v1, "ISO9797ALG3MAC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string v0, "Mac.ISO9797ALG3WITHISO7816-4PADDING"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$DES9797Alg3with7816d4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    const-string v0, "Alg.Alias.Mac.ISO9797ALG3MACWITHISO7816-4PADDING"

    const-string v1, "ISO9797ALG3WITHISO7816-4PADDING"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    const-string v0, "Mac.SKIPJACKMAC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$Skipjack"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    const-string v0, "Alg.Alias.Mac.SKIPJACK"

    const-string v1, "SKIPJACKMAC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const-string v0, "Mac.SKIPJACKMAC/CFB8"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$SkipjackCFB8"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string v0, "Alg.Alias.Mac.SKIPJACK/CFB8"

    const-string v1, "SKIPJACKMAC/CFB8"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const-string v0, "Mac.RC2MAC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$RC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    const-string v0, "Alg.Alias.Mac.RC2"

    const-string v1, "RC2MAC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const-string v0, "Mac.RC2MAC/CFB8"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$RC2CFB8"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string v0, "Alg.Alias.Mac.RC2/CFB8"

    const-string v1, "RC2MAC/CFB8"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string v0, "Mac.RC5MAC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$RC5"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-string v0, "Alg.Alias.Mac.RC5"

    const-string v1, "RC5MAC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string v0, "Mac.RC5MAC/CFB8"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$RC5CFB8"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    const-string v0, "Alg.Alias.Mac.RC5/CFB8"

    const-string v1, "RC5MAC/CFB8"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string v0, "Mac.GOST28147MAC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$GOST28147"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-string v0, "Alg.Alias.Mac.GOST28147"

    const-string v1, "GOST28147MAC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string v0, "Mac.VMPCMAC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$VMPC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-string v0, "Alg.Alias.Mac.VMPC"

    const-string v1, "VMPCMAC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const-string v0, "Alg.Alias.Mac.VMPC-MAC"

    const-string v1, "VMPCMAC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string v0, "Mac.OLDHMACSHA384"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$OldSHA384"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string v0, "Mac.OLDHMACSHA512"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$OldSHA512"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const-string v0, "MD2"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$MD2"

    const-string v2, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$MD2HMAC"

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v0, "MD4"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$MD4"

    const-string v2, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$MD4HMAC"

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v0, "MD5"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$MD5"

    const-string v2, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$MD5HMAC"

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v0, "MD5"

    sget-object v1, Lmyorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->hmacMD5:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlias(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 836
    const-string v0, "SHA1"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$SHA1"

    const-string v2, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$HMACSHA1"

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v0, "SHA1"

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlias(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 839
    const-string v0, "SHA1"

    sget-object v1, Lmyorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->hmacSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlias(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 840
    const-string v0, "SHA224"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$SHA224"

    const-string v2, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$HMACSHA224"

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string v0, "SHA224"

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlias(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 843
    const-string v0, "SHA256"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$SHA256"

    const-string v2, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$HMACSHA256"

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string v0, "SHA256"

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlias(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 846
    const-string v0, "SHA384"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$SHA384"

    const-string v2, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$HMACSHA384"

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v0, "SHA384"

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlias(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 849
    const-string v0, "SHA512"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$SHA512"

    const-string v2, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$HMACSHA512"

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v0, "SHA512"

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlias(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 853
    const-string v0, "RIPEMD128"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$RIPEMD128"

    const-string v2, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$RIPEMD128HMAC"

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v0, "RIPEMD160"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$RIPEMD160"

    const-string v2, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$RIPEMD160HMAC"

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v0, "RIPEMD160"

    sget-object v1, Lmyorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->hmacRIPEMD160:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlias(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 859
    const-string v0, "TIGER"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$Tiger"

    const-string v2, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$HMACTIGER"

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v0, "TIGER"

    sget-object v1, Lmyorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->hmacTIGER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addHMACAlias(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 863
    const-string v0, "Mac.PBEWITHHMACSHA"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$PBEWithSHA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    const-string v0, "Mac.PBEWITHHMACSHA1"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$PBEWithSHA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    const-string v0, "Mac.PBEWITHHMACRIPEMD160"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEMac$PBEWithRIPEMD160"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const-string v0, "Alg.Alias.Mac.1.3.14.3.2.26"

    const-string v1, "PBEWITHHMACSHA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    return-void
.end method

.method private addMappings(Ljava/util/Map;)V
    .locals 4
    .parameter

    .prologue
    .line 757
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 758
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 760
    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 761
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate provider key ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 766
    :cond_1
    return-void
.end method

.method private addMessageDigestAlgorithms()V
    .locals 2

    .prologue
    .line 892
    const-string v0, "MessageDigest.SHA-1"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKMessageDigest$SHA1"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    const-string v0, "Alg.Alias.MessageDigest.SHA1"

    const-string v1, "SHA-1"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    const-string v0, "Alg.Alias.MessageDigest.SHA"

    const-string v1, "SHA-1"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.MessageDigest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-1"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    const-string v0, "MessageDigest.SHA-224"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKMessageDigest$SHA224"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    const-string v0, "Alg.Alias.MessageDigest.SHA224"

    const-string v1, "SHA-224"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.MessageDigest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-224"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const-string v0, "MessageDigest.SHA-256"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKMessageDigest$SHA256"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const-string v0, "Alg.Alias.MessageDigest.SHA256"

    const-string v1, "SHA-256"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.MessageDigest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-256"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    const-string v0, "MessageDigest.SHA-384"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKMessageDigest$SHA384"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const-string v0, "Alg.Alias.MessageDigest.SHA384"

    const-string v1, "SHA-384"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.MessageDigest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-384"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    const-string v0, "MessageDigest.SHA-512"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKMessageDigest$SHA512"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string v0, "Alg.Alias.MessageDigest.SHA512"

    const-string v1, "SHA-512"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.MessageDigest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-512"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    const-string v0, "MessageDigest.MD2"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKMessageDigest$MD2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.MessageDigest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MD2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    const-string v0, "MessageDigest.MD4"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKMessageDigest$MD4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.MessageDigest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md4:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MD4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const-string v0, "MessageDigest.MD5"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKMessageDigest$MD5"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.MessageDigest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MD5"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const-string v0, "MessageDigest.RIPEMD128"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKMessageDigest$RIPEMD128"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.MessageDigest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RIPEMD128"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const-string v0, "MessageDigest.RIPEMD160"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKMessageDigest$RIPEMD160"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.MessageDigest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RIPEMD160"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string v0, "MessageDigest.RIPEMD256"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKMessageDigest$RIPEMD256"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.MessageDigest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RIPEMD256"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    const-string v0, "MessageDigest.RIPEMD320"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKMessageDigest$RIPEMD320"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    const-string v0, "MessageDigest.Tiger"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKMessageDigest$Tiger"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    const-string v0, "MessageDigest.WHIRLPOOL"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKMessageDigest$Whirlpool"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    const-string v0, "MessageDigest.GOST3411"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKMessageDigest$GOST3411"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string v0, "Alg.Alias.MessageDigest.GOST"

    const-string v1, "GOST3411"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    const-string v0, "Alg.Alias.MessageDigest.GOST-3411"

    const-string v1, "GOST3411"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.MessageDigest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GOST3411"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    return-void
.end method

.method private addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WITH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "with"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "With"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alg.Alias.Signature."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alg.Alias.Signature."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.Signature."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.Signature."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.Signature.OID."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    return-void
.end method

.method private addSignatureAlgorithms()V
    .locals 4

    .prologue
    .line 936
    const-string v0, "Signature.MD2WithRSAEncryption"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKDigestSignature$MD2WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    const-string v0, "Signature.MD4WithRSAEncryption"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKDigestSignature$MD4WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const-string v0, "Signature.MD5WithRSAEncryption"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKDigestSignature$MD5WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const-string v0, "Signature.SHA1WithRSAEncryption"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKDigestSignature$SHA1WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const-string v0, "Signature.SHA224WithRSAEncryption"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKDigestSignature$SHA224WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const-string v0, "Signature.SHA256WithRSAEncryption"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKDigestSignature$SHA256WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    const-string v0, "Signature.SHA384WithRSAEncryption"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKDigestSignature$SHA384WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    const-string v0, "Signature.SHA512WithRSAEncryption"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKDigestSignature$SHA512WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const-string v0, "Signature.RIPEMD160WithRSAEncryption"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKDigestSignature$RIPEMD160WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    const-string v0, "Signature.RIPEMD128WithRSAEncryption"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKDigestSignature$RIPEMD128WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    const-string v0, "Signature.RIPEMD256WithRSAEncryption"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKDigestSignature$RIPEMD256WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    const-string v0, "Signature.DSA"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKDSASigner$stdDSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    const-string v0, "Signature.NONEWITHDSA"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKDSASigner$noneDSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    const-string v0, "Signature.SHA1withRSA/ISO9796-2"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKISOSignature$SHA1WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    const-string v0, "Signature.MD5withRSA/ISO9796-2"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKISOSignature$MD5WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    const-string v0, "Signature.RIPEMD160withRSA/ISO9796-2"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKISOSignature$RIPEMD160WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    const-string v0, "Signature.RSASSA-PSS"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKPSSSigner$PSSwithRSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myorg.bouncycastle.jce.provider.JDKPSSSigner$PSSwithRSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    const-string v0, "Signature.SHA1withRSA/PSS"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKPSSSigner$SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    const-string v0, "Signature.SHA224withRSA/PSS"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKPSSSigner$SHA224withRSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    const-string v0, "Signature.SHA256withRSA/PSS"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKPSSSigner$SHA256withRSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    const-string v0, "Signature.SHA384withRSA/PSS"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKPSSSigner$SHA384withRSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    const-string v0, "Signature.SHA512withRSA/PSS"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKPSSSigner$SHA512withRSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    const-string v0, "Signature.RSA"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKDigestSignature$noneRSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    const-string v0, "Signature.RAWRSASSA-PSS"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKPSSSigner$nonePSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    const-string v0, "Alg.Alias.Signature.RAWDSA"

    const-string v1, "NONEWITHDSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    const-string v0, "Alg.Alias.Signature.RAWRSA"

    const-string v1, "RSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    const-string v0, "Alg.Alias.Signature.NONEWITHRSA"

    const-string v1, "RSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    const-string v0, "Alg.Alias.Signature.RAWRSAPSS"

    const-string v1, "RAWRSASSA-PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    const-string v0, "Alg.Alias.Signature.NONEWITHRSAPSS"

    const-string v1, "RAWRSASSA-PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    const-string v0, "Alg.Alias.Signature.NONEWITHRSASSA-PSS"

    const-string v1, "RAWRSASSA-PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    const-string v0, "Alg.Alias.Signature.RSAPSS"

    const-string v1, "RSASSA-PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    const-string v0, "Alg.Alias.Signature.SHA1withRSAandMGF1"

    const-string v1, "SHA1withRSA/PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    const-string v0, "Alg.Alias.Signature.SHA224withRSAandMGF1"

    const-string v1, "SHA224withRSA/PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    const-string v0, "Alg.Alias.Signature.SHA256withRSAandMGF1"

    const-string v1, "SHA256withRSA/PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    const-string v0, "Alg.Alias.Signature.SHA384withRSAandMGF1"

    const-string v1, "SHA384withRSA/PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    const-string v0, "Alg.Alias.Signature.SHA512withRSAandMGF1"

    const-string v1, "SHA512withRSA/PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    const-string v0, "Alg.Alias.Signature.MD2withRSAEncryption"

    const-string v1, "MD2WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    const-string v0, "Alg.Alias.Signature.MD4withRSAEncryption"

    const-string v1, "MD4WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    const-string v0, "Alg.Alias.Signature.MD5withRSAEncryption"

    const-string v1, "MD5WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    const-string v0, "Alg.Alias.Signature.SHA1withRSAEncryption"

    const-string v1, "SHA1WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    const-string v0, "Alg.Alias.Signature.SHA224withRSAEncryption"

    const-string v1, "SHA224WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    const-string v0, "Alg.Alias.Signature.SHA256withRSAEncryption"

    const-string v1, "SHA256WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    const-string v0, "Alg.Alias.Signature.SHA384withRSAEncryption"

    const-string v1, "SHA384WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    const-string v0, "Alg.Alias.Signature.SHA512withRSAEncryption"

    const-string v1, "SHA512WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    const-string v0, "Alg.Alias.Signature.SHA256WithRSAEncryption"

    const-string v1, "SHA256WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    const-string v0, "Alg.Alias.Signature.SHA384WithRSAEncryption"

    const-string v1, "SHA384WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    const-string v0, "Alg.Alias.Signature.SHA512WithRSAEncryption"

    const-string v1, "SHA512WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    const-string v0, "Alg.Alias.Signature.SHA256WITHRSAENCRYPTION"

    const-string v1, "SHA256WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    const-string v0, "Alg.Alias.Signature.SHA384WITHRSAENCRYPTION"

    const-string v1, "SHA384WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    const-string v0, "Alg.Alias.Signature.SHA512WITHRSAENCRYPTION"

    const-string v1, "SHA512WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    const-string v0, "Alg.Alias.Signature.RIPEMD160withRSAEncryption"

    const-string v1, "RIPEMD160WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MD2WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const-string v0, "Alg.Alias.Signature.MD2WithRSA"

    const-string v1, "MD2WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    const-string v0, "Alg.Alias.Signature.MD2withRSA"

    const-string v1, "MD2WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    const-string v0, "Alg.Alias.Signature.MD2/RSA"

    const-string v1, "MD2WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    const-string v0, "Alg.Alias.Signature.MD5WithRSA"

    const-string v1, "MD5WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    const-string v0, "Alg.Alias.Signature.MD5withRSA"

    const-string v1, "MD5WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    const-string v0, "Alg.Alias.Signature.MD5/RSA"

    const-string v1, "MD5WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MD5WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    const-string v0, "Alg.Alias.Signature.MD4WithRSA"

    const-string v1, "MD4WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    const-string v0, "Alg.Alias.Signature.MD4withRSA"

    const-string v1, "MD4WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    const-string v0, "Alg.Alias.Signature.MD4/RSA"

    const-string v1, "MD4WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md4WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MD4WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    const-string v0, "Alg.Alias.Signature.SHA1WithRSA"

    const-string v1, "SHA1WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    const-string v0, "Alg.Alias.Signature.SHA1withRSA"

    const-string v1, "SHA1WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    const-string v0, "Alg.Alias.Signature.SHA224WithRSA"

    const-string v1, "SHA224WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    const-string v0, "Alg.Alias.Signature.SHA224withRSA"

    const-string v1, "SHA224WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    const-string v0, "Alg.Alias.Signature.SHA256WithRSA"

    const-string v1, "SHA256WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    const-string v0, "Alg.Alias.Signature.SHA256withRSA"

    const-string v1, "SHA256WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    const-string v0, "Alg.Alias.Signature.SHA384WithRSA"

    const-string v1, "SHA384WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    const-string v0, "Alg.Alias.Signature.SHA384withRSA"

    const-string v1, "SHA384WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    const-string v0, "Alg.Alias.Signature.SHA512WithRSA"

    const-string v1, "SHA512WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    const-string v0, "Alg.Alias.Signature.SHA512withRSA"

    const-string v1, "SHA512WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    const-string v0, "Alg.Alias.Signature.SHA1/RSA"

    const-string v1, "SHA1WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    const-string v0, "Alg.Alias.Signature.SHA-1/RSA"

    const-string v1, "SHA1WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA1WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA224WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA256WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA384WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA512WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.1"

    const-string v1, "SHA1WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.5"

    const-string v1, "SHA1WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    const-string v0, "Alg.Alias.Signature.1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    const-string v1, "MD5WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    const-string v0, "Alg.Alias.Signature.RIPEMD160WithRSA"

    const-string v1, "RIPEMD160WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    const-string v0, "Alg.Alias.Signature.RIPEMD160withRSA"

    const-string v1, "RIPEMD160WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    const-string v0, "Alg.Alias.Signature.RIPEMD128WithRSA"

    const-string v1, "RIPEMD128WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const-string v0, "Alg.Alias.Signature.RIPEMD128withRSA"

    const-string v1, "RIPEMD128WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    const-string v0, "Alg.Alias.Signature.RIPEMD256WithRSA"

    const-string v1, "RIPEMD256WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    const-string v0, "Alg.Alias.Signature.RIPEMD256withRSA"

    const-string v1, "RIPEMD256WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    const-string v0, "Alg.Alias.Signature.RIPEMD-160/RSA"

    const-string v1, "RIPEMD160WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    const-string v0, "Alg.Alias.Signature.RMD160withRSA"

    const-string v1, "RIPEMD160WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    const-string v0, "Alg.Alias.Signature.RMD160/RSA"

    const-string v1, "RIPEMD160WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    const-string v0, "Alg.Alias.Signature.1.3.36.3.3.1.2"

    const-string v1, "RIPEMD160WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    const-string v0, "Alg.Alias.Signature.1.3.36.3.3.1.3"

    const-string v1, "RIPEMD128WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    const-string v0, "Alg.Alias.Signature.1.3.36.3.3.1.4"

    const-string v1, "RIPEMD256WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA1WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    const-string v0, "Alg.Alias.Signature.MD2WITHRSAENCRYPTION"

    const-string v1, "MD2WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    const-string v0, "Alg.Alias.Signature.MD5WITHRSAENCRYPTION"

    const-string v1, "MD5WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    const-string v0, "Alg.Alias.Signature.SHA1WITHRSAENCRYPTION"

    const-string v1, "SHA1WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    const-string v0, "Alg.Alias.Signature.RIPEMD160WITHRSAENCRYPTION"

    const-string v1, "RIPEMD160WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    const-string v0, "Alg.Alias.Signature.MD5WITHRSA"

    const-string v1, "MD5WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    const-string v0, "Alg.Alias.Signature.SHA1WITHRSA"

    const-string v1, "SHA1WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    const-string v0, "Alg.Alias.Signature.RIPEMD160WITHRSA"

    const-string v1, "RIPEMD160WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    const-string v0, "Alg.Alias.Signature.RMD160WITHRSA"

    const-string v1, "RIPEMD160WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    const-string v0, "Alg.Alias.Signature.RIPEMD160WITHRSA"

    const-string v1, "RIPEMD160WithRSAEncryption"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    const-string v0, "SHA224"

    const-string v1, "DSA"

    const-string v2, "myorg.bouncycastle.jce.provider.JDKDSASigner$dsa224"

    sget-object v3, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 1088
    const-string v0, "SHA256"

    const-string v1, "DSA"

    const-string v2, "myorg.bouncycastle.jce.provider.JDKDSASigner$dsa256"

    sget-object v3, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 1091
    const-string v0, "SHA384"

    const-string v1, "DSA"

    const-string v2, "myorg.bouncycastle.jce.provider.JDKDSASigner$dsa384"

    sget-object v3, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 1094
    const-string v0, "SHA512"

    const-string v1, "DSA"

    const-string v2, "myorg.bouncycastle.jce.provider.JDKDSASigner$dsa512"

    sget-object v3, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 1098
    const-string v0, "Alg.Alias.Signature.SHA/DSA"

    const-string v1, "DSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    const-string v0, "Alg.Alias.Signature.SHA1withDSA"

    const-string v1, "DSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    const-string v0, "Alg.Alias.Signature.SHA1WITHDSA"

    const-string v1, "DSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.1"

    const-string v1, "DSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.3"

    const-string v1, "DSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    const-string v0, "Alg.Alias.Signature.DSAwithSHA1"

    const-string v1, "DSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    const-string v0, "Alg.Alias.Signature.DSAWITHSHA1"

    const-string v1, "DSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    const-string v0, "Alg.Alias.Signature.SHA1WithDSA"

    const-string v1, "DSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    const-string v0, "Alg.Alias.Signature.DSAWithSHA1"

    const-string v1, "DSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    const-string v0, "Alg.Alias.Signature.1.2.840.10040.4.3"

    const-string v1, "DSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    const-string v0, "Alg.Alias.Signature.MD5WithRSA/ISO9796-2"

    const-string v1, "MD5withRSA/ISO9796-2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    const-string v0, "Alg.Alias.Signature.SHA1WithRSA/ISO9796-2"

    const-string v1, "SHA1withRSA/ISO9796-2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    const-string v0, "Alg.Alias.Signature.RIPEMD160WithRSA/ISO9796-2"

    const-string v1, "RIPEMD160withRSA/ISO9796-2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    const-string v0, "Signature.ECGOST3410"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKGOST3410Signer$ecgost3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    const-string v0, "Alg.Alias.Signature.ECGOST-3410"

    const-string v1, "ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    const-string v0, "Alg.Alias.Signature.GOST-3410-2001"

    const-string v1, "ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    const-string v0, "Alg.Alias.Signature.GOST3411withECGOST3410"

    const-string v1, "ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    const-string v0, "Alg.Alias.Signature.GOST3411WITHECGOST3410"

    const-string v1, "ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    const-string v0, "Alg.Alias.Signature.GOST3411WithECGOST3410"

    const-string v1, "ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    const-string v0, "Signature.GOST3410"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKGOST3410Signer$gost3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    const-string v0, "Alg.Alias.Signature.GOST-3410"

    const-string v1, "GOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    const-string v0, "Alg.Alias.Signature.GOST-3410-94"

    const-string v1, "GOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    const-string v0, "Alg.Alias.Signature.GOST3411withGOST3410"

    const-string v1, "GOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    const-string v0, "Alg.Alias.Signature.GOST3411WITHGOST3410"

    const-string v1, "GOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    const-string v0, "Alg.Alias.Signature.GOST3411WithGOST3410"

    const-string v1, "GOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    return-void
.end method

.method private loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "packageName"
    .parameter "names"

    .prologue
    .line 730
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p2

    if-eq v2, v4, :cond_2

    .line 731
    const/4 v0, 0x0

    .line 733
    .local v0, clazz:Ljava/lang/Class;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 735
    .local v3, loader:Ljava/lang/ClassLoader;
    if-eqz v3, :cond_1

    .line 736
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Mappings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 744
    .end local v3           #loader:Ljava/lang/ClassLoader;
    :goto_1
    if-eqz v0, :cond_0

    .line 746
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addMappings(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 730
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 738
    .restart local v3       #loader:Ljava/lang/ClassLoader;
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Mappings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_1

    .line 747
    .end local v3           #loader:Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    .line 748
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/InternalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot create instance of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Mappings : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 753
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    return-void

    .line 740
    .restart local v0       #clazz:Ljava/lang/Class;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private setup()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "myorg.bouncycastle.jce.provider.symmetric."

    sget-object v1, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 87
    const-string v0, "myorg.bouncycastle.jce.provider.asymmetric."

    sget-object v1, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 92
    const-string v0, "X509Store.CERTIFICATE/COLLECTION"

    const-string v1, "myorg.bouncycastle.jce.provider.X509StoreCertCollection"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/COLLECTION"

    const-string v1, "myorg.bouncycastle.jce.provider.X509StoreAttrCertCollection"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "X509Store.CRL/COLLECTION"

    const-string v1, "myorg.bouncycastle.jce.provider.X509StoreCRLCollection"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "X509Store.CERTIFICATEPAIR/COLLECTION"

    const-string v1, "myorg.bouncycastle.jce.provider.X509StoreCertPairCollection"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "X509Store.CERTIFICATE/LDAP"

    const-string v1, "myorg.bouncycastle.jce.provider.X509StoreLDAPCerts"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "X509Store.CRL/LDAP"

    const-string v1, "myorg.bouncycastle.jce.provider.X509StoreLDAPCRLs"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/LDAP"

    const-string v1, "myorg.bouncycastle.jce.provider.X509StoreLDAPAttrCerts"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "X509Store.CERTIFICATEPAIR/LDAP"

    const-string v1, "myorg.bouncycastle.jce.provider.X509StoreLDAPCertPairs"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "X509StreamParser.CERTIFICATE"

    const-string v1, "myorg.bouncycastle.jce.provider.X509CertParser"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "X509StreamParser.ATTRIBUTECERTIFICATE"

    const-string v1, "myorg.bouncycastle.jce.provider.X509AttrCertParser"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "X509StreamParser.CRL"

    const-string v1, "myorg.bouncycastle.jce.provider.X509CRLParser"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "X509StreamParser.CERTIFICATEPAIR"

    const-string v1, "myorg.bouncycastle.jce.provider.X509CertPairParser"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "KeyStore.BKS"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKKeyStore"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "KeyStore.BouncyCastle"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKKeyStore$BouncyCastleStore"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v0, "KeyStore.PKCS12"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKPKCS12KeyStore$BCPKCS12KeyStore"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "KeyStore.BCPKCS12"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKPKCS12KeyStore$BCPKCS12KeyStore"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "KeyStore.PKCS12-DEF"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKPKCS12KeyStore$DefPKCS12KeyStore"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "KeyStore.PKCS12-3DES-40RC2"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKPKCS12KeyStore$BCPKCS12KeyStore"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "KeyStore.PKCS12-3DES-3DES"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKPKCS12KeyStore$BCPKCS12KeyStore3DES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "KeyStore.PKCS12-DEF-3DES-40RC2"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKPKCS12KeyStore$DefPKCS12KeyStore"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v0, "KeyStore.PKCS12-DEF-3DES-3DES"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKPKCS12KeyStore$DefPKCS12KeyStore3DES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "Alg.Alias.KeyStore.UBER"

    const-string v1, "BouncyCastle"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "Alg.Alias.KeyStore.BOUNCYCASTLE"

    const-string v1, "BouncyCastle"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "Alg.Alias.KeyStore.bouncycastle"

    const-string v1, "BouncyCastle"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v0, "CertificateFactory.X.509"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKX509CertificateFactory"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "Alg.Alias.CertificateFactory.X509"

    const-string v1, "X.509"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "AlgorithmParameterGenerator.DH"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator$DH"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "AlgorithmParameterGenerator.DSA"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator$DSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "AlgorithmParameterGenerator.GOST3410"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator$GOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "AlgorithmParameterGenerator.ELGAMAL"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator$ElGamal"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, "AlgorithmParameterGenerator.DES"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator$DES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "AlgorithmParameterGenerator.DESEDE"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator$DES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlgorithmParameterGenerator."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator$DES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlgorithmParameterGenerator."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator$DES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v0, "AlgorithmParameterGenerator.RC2"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator$RC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v0, "AlgorithmParameterGenerator.1.2.840.113549.3.2"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator$RC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v0, "Alg.Alias.AlgorithmParameterGenerator.DIFFIEHELLMAN"

    const-string v1, "DH"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v0, "Alg.Alias.AlgorithmParameterGenerator.GOST-3410"

    const-string v1, "GOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "AlgorithmParameters.OAEP"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$OAEP"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "AlgorithmParameters.PSS"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "AlgorithmParameters.DH"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$DH"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "Alg.Alias.AlgorithmParameters.DIFFIEHELLMAN"

    const-string v1, "DH"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "AlgorithmParameters.DSA"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$DSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "AlgorithmParameters.ELGAMAL"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$ElGamal"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "AlgorithmParameters.IES"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$IES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "AlgorithmParameters.PKCS12PBE"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlgorithmParameters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$IVAlgorithmParameters"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlgorithmParameters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$PBKDF2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v0, "AlgorithmParameters.GOST3410"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$GOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v0, "Alg.Alias.AlgorithmParameters.GOST-3410"

    const-string v1, "GOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND3-KEYTRIPLEDES"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND2-KEYTRIPLEDES"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC2"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC4"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDTWOFISH"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2-CBC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDDES3KEY-CBC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDDES2KEY-CBC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC2-CBC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC4"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC2-CBC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC4"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDTWOFISH"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDTWOFISH-CBC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.1"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.2"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.3"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.4"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.5"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.6"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWithSHAAnd3KeyTripleDES"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.AlgorithmParameters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes128_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.AlgorithmParameters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes192_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.AlgorithmParameters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes256_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.AlgorithmParameters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes128_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.AlgorithmParameters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes192_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.AlgorithmParameters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes256_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.AlgorithmParameters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSAES_OAEP:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OAEP"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v0, "Alg.Alias.AlgorithmParameters.RSAPSS"

    const-string v1, "PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v0, "Alg.Alias.AlgorithmParameters.RSASSA-PSS"

    const-string v1, "PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.AlgorithmParameters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v0, "Alg.Alias.AlgorithmParameters.SHA1withRSA/PSS"

    const-string v1, "PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v0, "Alg.Alias.AlgorithmParameters.SHA224withRSA/PSS"

    const-string v1, "PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v0, "Alg.Alias.AlgorithmParameters.SHA256withRSA/PSS"

    const-string v1, "PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v0, "Alg.Alias.AlgorithmParameters.SHA384withRSA/PSS"

    const-string v1, "PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v0, "Alg.Alias.AlgorithmParameters.SHA512withRSA/PSS"

    const-string v1, "PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v0, "Alg.Alias.AlgorithmParameters.SHA1WITHRSAANDMGF1"

    const-string v1, "PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v0, "Alg.Alias.AlgorithmParameters.SHA224WITHRSAANDMGF1"

    const-string v1, "PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v0, "Alg.Alias.AlgorithmParameters.SHA256WITHRSAANDMGF1"

    const-string v1, "PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v0, "Alg.Alias.AlgorithmParameters.SHA384WITHRSAANDMGF1"

    const-string v1, "PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v0, "Alg.Alias.AlgorithmParameters.SHA512WITHRSAANDMGF1"

    const-string v1, "PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v0, "Alg.Alias.AlgorithmParameters.RAWRSAPSS"

    const-string v1, "PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v0, "Alg.Alias.AlgorithmParameters.NONEWITHRSAPSS"

    const-string v1, "PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v0, "Alg.Alias.AlgorithmParameters.NONEWITHRSASSA-PSS"

    const-string v1, "PSS"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITAES-CBC-BC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND192BITAES-CBC-BC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND256BITAES-CBC-BC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND128BITAES-CBC-BC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND192BITAES-CBC-BC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND256BITAES-CBC-BC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND128BITAES-CBC-BC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND192BITAES-CBC-BC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND256BITAES-CBC-BC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND128BITAES-CBC-BC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND192BITAES-CBC-BC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND256BITAES-CBC-BC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND128BITAES-CBC-BC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND192BITAES-CBC-BC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND256BITAES-CBC-BC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v0, "AlgorithmParameters.SHA1WITHECDSA"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKECDSAAlgParameters$SigAlgParameters"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v0, "AlgorithmParameters.SHA224WITHECDSA"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKECDSAAlgParameters$SigAlgParameters"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v0, "AlgorithmParameters.SHA256WITHECDSA"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKECDSAAlgParameters$SigAlgParameters"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v0, "AlgorithmParameters.SHA384WITHECDSA"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKECDSAAlgParameters$SigAlgParameters"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v0, "AlgorithmParameters.SHA512WITHECDSA"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKECDSAAlgParameters$SigAlgParameters"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v0, "KeyAgreement.DH"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEDHKeyAgreement"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v0, "Alg.Alias.KeyAgreement.DIFFIEHELLMAN"

    const-string v1, "DH"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v0, "Cipher.DES"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$DES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v0, "Cipher.DESEDE"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$DESede"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$DESedeCBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$DESCBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v0, "Cipher.DESEDEWRAP"

    const-string v1, "myorg.bouncycastle.jce.provider.WrapCipherSpi$DESEDEWrap"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myorg.bouncycastle.jce.provider.WrapCipherSpi$DESEDEWrap"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v0, "Cipher.SKIPJACK"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$Skipjack"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v0, "Cipher.BLOWFISH"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$Blowfish"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v0, "Cipher.1.3.6.1.4.1.3029.1.2"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$BlowfishCBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v0, "Cipher.TWOFISH"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$Twofish"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v0, "Cipher.RC2"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$RC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v0, "Cipher.RC2WRAP"

    const-string v1, "myorg.bouncycastle.jce.provider.WrapCipherSpi$RC2Wrap"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v0, "Cipher.1.2.840.113549.1.9.16.3.7"

    const-string v1, "myorg.bouncycastle.jce.provider.WrapCipherSpi$RC2Wrap"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v0, "Cipher.ARC4"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEStreamCipher$RC4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v0, "Alg.Alias.Cipher.1.2.840.113549.3.4"

    const-string v1, "ARC4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v0, "Alg.Alias.Cipher.ARCFOUR"

    const-string v1, "ARC4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v0, "Alg.Alias.Cipher.RC4"

    const-string v1, "ARC4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v0, "Cipher.SALSA20"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEStreamCipher$Salsa20"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v0, "Cipher.HC128"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEStreamCipher$HC128"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v0, "Cipher.HC256"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEStreamCipher$HC256"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v0, "Cipher.VMPC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEStreamCipher$VMPC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v0, "Cipher.VMPC-KSA3"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEStreamCipher$VMPCKSA3"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v0, "Cipher.RC5"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$RC5"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v0, "Cipher.1.2.840.113549.3.2"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$RC2CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v0, "Alg.Alias.Cipher.RC5-32"

    const-string v1, "RC5"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v0, "Cipher.RC5-64"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$RC564"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v0, "Cipher.RC6"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$RC6"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v0, "Cipher.RIJNDAEL"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$Rijndael"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v0, "Cipher.DESEDERFC3211WRAP"

    const-string v1, "myorg.bouncycastle.jce.provider.WrapCipherSpi$RFC3211DESedeWrap"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v0, "Cipher.SERPENT"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$Serpent"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v0, "Cipher.CAST6"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$CAST6"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v0, "Alg.Alias.Cipher.PBEWithSHAAnd3KeyTripleDES"

    const-string v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v0, "Cipher.GOST28147"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$GOST28147"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v0, "Alg.Alias.Cipher.GOST"

    const-string v1, "GOST28147"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v0, "Alg.Alias.Cipher.GOST-28147"

    const-string v1, "GOST28147"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR28147_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$GOST28147cbc"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v0, "Cipher.TEA"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$TEA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v0, "Cipher.XTEA"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$XTEA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v0, "Cipher.RSA"

    const-string v1, "myorg.bouncycastle.jce.provider.JCERSACipher$NoPadding"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v0, "Cipher.RSA/RAW"

    const-string v1, "myorg.bouncycastle.jce.provider.JCERSACipher$NoPadding"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v0, "Cipher.RSA/PKCS1"

    const-string v1, "myorg.bouncycastle.jce.provider.JCERSACipher$PKCS1v1_5Padding"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v0, "Cipher.1.2.840.113549.1.1.1"

    const-string v1, "myorg.bouncycastle.jce.provider.JCERSACipher$PKCS1v1_5Padding"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v0, "Cipher.2.5.8.1.1"

    const-string v1, "myorg.bouncycastle.jce.provider.JCERSACipher$PKCS1v1_5Padding"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v0, "Cipher.RSA/1"

    const-string v1, "myorg.bouncycastle.jce.provider.JCERSACipher$PKCS1v1_5Padding_PrivateOnly"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v0, "Cipher.RSA/2"

    const-string v1, "myorg.bouncycastle.jce.provider.JCERSACipher$PKCS1v1_5Padding_PublicOnly"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v0, "Cipher.RSA/OAEP"

    const-string v1, "myorg.bouncycastle.jce.provider.JCERSACipher$OAEPPadding"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSAES_OAEP:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myorg.bouncycastle.jce.provider.JCERSACipher$OAEPPadding"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v0, "Cipher.RSA/ISO9796-1"

    const-string v1, "myorg.bouncycastle.jce.provider.JCERSACipher$ISO9796d1Padding"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v0, "Cipher.ECIES"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEIESCipher$ECIES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v0, "Cipher.BrokenECIES"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEIESCipher$BrokenECIES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v0, "Cipher.IES"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEIESCipher$IES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v0, "Cipher.BrokenIES"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEIESCipher$BrokenIES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v0, "Cipher.ELGAMAL"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEElGamalCipher$NoPadding"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v0, "Cipher.ELGAMAL/PKCS1"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEElGamalCipher$PKCS1v1_5Padding"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v0, "Alg.Alias.Cipher.RSA//RAW"

    const-string v1, "RSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v0, "Alg.Alias.Cipher.RSA//NOPADDING"

    const-string v1, "RSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v0, "Alg.Alias.Cipher.RSA//PKCS1PADDING"

    const-string v1, "RSA/PKCS1"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v0, "Alg.Alias.Cipher.RSA//OAEPPADDING"

    const-string v1, "RSA/OAEP"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v0, "Alg.Alias.Cipher.RSA//ISO9796-1PADDING"

    const-string v1, "RSA/ISO9796-1"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v0, "Alg.Alias.Cipher.ELGAMAL/ECB/PKCS1PADDING"

    const-string v1, "ELGAMAL/PKCS1"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v0, "Alg.Alias.Cipher.ELGAMAL/NONE/PKCS1PADDING"

    const-string v1, "ELGAMAL/PKCS1"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v0, "Alg.Alias.Cipher.ELGAMAL/NONE/NOPADDING"

    const-string v1, "ELGAMAL"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v0, "Cipher.PBEWITHMD5ANDDES"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithMD5AndDES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v0, "Cipher.BROKENPBEWITHMD5ANDDES"

    const-string v1, "myorg.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v0, "Cipher.PBEWITHMD5ANDRC2"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithMD5AndRC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v0, "Cipher.PBEWITHSHA1ANDDES"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithSHA1AndDES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v0, "Cipher.BROKENPBEWITHSHA1ANDDES"

    const-string v1, "myorg.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v0, "Cipher.PBEWITHSHA1ANDRC2"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithSHA1AndRC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v0, "Cipher.PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithSHAAndDES3Key"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v0, "Cipher.BROKENPBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHAAndDES3Key"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v0, "Cipher.OLDPBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndDES3Key"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v0, "Cipher.PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithSHAAndDES2Key"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v0, "Cipher.BROKENPBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHAAndDES2Key"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string v0, "Cipher.PBEWITHSHAAND128BITRC2-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithSHAAnd128BitRC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v0, "Cipher.PBEWITHSHAAND40BITRC2-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithSHAAnd40BitRC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v0, "Cipher.PBEWITHSHAAND128BITRC4"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEStreamCipher$PBEWithSHAAnd128BitRC4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v0, "Cipher.PBEWITHSHAAND40BITRC4"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEStreamCipher$PBEWithSHAAnd40BitRC4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND3-KEYTRIPLEDES-CBC"

    const-string v1, "Cipher.PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND2-KEYTRIPLEDES-CBC"

    const-string v1, "Cipher.PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC2-CBC"

    const-string v1, "Cipher.PBEWITHSHAAND128BITRC2-CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC2-CBC"

    const-string v1, "Cipher.PBEWITHSHAAND40BITRC2-CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC4"

    const-string v1, "Cipher.PBEWITHSHAAND128BITRC4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC4"

    const-string v1, "Cipher.PBEWITHSHAAND40BITRC4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes128_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes192_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes256_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes128_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHSHA256AND128BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes192_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHSHA256AND192BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes256_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHSHA256AND256BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v0, "Cipher.PBEWITHSHAAND128BITAES-CBC-BC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithAESCBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string v0, "Cipher.PBEWITHSHAAND192BITAES-CBC-BC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithAESCBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v0, "Cipher.PBEWITHSHAAND256BITAES-CBC-BC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithAESCBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v0, "Cipher.PBEWITHSHA256AND128BITAES-CBC-BC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithAESCBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v0, "Cipher.PBEWITHSHA256AND192BITAES-CBC-BC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithAESCBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v0, "Cipher.PBEWITHSHA256AND256BITAES-CBC-BC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithAESCBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITAES-CBC-BC"

    const-string v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND192BITAES-CBC-BC"

    const-string v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND256BITAES-CBC-BC"

    const-string v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA-1AND128BITAES-CBC-BC"

    const-string v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA-1AND192BITAES-CBC-BC"

    const-string v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA-1AND256BITAES-CBC-BC"

    const-string v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA-256AND128BITAES-CBC-BC"

    const-string v1, "PBEWITHSHA256AND128BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA-256AND192BITAES-CBC-BC"

    const-string v1, "PBEWITHSHA256AND192BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA-256AND256BITAES-CBC-BC"

    const-string v1, "PBEWITHSHA256AND256BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string v0, "Cipher.PBEWITHMD5AND128BITAES-CBC-OPENSSL"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithAESCBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v0, "Cipher.PBEWITHMD5AND192BITAES-CBC-OPENSSL"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithAESCBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v0, "Cipher.PBEWITHMD5AND256BITAES-CBC-OPENSSL"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithAESCBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v0, "Cipher.PBEWITHSHAANDTWOFISH-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEBlockCipher$PBEWithSHAAndTwofish"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string v0, "Cipher.OLDPBEWITHSHAANDTWOFISH-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string v0, "Alg.Alias.Cipher.1.2.840.113549.1.12.1.1"

    const-string v1, "PBEWITHSHAAND128BITRC4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string v0, "Alg.Alias.Cipher.1.2.840.113549.1.12.1.2"

    const-string v1, "PBEWITHSHAAND40BITRC4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v0, "Alg.Alias.Cipher.1.2.840.113549.1.12.1.3"

    const-string v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string v0, "Alg.Alias.Cipher.1.2.840.113549.1.12.1.4"

    const-string v1, "PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string v0, "Alg.Alias.Cipher.1.2.840.113549.1.12.1.5"

    const-string v1, "PBEWITHSHAAND128BITRC2-CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string v0, "Alg.Alias.Cipher.1.2.840.113549.1.12.1.6"

    const-string v1, "PBEWITHSHAAND40BITRC2-CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1ANDDESEDE"

    const-string v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v0, "KeyGenerator.DES"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$DES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.KeyGenerator."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v0, "KeyGenerator.DESEDE"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$DESede"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyGenerator."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$DESede3"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v0, "KeyGenerator.DESEDEWRAP"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$DESede"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v0, "KeyGenerator.SKIPJACK"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$Skipjack"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v0, "KeyGenerator.BLOWFISH"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$Blowfish"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v0, "Alg.Alias.KeyGenerator.1.3.6.1.4.1.3029.1.2"

    const-string v1, "BLOWFISH"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string v0, "KeyGenerator.TWOFISH"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$Twofish"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string v0, "KeyGenerator.RC2"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$RC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const-string v0, "KeyGenerator.1.2.840.113549.3.2"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$RC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string v0, "KeyGenerator.RC4"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$RC4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string v0, "Alg.Alias.KeyGenerator.ARC4"

    const-string v1, "RC4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v0, "Alg.Alias.KeyGenerator.1.2.840.113549.3.4"

    const-string v1, "RC4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string v0, "KeyGenerator.RC5"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$RC5"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v0, "Alg.Alias.KeyGenerator.RC5-32"

    const-string v1, "RC5"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v0, "KeyGenerator.RC5-64"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$RC564"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string v0, "KeyGenerator.RC6"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$RC6"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string v0, "KeyGenerator.RIJNDAEL"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$Rijndael"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v0, "KeyGenerator.SERPENT"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$Serpent"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v0, "KeyGenerator.SALSA20"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$Salsa20"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v0, "KeyGenerator.HC128"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$HC128"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string v0, "KeyGenerator.HC256"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$HC256"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v0, "KeyGenerator.VMPC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$VMPC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v0, "KeyGenerator.VMPC-KSA3"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$VMPCKSA3"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v0, "KeyGenerator.CAST6"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$CAST6"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v0, "KeyGenerator.TEA"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$TEA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v0, "KeyGenerator.XTEA"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$XTEA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v0, "KeyGenerator.GOST28147"

    const-string v1, "myorg.bouncycastle.jce.provider.JCEKeyGenerator$GOST28147"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string v0, "Alg.Alias.KeyGenerator.GOST"

    const-string v1, "GOST28147"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v0, "Alg.Alias.KeyGenerator.GOST-28147"

    const-string v1, "GOST28147"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.KeyGenerator."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR28147_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GOST28147"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v0, "KeyPairGenerator.RSA"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKKeyPairGenerator$RSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v0, "KeyPairGenerator.DH"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKKeyPairGenerator$DH"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v0, "KeyPairGenerator.DSA"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKKeyPairGenerator$DSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v0, "KeyPairGenerator.ELGAMAL"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKKeyPairGenerator$ElGamal"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v0, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1.1"

    const-string v1, "RSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string v0, "Alg.Alias.KeyPairGenerator.DIFFIEHELLMAN"

    const-string v1, "DH"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v0, "KeyPairGenerator.GOST3410"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKKeyPairGenerator$GOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string v0, "Alg.Alias.KeyPairGenerator.GOST-3410"

    const-string v1, "GOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string v0, "Alg.Alias.KeyPairGenerator.GOST-3410-94"

    const-string v1, "GOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string v0, "KeyFactory.RSA"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKKeyFactory$RSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string v0, "KeyFactory.DH"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKKeyFactory$DH"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v0, "KeyFactory.DSA"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKKeyFactory$DSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v0, "KeyFactory.ELGAMAL"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKKeyFactory$ElGamal"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v0, "KeyFactory.ElGamal"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKKeyFactory$ElGamal"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v0, "KeyFactory.X.509"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKKeyFactory$X509"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v0, "Alg.Alias.KeyFactory.1.2.840.113549.1.1.1"

    const-string v1, "RSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v0, "Alg.Alias.KeyFactory.1.2.840.10040.4.1"

    const-string v1, "DSA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v0, "Alg.Alias.KeyFactory.DIFFIEHELLMAN"

    const-string v1, "DH"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v0, "KeyFactory.GOST3410"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKKeyFactory$GOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v0, "Alg.Alias.KeyFactory.GOST-3410"

    const-string v1, "GOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v0, "Alg.Alias.KeyFactory.GOST-3410-94"

    const-string v1, "GOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.KeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GOST3410"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-string v0, "AlgorithmParameters.DES"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$IVAlgorithmParameters"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.AlgorithmParameters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v0, "AlgorithmParameters.DESEDE"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$IVAlgorithmParameters"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlgorithmParameters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$IVAlgorithmParameters"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string v0, "AlgorithmParameters.RC2"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$RC2AlgorithmParameters"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v0, "AlgorithmParameters.1.2.840.113549.3.2"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$RC2AlgorithmParameters"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v0, "AlgorithmParameters.RC5"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$IVAlgorithmParameters"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string v0, "AlgorithmParameters.RC6"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$IVAlgorithmParameters"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v0, "AlgorithmParameters.BLOWFISH"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$IVAlgorithmParameters"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string v0, "Alg.Alias.AlgorithmParameters.1.3.6.1.4.1.3029.1.2"

    const-string v1, "BLOWFISH"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string v0, "AlgorithmParameters.TWOFISH"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$IVAlgorithmParameters"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v0, "AlgorithmParameters.SKIPJACK"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$IVAlgorithmParameters"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string v0, "AlgorithmParameters.RIJNDAEL"

    const-string v1, "myorg.bouncycastle.jce.provider.JDKAlgorithmParameters$IVAlgorithmParameters"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string v0, "SecretKeyFactory.DES"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$DES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v0, "SecretKeyFactory.DESEDE"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$DESede"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string v0, "SecretKeyFactory.PBEWITHMD2ANDDES"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithMD2AndDES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v0, "SecretKeyFactory.PBEWITHMD2ANDRC2"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithMD2AndRC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v0, "SecretKeyFactory.PBEWITHMD5ANDDES"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithMD5AndDES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string v0, "SecretKeyFactory.PBEWITHMD5ANDRC2"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithMD5AndRC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string v0, "SecretKeyFactory.PBEWITHSHA1ANDDES"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithSHA1AndDES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v0, "SecretKeyFactory.PBEWITHSHA1ANDRC2"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithSHA1AndRC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string v0, "SecretKeyFactory.PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAndDES3Key"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string v0, "SecretKeyFactory.PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAndDES2Key"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string v0, "SecretKeyFactory.PBEWITHSHAAND128BITRC4"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAnd128BitRC4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string v0, "SecretKeyFactory.PBEWITHSHAAND40BITRC4"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAnd40BitRC4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v0, "SecretKeyFactory.PBEWITHSHAAND128BITRC2-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAnd128BitRC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v0, "SecretKeyFactory.PBEWITHSHAAND40BITRC2-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAnd40BitRC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v0, "SecretKeyFactory.PBEWITHSHAANDTWOFISH-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAndTwofish"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v0, "SecretKeyFactory.PBEWITHHMACRIPEMD160"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithRIPEMD160"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v0, "SecretKeyFactory.PBEWITHHMACSHA1"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithSHA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v0, "SecretKeyFactory.PBEWITHHMACTIGER"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithTiger"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v0, "SecretKeyFactory.PBEWITHMD5AND128BITAES-CBC-OPENSSL"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithMD5And128BitAESCBCOpenSSL"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string v0, "SecretKeyFactory.PBEWITHMD5AND192BITAES-CBC-OPENSSL"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithMD5And192BitAESCBCOpenSSL"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string v0, "SecretKeyFactory.PBEWITHMD5AND256BITAES-CBC-OPENSSL"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithMD5And256BitAESCBCOpenSSL"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v0, "Alg.Alias.SecretKeyFactory.PBE"

    const-string v1, "PBE/PKCS5"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v0, "Alg.Alias.SecretKeyFactory.BROKENPBEWITHMD5ANDDES"

    const-string v1, "PBE/PKCS5"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v0, "Alg.Alias.SecretKeyFactory.BROKENPBEWITHSHA1ANDDES"

    const-string v1, "PBE/PKCS5"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string v0, "Alg.Alias.SecretKeyFactory.OLDPBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    const-string v1, "PBE/PKCS12"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string v0, "Alg.Alias.SecretKeyFactory.BROKENPBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    const-string v1, "PBE/PKCS12"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string v0, "Alg.Alias.SecretKeyFactory.BROKENPBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    const-string v1, "PBE/PKCS12"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v0, "Alg.Alias.SecretKeyFactory.OLDPBEWITHSHAANDTWOFISH-CBC"

    const-string v1, "PBE/PKCS12"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHMD2ANDDES-CBC"

    const-string v1, "PBEWITHMD2ANDDES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHMD2ANDRC2-CBC"

    const-string v1, "PBEWITHMD2ANDRC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDDES-CBC"

    const-string v1, "PBEWITHMD5ANDDES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDRC2-CBC"

    const-string v1, "PBEWITHMD5ANDRC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDDES-CBC"

    const-string v1, "PBEWITHSHA1ANDDES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDRC2-CBC"

    const-string v1, "PBEWITHSHA1ANDRC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD2AndDES_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHMD2ANDDES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD2AndRC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHMD2ANDRC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndDES_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHMD5ANDDES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndRC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHMD5ANDRC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndDES_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHSHA1ANDDES"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndRC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHSHA1ANDRC2"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.1"

    const-string v1, "PBEWITHSHAAND128BITRC4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.2"

    const-string v1, "PBEWITHSHAAND40BITRC4"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.3"

    const-string v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.4"

    const-string v1, "PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.5"

    const-string v1, "PBEWITHSHAAND128BITRC2-CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.6"

    const-string v1, "PBEWITHSHAAND40BITRC2-CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHHMACSHA"

    const-string v1, "PBEWITHHMACSHA1"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string v0, "Alg.Alias.SecretKeyFactory.1.3.14.3.2.26"

    const-string v1, "PBEWITHHMACSHA1"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWithSHAAnd3KeyTripleDES"

    const-string v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string v0, "SecretKeyFactory.PBEWITHSHAAND128BITAES-CBC-BC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAnd128BitAESBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v0, "SecretKeyFactory.PBEWITHSHAAND192BITAES-CBC-BC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAnd192BitAESBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string v0, "SecretKeyFactory.PBEWITHSHAAND256BITAES-CBC-BC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithSHAAnd256BitAESBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    const-string v0, "SecretKeyFactory.PBEWITHSHA256AND128BITAES-CBC-BC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithSHA256And128BitAESBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    const-string v0, "SecretKeyFactory.PBEWITHSHA256AND192BITAES-CBC-BC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithSHA256And192BitAESBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    const-string v0, "SecretKeyFactory.PBEWITHSHA256AND256BITAES-CBC-BC"

    const-string v1, "myorg.bouncycastle.jce.provider.JCESecretKeyFactory$PBEWithSHA256And256BitAESBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND128BITAES-CBC-BC"

    const-string v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND192BITAES-CBC-BC"

    const-string v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND256BITAES-CBC-BC"

    const-string v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND128BITAES-CBC-BC"

    const-string v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND192BITAES-CBC-BC"

    const-string v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND256BITAES-CBC-BC"

    const-string v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND128BITAES-CBC-BC"

    const-string v1, "PBEWITHSHA256AND128BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND192BITAES-CBC-BC"

    const-string v1, "PBEWITHSHA256AND192BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND256BITAES-CBC-BC"

    const-string v1, "PBEWITHSHA256AND256BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes128_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes192_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes256_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes128_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHSHA256AND128BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes192_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHSHA256AND192BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes256_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PBEWITHSHA256AND256BITAES-CBC-BC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addMacAlgorithms()V

    .line 711
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addMessageDigestAlgorithms()V

    .line 713
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->addSignatureAlgorithms()V

    .line 716
    const-string v0, "CertPathValidator.RFC3281"

    const-string v1, "myorg.bouncycastle.jce.provider.PKIXAttrCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string v0, "CertPathBuilder.RFC3281"

    const-string v1, "myorg.bouncycastle.jce.provider.PKIXAttrCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string v0, "CertPathValidator.RFC3280"

    const-string v1, "myorg.bouncycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const-string v0, "CertPathBuilder.RFC3280"

    const-string v1, "myorg.bouncycastle.jce.provider.PKIXCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const-string v0, "CertPathValidator.PKIX"

    const-string v1, "myorg.bouncycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    const-string v0, "CertPathBuilder.PKIX"

    const-string v1, "myorg.bouncycastle.jce.provider.PKIXCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    const-string v0, "CertStore.Collection"

    const-string v1, "myorg.bouncycastle.jce.provider.CertStoreCollectionSpi"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    const-string v0, "CertStore.LDAP"

    const-string v1, "myorg.bouncycastle.jce.provider.X509LDAPCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    const-string v0, "CertStore.Multi"

    const-string v1, "myorg.bouncycastle.jce.provider.MultiCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string v0, "Alg.Alias.CertStore.X509LDAP"

    const-string v1, "LDAP"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    return-void
.end method
