.class Lcom/android/email/adapter/SncAdapter$SncResults$2;
.super Ljava/lang/Object;
.source "SncAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/SncAdapter$SncResults;->onAddAccountFinished(Landroid/os/Bundle;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/adapter/SncAdapter$SncResults;


# direct methods
.method constructor <init>(Lcom/android/email/adapter/SncAdapter$SncResults;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/email/adapter/SncAdapter$SncResults$2;->this$1:Lcom/android/email/adapter/SncAdapter$SncResults;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 333
    new-instance v0, Lcom/android/email/adapter/SncAdapter$SncResults$2$1;

    invoke-direct {v0, p0}, Lcom/android/email/adapter/SncAdapter$SncResults$2$1;-><init>(Lcom/android/email/adapter/SncAdapter$SncResults$2;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 339
    return-void
.end method
