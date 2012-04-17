.class Lgnu/mail/providers/mbox/MboxFolder$MboxFilenameFilter;
.super Ljava/lang/Object;
.source "MboxFolder.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/mail/providers/mbox/MboxFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MboxFilenameFilter"
.end annotation


# instance fields
.field asteriskIndex:I

.field pattern:Ljava/lang/String;

.field percentIndex:I

.field final synthetic this$0:Lgnu/mail/providers/mbox/MboxFolder;


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 1031
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1032
    iget v3, p0, Lgnu/mail/providers/mbox/MboxFolder$MboxFilenameFilter;->asteriskIndex:I

    if-le v3, v4, :cond_2

    .line 1034
    iget-object v3, p0, Lgnu/mail/providers/mbox/MboxFolder$MboxFilenameFilter;->pattern:Ljava/lang/String;

    iget v4, p0, Lgnu/mail/providers/mbox/MboxFolder$MboxFilenameFilter;->asteriskIndex:I

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1035
    iget-object v4, p0, Lgnu/mail/providers/mbox/MboxFolder$MboxFilenameFilter;->pattern:Ljava/lang/String;

    iget v5, p0, Lgnu/mail/providers/mbox/MboxFolder$MboxFilenameFilter;->asteriskIndex:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lgnu/mail/providers/mbox/MboxFolder$MboxFilenameFilter;->pattern:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1036
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1036
    goto :goto_0

    .line 1039
    :cond_2
    iget v3, p0, Lgnu/mail/providers/mbox/MboxFolder$MboxFilenameFilter;->percentIndex:I

    if-le v3, v4, :cond_4

    .line 1041
    iget-object v3, p0, Lgnu/mail/providers/mbox/MboxFolder$MboxFilenameFilter;->pattern:Ljava/lang/String;

    iget v4, p0, Lgnu/mail/providers/mbox/MboxFolder$MboxFilenameFilter;->percentIndex:I

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1042
    iget-object v4, p0, Lgnu/mail/providers/mbox/MboxFolder$MboxFilenameFilter;->pattern:Ljava/lang/String;

    iget v5, p0, Lgnu/mail/providers/mbox/MboxFolder$MboxFilenameFilter;->percentIndex:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lgnu/mail/providers/mbox/MboxFolder$MboxFilenameFilter;->pattern:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1043
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 1044
    if-eqz v5, :cond_3

    iget-object v6, p0, Lgnu/mail/providers/mbox/MboxFolder$MboxFilenameFilter;->this$0:Lgnu/mail/providers/mbox/MboxFolder;

    iget-object v6, v6, Lgnu/mail/providers/mbox/MboxFolder;->file:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 1048
    :cond_4
    iget-object v0, p0, Lgnu/mail/providers/mbox/MboxFolder$MboxFilenameFilter;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
