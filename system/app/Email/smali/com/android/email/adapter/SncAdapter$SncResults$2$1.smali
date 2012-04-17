.class Lcom/android/email/adapter/SncAdapter$SncResults$2$1;
.super Ljava/lang/Object;
.source "SncAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/SncAdapter$SncResults$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/email/adapter/SncAdapter$SncResults$2;


# direct methods
.method constructor <init>(Lcom/android/email/adapter/SncAdapter$SncResults$2;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/email/adapter/SncAdapter$SncResults$2$1;->this$2:Lcom/android/email/adapter/SncAdapter$SncResults$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 335
    const-string v0, "SncAdapter"

    const-string v1, " *** Simulating SMS behavior to be fail-safe***"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter$SncResults$2$1;->this$2:Lcom/android/email/adapter/SncAdapter$SncResults$2;

    iget-object v0, v0, Lcom/android/email/adapter/SncAdapter$SncResults$2;->this$1:Lcom/android/email/adapter/SncAdapter$SncResults;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/email/adapter/SncAdapter$SncResults;->onNewMailNotificationReceived(I)V

    .line 337
    return-void
.end method
