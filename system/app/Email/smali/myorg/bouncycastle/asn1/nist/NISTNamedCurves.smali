.class public Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;
.super Ljava/lang/Object;
.source "NISTNamedCurves.java"


# static fields
.field static final names:Ljava/util/Hashtable;

.field static final objIds:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    .line 29
    const-string v0, "B-571"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 30
    const-string v0, "B-409"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 31
    const-string v0, "B-283"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 32
    const-string v0, "B-233"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 33
    const-string v0, "B-163"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 34
    const-string v0, "P-521"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 35
    const-string v0, "P-384"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 36
    const-string v0, "P-256"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 37
    const-string v0, "P-224"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 38
    const-string v0, "P-192"

    sget-object v1, Lmyorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static defineCurve(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 1
    .parameter "name"
    .parameter "oid"

    .prologue
    .line 22
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 3
    .parameter "name"

    .prologue
    .line 42
    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lmyorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 44
    .local v0, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    if-eqz v0, :cond_0

    .line 45
    invoke-static {v0}, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1
    .parameter "oid"

    .prologue
    .line 58
    invoke-static {p0}, Lmyorg/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .parameter "oid"

    .prologue
    .line 75
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 2
    .parameter "name"

    .prologue
    .line 68
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lmyorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method
