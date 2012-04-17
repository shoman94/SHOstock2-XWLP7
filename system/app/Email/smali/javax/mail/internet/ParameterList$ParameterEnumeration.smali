.class Ljavax/mail/internet/ParameterList$ParameterEnumeration;
.super Ljava/lang/Object;
.source "ParameterList.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/ParameterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParameterEnumeration"
.end annotation


# instance fields
.field source:Ljava/util/Iterator;


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Ljavax/mail/internet/ParameterList$ParameterEnumeration;->source:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Ljavax/mail/internet/ParameterList$ParameterEnumeration;->source:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
