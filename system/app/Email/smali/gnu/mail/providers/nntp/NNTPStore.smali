.class public Lgnu/mail/providers/nntp/NNTPStore;
.super Ljavax/mail/Store;
.source "NNTPStore.java"


# static fields
.field static final NNTP_TRACE:Ljava/util/logging/Level;

.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field connection:Lgnu/inet/nntp/NNTPConnection;

.field newsrc:Lgnu/inet/nntp/Newsrc;

.field permanentFlags:Ljavax/mail/Flags;

.field root:Ljavax/mail/Folder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "gnu.mail.providers.nntp"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lgnu/mail/providers/nntp/NNTPStore;->logger:Ljava/util/logging/Logger;

    .line 61
    sget-object v0, Lgnu/inet/nntp/NNTPConnection;->NNTP_TRACE:Ljava/util/logging/Level;

    sput-object v0, Lgnu/mail/providers/nntp/NNTPStore;->NNTP_TRACE:Ljava/util/logging/Level;

    return-void
.end method


# virtual methods
.method public getDefaultFolder()Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lgnu/mail/providers/nntp/NNTPStore;->root:Ljavax/mail/Folder;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lgnu/mail/providers/nntp/NNTPRootFolder;

    invoke-direct {v0, p0}, Lgnu/mail/providers/nntp/NNTPRootFolder;-><init>(Lgnu/mail/providers/nntp/NNTPStore;)V

    iput-object v0, p0, Lgnu/mail/providers/nntp/NNTPStore;->root:Ljavax/mail/Folder;

    .line 221
    :cond_0
    iget-object v0, p0, Lgnu/mail/providers/nntp/NNTPStore;->root:Ljavax/mail/Folder;

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p0}, Lgnu/mail/providers/nntp/NNTPStore;->getDefaultFolder()Ljavax/mail/Folder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/mail/Folder;->getFolder(Ljava/lang/String;)Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method
