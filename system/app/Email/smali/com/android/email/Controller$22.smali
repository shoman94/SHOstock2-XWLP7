.class Lcom/android/email/Controller$22;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->modifyUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$accountId:J

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$displayName:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$serviceList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6860
    iput-object p1, p0, Lcom/android/email/Controller$22;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$22;->val$accountId:J

    iput-object p4, p0, Lcom/android/email/Controller$22;->val$password:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/email/Controller$22;->val$accountName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/email/Controller$22;->val$displayName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/email/Controller$22;->val$serviceList:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 6862
    iget-wide v0, p0, Lcom/android/email/Controller$22;->val$accountId:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/Controller$22;->val$accountId:J

    iget-object v3, p0, Lcom/android/email/Controller$22;->val$password:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/Controller$22;->val$accountName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/Controller$22;->val$displayName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/email/Controller$22;->val$serviceList:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/adapter/ProtocolAdapter;->modifyUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 6864
    return-void
.end method
