.class Lgnu/mail/providers/maildir/MaildirFolder$MaildirListFilter;
.super Ljava/lang/Object;
.source "MaildirFolder.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/mail/providers/maildir/MaildirFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MaildirListFilter"
.end annotation


# instance fields
.field asteriskIndex:I

.field pattern:Ljava/lang/String;

.field percentIndex:I

.field final synthetic this$0:Lgnu/mail/providers/maildir/MaildirFolder;


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 824
    iget v2, p0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirListFilter;->asteriskIndex:I

    if-le v2, v3, :cond_2

    .line 826
    iget-object v2, p0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirListFilter;->pattern:Ljava/lang/String;

    iget v3, p0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirListFilter;->asteriskIndex:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 827
    iget-object v3, p0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirListFilter;->pattern:Ljava/lang/String;

    iget v4, p0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirListFilter;->asteriskIndex:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirListFilter;->pattern:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 828
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 839
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 828
    goto :goto_0

    .line 831
    :cond_2
    iget v2, p0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirListFilter;->percentIndex:I

    if-le v2, v3, :cond_4

    .line 833
    iget-object v2, p0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirListFilter;->pattern:Ljava/lang/String;

    iget v3, p0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirListFilter;->percentIndex:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 834
    iget-object v3, p0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirListFilter;->pattern:Ljava/lang/String;

    iget v4, p0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirListFilter;->percentIndex:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirListFilter;->pattern:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 835
    iget-object v4, p0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirListFilter;->this$0:Lgnu/mail/providers/maildir/MaildirFolder;

    iget-object v4, v4, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    invoke-virtual {p1, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 839
    :cond_4
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirListFilter;->pattern:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
