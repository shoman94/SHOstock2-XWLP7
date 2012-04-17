.class Lcom/android/email/adapter/LegacyAdapter$6;
.super Ljava/lang/Thread;
.source "LegacyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/LegacyAdapter;->loadMessageForView(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/adapter/LegacyAdapter;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/adapter/LegacyAdapter;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/email/adapter/LegacyAdapter$6;->this$0:Lcom/android/email/adapter/LegacyAdapter;

    iput-wide p3, p0, Lcom/android/email/adapter/LegacyAdapter$6;->val$messageId:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 280
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    iget-wide v1, p0, Lcom/android/email/adapter/LegacyAdapter$6;->val$messageId:J

    sget-object v3, Lcom/android/email/adapter/ProtocolAdapter;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/MessagingController;->loadMessageForView(JLcom/android/email/MessagingListener;)V

    .line 281
    return-void
.end method
