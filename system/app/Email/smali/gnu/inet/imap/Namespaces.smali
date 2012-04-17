.class public Lgnu/inet/imap/Namespaces;
.super Ljava/lang/Object;
.source "Namespaces.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/inet/imap/Namespaces$Namespace;
    }
.end annotation


# instance fields
.field other:Ljava/util/List;

.field personal:Ljava/util/List;

.field shared:Ljava/util/List;


# direct methods
.method private appendNamespaceList(Ljava/lang/StringBuffer;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 322
    if-nez p2, :cond_0

    .line 324
    const-string v0, "NIL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 329
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 330
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 332
    if-lez v0, :cond_1

    .line 334
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 336
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 338
    :cond_2
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 311
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 312
    iget-object v1, p0, Lgnu/inet/imap/Namespaces;->personal:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lgnu/inet/imap/Namespaces;->appendNamespaceList(Ljava/lang/StringBuffer;Ljava/util/List;)V

    .line 313
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 314
    iget-object v1, p0, Lgnu/inet/imap/Namespaces;->other:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lgnu/inet/imap/Namespaces;->appendNamespaceList(Ljava/lang/StringBuffer;Ljava/util/List;)V

    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 316
    iget-object v1, p0, Lgnu/inet/imap/Namespaces;->shared:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lgnu/inet/imap/Namespaces;->appendNamespaceList(Ljava/lang/StringBuffer;Ljava/util/List;)V

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
