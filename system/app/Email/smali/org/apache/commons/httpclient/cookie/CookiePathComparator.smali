.class public Lorg/apache/commons/httpclient/cookie/CookiePathComparator;
.super Ljava/lang/Object;
.source "CookiePathComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private normalizePath(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .locals 3
    .parameter "cookie"

    .prologue
    .line 82
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 86
    const-string v0, "/"

    .line 90
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_1
    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v4, 0x0

    .line 102
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/Cookie;

    .local v0, c1:Lorg/apache/commons/httpclient/Cookie;
    move-object v1, p2

    .line 104
    check-cast v1, Lorg/apache/commons/httpclient/Cookie;

    .line 106
    .local v1, c2:Lorg/apache/commons/httpclient/Cookie;
    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/cookie/CookiePathComparator;->normalizePath(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, path1:Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/apache/commons/httpclient/cookie/CookiePathComparator;->normalizePath(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, path2:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v4

    .line 114
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    const/4 v4, -0x1

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    const/4 v4, 0x1

    goto :goto_0
.end method
