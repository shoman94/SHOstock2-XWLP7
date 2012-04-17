.class public final Lgnu/mail/providers/maildir/MaildirStore;
.super Ljavax/mail/Store;
.source "MaildirStore.java"

# interfaces
.implements Lgnu/mail/treeutil/StatusSource;


# static fields
.field static final MAILDIR_TRACE:Ljava/util/logging/Level;

.field static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "gnu.mail.util.providers.maildir"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lgnu/mail/providers/maildir/MaildirStore;->logger:Ljava/util/logging/Logger;

    .line 62
    new-instance v0, Lgnu/inet/util/TraceLevel;

    const-string v1, "maildir"

    invoke-direct {v0, v1}, Lgnu/inet/util/TraceLevel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mail/providers/maildir/MaildirStore;->MAILDIR_TRACE:Ljava/util/logging/Level;

    return-void
.end method

.method private exists(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x2f

    .line 184
    if-eqz p1, :cond_1

    .line 186
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    sget-char v1, Ljava/io/File;->separatorChar:C

    if-eq v2, v1, :cond_0

    .line 188
    new-instance v0, Ljava/io/File;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 191
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMaildir(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x2f

    const/4 v1, 0x0

    .line 196
    if-nez p1, :cond_0

    .line 201
    :goto_0
    return v1

    .line 198
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    sget-char v2, Ljava/io/File;->separatorChar:C

    if-eq v3, v2, :cond_1

    .line 200
    new-instance v0, Ljava/io/File;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getDefaultFolder()Ljavax/mail/Folder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirStore;->getFolder(Ljava/lang/String;)Ljavax/mail/Folder;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 108
    :cond_0
    iget-object v0, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v1, "mail.maildir.home"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    if-nez v0, :cond_1

    .line 113
    :try_start_0
    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-direct {p0, v0}, Lgnu/mail/providers/maildir/MaildirStore;->exists(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 115
    const/4 v0, 0x0

    .line 122
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirStore;->toFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v0, Lgnu/mail/providers/maildir/MaildirFolder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/mail/providers/maildir/MaildirFolder;-><init>(Ljavax/mail/Store;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 119
    const-string v1, "access denied reading system properties"

    invoke-virtual {p0, v1}, Lgnu/mail/providers/maildir/MaildirStore;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 132
    .line 133
    const-string v0, "inbox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v2, "mail.maildir.maildir"

    invoke-virtual {v0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-direct {p0, v0}, Lgnu/mail/providers/maildir/MaildirStore;->isMaildir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    :try_start_0
    const-string v2, "user.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Maildir"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-direct {p0, v0}, Lgnu/mail/providers/maildir/MaildirStore;->isMaildir(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 145
    const/4 v0, 0x0

    :cond_0
    move-object v2, v0

    .line 153
    :goto_0
    if-eqz v2, :cond_2

    .line 156
    const/4 v0, 0x1

    move-object p1, v2

    .line 160
    :goto_1
    invoke-virtual {p0, p1}, Lgnu/mail/providers/maildir/MaildirStore;->toFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    new-instance v3, Lgnu/mail/providers/maildir/MaildirFolder;

    invoke-direct {v3, p0, v2, v1, v0}, Lgnu/mail/providers/maildir/MaildirFolder;-><init>(Ljavax/mail/Store;Ljava/lang/String;ZZ)V

    return-object v3

    .line 147
    :catch_0
    move-exception v2

    .line 150
    const-string v2, "unable to access system properties"

    invoke-virtual {p0, v2}, Lgnu/mail/providers/maildir/MaildirStore;->log(Ljava/lang/String;)V

    :cond_1
    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method log(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 231
    sget-object v0, Lgnu/mail/providers/maildir/MaildirStore;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lgnu/mail/providers/maildir/MaildirStore;->MAILDIR_TRACE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method toFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x2f

    .line 169
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_1

    .line 171
    :cond_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    :cond_1
    sget-char v1, Ljava/io/File;->separatorChar:C

    if-eq v3, v1, :cond_2

    .line 173
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
