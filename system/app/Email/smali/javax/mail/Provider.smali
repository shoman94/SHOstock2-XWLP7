.class public Ljavax/mail/Provider;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Provider$Type;
    }
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private type:Ljavax/mail/Provider$Type;

.field private vendor:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Ljavax/mail/Provider;->type:Ljavax/mail/Provider$Type;

    .line 77
    iput-object p2, p0, Ljavax/mail/Provider;->protocol:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Ljavax/mail/Provider;->className:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Ljavax/mail/Provider;->vendor:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Ljavax/mail/Provider;->version:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ljavax/mail/Provider;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ljavax/mail/Provider;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljavax/mail/Provider$Type;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ljavax/mail/Provider;->type:Ljavax/mail/Provider$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2c

    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    const-string v1, "javax.mail.Provider["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    iget-object v1, p0, Ljavax/mail/Provider;->type:Ljavax/mail/Provider$Type;

    sget-object v2, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    if-ne v1, v2, :cond_3

    .line 129
    const-string v1, "STORE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    :cond_0
    :goto_0
    iget-object v1, p0, Ljavax/mail/Provider;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 137
    iget-object v1, p0, Ljavax/mail/Provider;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    iget-object v1, p0, Ljavax/mail/Provider;->vendor:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    iget-object v1, p0, Ljavax/mail/Provider;->vendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    :cond_1
    iget-object v1, p0, Ljavax/mail/Provider;->version:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    iget-object v1, p0, Ljavax/mail/Provider;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_3
    iget-object v1, p0, Ljavax/mail/Provider;->type:Ljavax/mail/Provider$Type;

    sget-object v2, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    if-ne v1, v2, :cond_0

    .line 133
    const-string v1, "TRANSPORT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
