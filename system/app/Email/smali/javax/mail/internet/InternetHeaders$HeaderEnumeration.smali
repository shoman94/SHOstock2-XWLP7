.class Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;
.super Ljava/lang/Object;
.source "InternetHeaders.java"

# interfaces
.implements Ljava/util/Enumeration;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/InternetHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HeaderEnumeration"
.end annotation


# instance fields
.field private matching:Z

.field private names:[Ljava/lang/String;

.field private nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

.field private source:Ljava/util/Iterator;

.field private stringForm:Z


# direct methods
.method constructor <init>(Ljava/util/Iterator;[Ljava/lang/String;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->source:Ljava/util/Iterator;

    .line 160
    iput-object p2, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->names:[Ljava/lang/String;

    .line 161
    iput-boolean p3, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->stringForm:Z

    .line 162
    iput-boolean p4, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->matching:Z

    .line 163
    return-void
.end method

.method private getNext()Ljavax/mail/internet/InternetHeaders$InternetHeader;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 224
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->source:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 226
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->source:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 227
    iget-object v2, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->names:[Ljava/lang/String;

    if-nez v2, :cond_2

    .line 234
    iget-boolean v2, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->matching:Z

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 257
    :cond_1
    :goto_0
    return-object v0

    .line 237
    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->names:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 239
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->names:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->nameEquals(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 244
    :cond_3
    iget-boolean v1, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->matching:Z

    if-nez v1, :cond_1

    .line 249
    invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->getNext()Ljavax/mail/internet/InternetHeaders$InternetHeader;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_4
    iget-boolean v2, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->matching:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 257
    goto :goto_0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v0, :cond_0

    .line 180
    invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->getNext()Ljavax/mail/internet/InternetHeaders$InternetHeader;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 182
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->getNext()Ljavax/mail/internet/InternetHeaders$InternetHeader;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 202
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v0, :cond_1

    .line 204
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 207
    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->nextHeader:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 210
    iget-boolean v1, p0, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->stringForm:Z

    if-eqz v1, :cond_2

    .line 212
    iget-object v0, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    .line 214
    :cond_2
    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Ljavax/mail/internet/InternetHeaders$HeaderEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
