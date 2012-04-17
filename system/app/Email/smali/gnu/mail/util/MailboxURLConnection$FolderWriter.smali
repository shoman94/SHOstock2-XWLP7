.class Lgnu/mail/util/MailboxURLConnection$FolderWriter;
.super Ljava/lang/Object;
.source "MailboxURLConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/mail/util/MailboxURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FolderWriter"
.end annotation


# instance fields
.field folder:Ljavax/mail/Folder;

.field out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljavax/mail/Folder;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lgnu/mail/util/MailboxURLConnection$FolderWriter;->folder:Ljavax/mail/Folder;

    .line 290
    iput-object p2, p0, Lgnu/mail/util/MailboxURLConnection$FolderWriter;->out:Ljava/io/OutputStream;

    .line 291
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method
