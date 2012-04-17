.class final Lcom/android/email/Email$2;
.super Ljava/lang/Thread;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$con:Landroid/content/Context;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/email/Email$2;->val$con:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/email/Email$2;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 391
    const-string v0, "Email >>"

    const-string v1, "THREAD RUN BEFORE <<<<<<<<<<<<<<<<"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 393
    iget-object v0, p0, Lcom/android/email/Email$2;->val$con:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/email/Email$2;->val$enable:Z

    invoke-static {v0, v1}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;Z)V

    .line 394
    const-string v0, "Email >>"

    const-string v1, "THREAD RUN AFTER >>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method
