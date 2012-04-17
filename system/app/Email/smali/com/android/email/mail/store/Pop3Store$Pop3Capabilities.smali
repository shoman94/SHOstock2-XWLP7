.class Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;
.super Ljava/lang/Object;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pop3Capabilities"
.end annotation


# instance fields
.field public pipelining:Z

.field public stls:Z

.field final synthetic this$0:Lcom/android/email/mail/store/Pop3Store;

.field public top:Z

.field public uidl:Z

.field public user:Z


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/Pop3Store;)V
    .locals 0
    .parameter

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1217
    const-string v0, "STLS %b, TOP %b, USER %b, UIDL %b, PIPELINING %b"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->stls:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->top:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->user:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->uidl:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->pipelining:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
