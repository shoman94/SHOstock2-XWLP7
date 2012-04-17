.class Lcom/android/email/adapter/LegacyAdapter$5;
.super Ljava/lang/Thread;
.source "LegacyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/LegacyAdapter;->deleteMessage(Ljava/util/HashSet;JJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/adapter/LegacyAdapter;

.field final synthetic val$syncAccountId:J


# direct methods
.method constructor <init>(Lcom/android/email/adapter/LegacyAdapter;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/email/adapter/LegacyAdapter$5;->this$0:Lcom/android/email/adapter/LegacyAdapter;

    iput-wide p3, p0, Lcom/android/email/adapter/LegacyAdapter$5;->val$syncAccountId:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 267
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    iget-wide v1, p0, Lcom/android/email/adapter/LegacyAdapter$5;->val$syncAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/MessagingController;->processPendingActions(J)V

    .line 268
    return-void
.end method
