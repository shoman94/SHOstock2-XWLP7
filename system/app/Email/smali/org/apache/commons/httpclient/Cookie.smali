.class public Lorg/apache/commons/httpclient/Cookie;
.super Lorg/apache/commons/httpclient/NameValuePair;
.source "Cookie.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private cookieComment:Ljava/lang/String;

.field private cookieDomain:Ljava/lang/String;

.field private cookieExpiryDate:Ljava/util/Date;

.field private cookiePath:Ljava/lang/String;

.field private cookieVersion:I

.field private hasDomainAttribute:Z

.field private hasPathAttribute:Z

.field private isSecure:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 717
    const-class v0, Lorg/apache/commons/httpclient/Cookie;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/Cookie;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 107
    const-string v2, "noname"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V
    .locals 2
    .parameter "domain"
    .parameter "name"
    .parameter "value"
    .parameter "path"
    .parameter "expires"
    .parameter "secure"

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/Cookie;->hasPathAttribute:Z

    .line 707
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/Cookie;->hasDomainAttribute:Z

    .line 711
    iput v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieVersion:I

    .line 147
    sget-object v0, Lorg/apache/commons/httpclient/Cookie;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter Cookie(String, String, String, String, Date, boolean)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 149
    if-nez p2, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie name may not be blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    invoke-virtual {p0, p4}, Lorg/apache/commons/httpclient/Cookie;->setPath(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/Cookie;->setDomain(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0, p5}, Lorg/apache/commons/httpclient/Cookie;->setExpiryDate(Ljava/util/Date;)V

    .line 169
    invoke-virtual {p0, p6}, Lorg/apache/commons/httpclient/Cookie;->setSecure(Z)V

    .line 171
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v2, 0x0

    .line 602
    sget-object v3, Lorg/apache/commons/httpclient/Cookie;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "enter Cookie.compare(Object, Object)"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 604
    instance-of v3, p1, Lorg/apache/commons/httpclient/Cookie;

    if-nez v3, :cond_0

    .line 606
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 610
    :cond_0
    instance-of v3, p2, Lorg/apache/commons/httpclient/Cookie;

    if-nez v3, :cond_1

    .line 612
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v0, p1

    .line 616
    check-cast v0, Lorg/apache/commons/httpclient/Cookie;

    .local v0, c1:Lorg/apache/commons/httpclient/Cookie;
    move-object v1, p2

    .line 618
    check-cast v1, Lorg/apache/commons/httpclient/Cookie;

    .line 620
    .local v1, c2:Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 654
    :cond_2
    :goto_0
    return v2

    .line 624
    :cond_3
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 628
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 634
    const/4 v2, -0x1

    goto :goto_0

    .line 638
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 642
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 648
    const/4 v2, 0x1

    goto :goto_0

    .line 654
    :cond_5
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 534
    if-nez p1, :cond_1

    .line 552
    :cond_0
    :goto_0
    return v2

    .line 537
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 538
    goto :goto_0

    .line 540
    :cond_2
    instance-of v3, p1, Lorg/apache/commons/httpclient/Cookie;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 542
    check-cast v0, Lorg/apache/commons/httpclient/Cookie;

    .line 544
    .local v0, that:Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/httpclient/Cookie;->cookieDomain:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/Cookie;->cookieDomain:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/httpclient/Cookie;->cookiePath:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/Cookie;->cookiePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookiePath:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lorg/apache/commons/httpclient/Cookie;->cookieVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 513
    const/16 v0, 0x11

    .line 515
    .local v0, hash:I
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 517
    iget-object v1, p0, Lorg/apache/commons/httpclient/Cookie;->cookieDomain:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 519
    iget-object v1, p0, Lorg/apache/commons/httpclient/Cookie;->cookiePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 521
    return v0
.end method

.method public isDomainAttributeSpecified()Z
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/Cookie;->hasDomainAttribute:Z

    return v0
.end method

.method public isPathAttributeSpecified()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/Cookie;->hasPathAttribute:Z

    return v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 2
    .parameter "domain"

    .prologue
    .line 310
    if-eqz p1, :cond_1

    .line 312
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 314
    .local v0, ndx:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 316
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 320
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/Cookie;->cookieDomain:Ljava/lang/String;

    .line 324
    .end local v0           #ndx:I
    :cond_1
    return-void
.end method

.method public setExpiryDate(Ljava/util/Date;)V
    .locals 0
    .parameter "expiryDate"

    .prologue
    .line 270
    iput-object p1, p0, Lorg/apache/commons/httpclient/Cookie;->cookieExpiryDate:Ljava/util/Date;

    .line 272
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 348
    iput-object p1, p0, Lorg/apache/commons/httpclient/Cookie;->cookiePath:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .parameter "secure"

    .prologue
    .line 377
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/Cookie;->isSecure:Z

    .line 379
    return-void
.end method

.method public toExternalForm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 568
    .local v0, spec:Lorg/apache/commons/httpclient/cookie/CookieSpec;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v1

    if-lez v1, :cond_0

    .line 570
    invoke-static {}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getDefaultSpec()Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v0

    .line 578
    :goto_0
    invoke-interface {v0, p0}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 574
    :cond_0
    const-string v1, "netscape"

    invoke-static {v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getCookieSpec(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/Cookie;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
