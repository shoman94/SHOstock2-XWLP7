.class public Lgnu/inet/http/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# instance fields
.field protected final comment:Ljava/lang/String;

.field protected final domain:Ljava/lang/String;

.field protected final expires:Ljava/util/Date;

.field protected final name:Ljava/lang/String;

.field protected final path:Ljava/lang/String;

.field protected final secure:Z

.field protected final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lgnu/inet/http/Cookie;->name:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lgnu/inet/http/Cookie;->value:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lgnu/inet/http/Cookie;->comment:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lgnu/inet/http/Cookie;->domain:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lgnu/inet/http/Cookie;->path:Ljava/lang/String;

    .line 97
    iput-boolean p6, p0, Lgnu/inet/http/Cookie;->secure:Z

    .line 98
    iput-object p7, p0, Lgnu/inet/http/Cookie;->expires:Ljava/util/Date;

    .line 99
    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lgnu/inet/http/Cookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lgnu/inet/http/Cookie;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lgnu/inet/http/Cookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lgnu/inet/http/Cookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lgnu/inet/http/Cookie;->secure:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, v0, v0}, Lgnu/inet/http/Cookie;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(ZZ)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    iget-object v1, p0, Lgnu/inet/http/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    iget-object v1, p0, Lgnu/inet/http/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    if-eqz p1, :cond_0

    .line 149
    const-string v1, "; $Path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    iget-object v1, p0, Lgnu/inet/http/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    :cond_0
    if-eqz p2, :cond_1

    .line 154
    const-string v1, "; $Domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    iget-object v1, p0, Lgnu/inet/http/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
