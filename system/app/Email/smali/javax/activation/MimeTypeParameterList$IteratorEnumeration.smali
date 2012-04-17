.class Ljavax/activation/MimeTypeParameterList$IteratorEnumeration;
.super Ljava/lang/Object;
.source "MimeTypeParameterList.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/activation/MimeTypeParameterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IteratorEnumeration"
.end annotation


# instance fields
.field final iterator:Ljava/util/Iterator;


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList$IteratorEnumeration;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList$IteratorEnumeration;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
