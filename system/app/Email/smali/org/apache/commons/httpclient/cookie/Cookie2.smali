.class public Lorg/apache/commons/httpclient/cookie/Cookie2;
.super Lorg/apache/commons/httpclient/Cookie;
.source "Cookie2.java"


# instance fields
.field private cookieCommentURL:Ljava/lang/String;

.field private cookiePorts:[I

.field private discard:Z

.field private hasPortAttribute:Z

.field private hasVersionAttribute:Z

.field private isPortAttributeBlank:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 104
    const-string v2, "noname"

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 372
    iput-boolean v6, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->discard:Z

    .line 379
    iput-boolean v6, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    .line 386
    iput-boolean v6, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    .line 392
    iput-boolean v6, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasVersionAttribute:Z

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V
    .locals 1
    .parameter "domain"
    .parameter "name"
    .parameter "value"
    .parameter "path"
    .parameter "expires"
    .parameter "secure"

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 372
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->discard:Z

    .line 379
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    .line 386
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    .line 392
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasVersionAttribute:Z

    .line 144
    return-void
.end method


# virtual methods
.method public getPorts()[I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->cookiePorts:[I

    return-object v0
.end method

.method public isPortAttributeBlank()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    return v0
.end method

.method public isPortAttributeSpecified()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    return v0
.end method

.method public toExternalForm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    const-string v1, "rfc2965"

    invoke-static {v1}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getCookieSpec(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v0

    .line 352
    .local v0, spec:Lorg/apache/commons/httpclient/cookie/CookieSpec;
    invoke-interface {v0, p0}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
