.class public Lgnu/inet/imap/Quota;
.super Ljava/lang/Object;
.source "Quota.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/inet/imap/Quota$Resource;
    }
.end annotation


# instance fields
.field quotaRoot:Ljava/lang/String;

.field resources:Ljava/util/List;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 179
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 180
    iget-object v0, p0, Lgnu/inet/imap/Quota;->quotaRoot:Ljava/lang/String;

    invoke-static {v0}, Lgnu/inet/imap/UTF7imap;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/inet/imap/IMAPConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    iget-object v0, p0, Lgnu/inet/imap/Quota;->resources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 182
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 184
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 185
    iget-object v3, p0, Lgnu/inet/imap/Quota;->resources:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
