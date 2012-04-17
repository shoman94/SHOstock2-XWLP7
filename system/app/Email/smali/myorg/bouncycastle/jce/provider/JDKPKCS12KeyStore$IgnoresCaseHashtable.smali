.class Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;
.super Ljava/lang/Object;
.source "JDKPKCS12KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IgnoresCaseHashtable"
.end annotation


# instance fields
.field private keys:Ljava/util/Hashtable;

.field private orig:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1244
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1245
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    .line 1246
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    return-void
.end method

.method synthetic constructor <init>(Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1244
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>()V

    return-void
.end method


# virtual methods
.method public elements()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "alias"

    .prologue
    .line 1273
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    invoke-static {p1}, Lmyorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1274
    .local v0, k:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1275
    const/4 v1, 0x0

    .line 1278
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1249
    invoke-static {p1}, Lmyorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1250
    .local v1, lower:Ljava/lang/String;
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1251
    .local v0, k:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1252
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "alias"

    .prologue
    .line 1264
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    invoke-static {p1}, Lmyorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1265
    .local v0, k:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1266
    const/4 v1, 0x0

    .line 1269
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
