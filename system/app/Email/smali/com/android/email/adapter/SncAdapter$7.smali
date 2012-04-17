.class Lcom/android/email/adapter/SncAdapter$7;
.super Ljava/lang/Thread;
.source "SncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/SncAdapter;->loadMessageForView(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/adapter/SncAdapter;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/adapter/SncAdapter;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/android/email/adapter/SncAdapter$7;->this$0:Lcom/android/email/adapter/SncAdapter;

    iput-wide p3, p0, Lcom/android/email/adapter/SncAdapter$7;->val$messageId:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter$7;->this$0:Lcom/android/email/adapter/SncAdapter;

    #getter for: Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;
    invoke-static {v0}, Lcom/android/email/adapter/SncAdapter;->access$200(Lcom/android/email/adapter/SncAdapter;)Lcom/android/email/SncMessagingController;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/adapter/SncAdapter$7;->val$messageId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/SncMessagingController;->loadMessageForView(J)V

    .line 1197
    return-void
.end method
