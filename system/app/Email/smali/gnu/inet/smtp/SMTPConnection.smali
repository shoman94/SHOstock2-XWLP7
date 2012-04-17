.class public Lgnu/inet/smtp/SMTPConnection;
.super Ljava/lang/Object;
.source "SMTPConnection.java"


# static fields
.field public static final SMTP_TRACE:Ljava/util/logging/Level;

.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "gnu.inet.smtp"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lgnu/inet/smtp/SMTPConnection;->logger:Ljava/util/logging/Logger;

    .line 98
    new-instance v0, Lgnu/inet/util/TraceLevel;

    const-string v1, "smtp"

    invoke-direct {v0, v1}, Lgnu/inet/util/TraceLevel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/inet/smtp/SMTPConnection;->SMTP_TRACE:Ljava/util/logging/Level;

    return-void
.end method
