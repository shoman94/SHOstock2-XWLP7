.class Lcom/android/email/adapter/SncAdapter$SncResults$1$1$1;
.super Ljava/lang/Object;
.source "SncAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/SncAdapter$SncResults$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/email/adapter/SncAdapter$SncResults$1$1;


# direct methods
.method constructor <init>(Lcom/android/email/adapter/SncAdapter$SncResults$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/email/adapter/SncAdapter$SncResults$1$1$1;->this$3:Lcom/android/email/adapter/SncAdapter$SncResults$1$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 248
    const-string v0, "SncAdapter"

    const-string v1, " *** Re-Simulating SMS behavior to be fail-safe***"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter$SncResults$1$1$1;->this$3:Lcom/android/email/adapter/SncAdapter$SncResults$1$1;

    iget-object v0, v0, Lcom/android/email/adapter/SncAdapter$SncResults$1$1;->this$2:Lcom/android/email/adapter/SncAdapter$SncResults$1;

    iget-object v0, v0, Lcom/android/email/adapter/SncAdapter$SncResults$1;->this$1:Lcom/android/email/adapter/SncAdapter$SncResults;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/email/adapter/SncAdapter$SncResults;->onNewMailNotificationReceived(I)V

    .line 251
    return-void
.end method
