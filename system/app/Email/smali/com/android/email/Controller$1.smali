.class Lcom/android/email/Controller$1;
.super Ljava/lang/Thread;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->serviceLogging(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$debugFlags:I


# direct methods
.method constructor <init>(Lcom/android/email/Controller;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/email/Controller$1;->this$0:Lcom/android/email/Controller;

    iput p3, p0, Lcom/android/email/Controller$1;->val$debugFlags:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 566
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/email/Controller$1;->val$debugFlags:I

    invoke-virtual {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->serviceLogging(I)V

    .line 568
    return-void
.end method
