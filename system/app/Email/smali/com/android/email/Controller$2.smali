.class Lcom/android/email/Controller$2;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->deleteFolder(JLjava/util/ArrayList;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$accountKey:J

.field final synthetic val$deleteMailboxIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;JLjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/email/Controller$2;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$2;->val$accountKey:J

    iput-object p4, p0, Lcom/android/email/Controller$2;->val$deleteMailboxIds:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 697
    iget-wide v0, p0, Lcom/android/email/Controller$2;->val$accountKey:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/Controller$2;->val$accountKey:J

    iget-object v3, p0, Lcom/android/email/Controller$2;->val$deleteMailboxIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->deleteFolder(JLjava/util/ArrayList;)V

    .line 699
    return-void
.end method
