.class public Lorg/apache/commons/httpclient/auth/AuthScope;
.super Ljava/lang/Object;
.source "AuthScope.java"


# static fields
.field public static final ANY:Lorg/apache/commons/httpclient/auth/AuthScope;

.field public static final ANY_HOST:Ljava/lang/String;

.field public static final ANY_REALM:Ljava/lang/String;

.field public static final ANY_SCHEME:Ljava/lang/String;


# instance fields
.field private host:Ljava/lang/String;

.field private port:I

.field private realm:Ljava/lang/String;

.field private scheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 80
    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    .line 92
    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    .line 98
    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    .line 106
    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthScope;

    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    const/4 v2, -0x1

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v4, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY:Lorg/apache/commons/httpclient/auth/AuthScope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "host"
    .parameter "port"
    .parameter "realm"
    .parameter "scheme"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    .line 122
    iput v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    .line 146
    if-nez p1, :cond_2

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    .line 148
    if-gez p2, :cond_0

    move p2, v1

    .end local p2
    :cond_0
    iput p2, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    .line 150
    if-nez p3, :cond_1

    sget-object p3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    .end local p3
    :cond_1
    iput-object p3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    .line 152
    if-nez p4, :cond_3

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    .line 155
    return-void

    .line 146
    .restart local p2
    .restart local p3
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 152
    .end local p2
    .end local p3
    :cond_3
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static paramsEqual(II)Z
    .locals 1
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 295
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 273
    if-nez p0, :cond_1

    .line 275
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 279
    :goto_0
    return v0

    .line 275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 378
    if-nez p1, :cond_1

    move v1, v2

    .line 398
    :cond_0
    :goto_0
    return v1

    .line 384
    :cond_1
    if-eq p1, p0, :cond_0

    .line 390
    instance-of v3, p1, Lorg/apache/commons/httpclient/auth/AuthScope;

    if-nez v3, :cond_2

    .line 392
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 396
    check-cast v0, Lorg/apache/commons/httpclient/auth/AuthScope;

    .line 398
    .local v0, that:Lorg/apache/commons/httpclient/auth/AuthScope;
    iget-object v3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    iget v4, v0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;->paramsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 466
    const/16 v0, 0x11

    .line 468
    .local v0, hash:I
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 470
    iget v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 472
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 474
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 476
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 416
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 418
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 426
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 428
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 430
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 440
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 442
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 444
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    iget v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    if-ltz v1, :cond_1

    .line 448
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 450
    iget v1, p0, Lorg/apache/commons/httpclient/auth/AuthScope;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 456
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 436
    :cond_2
    const-string v1, "<any realm>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
