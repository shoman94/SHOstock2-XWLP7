.class Lcom/android/email/adapter/LegacyAdapter$3;
.super Ljava/lang/Object;
.source "LegacyAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/LegacyAdapter;->serviceCheckMail(JJJLcom/android/email/Controller$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/adapter/LegacyAdapter;

.field final synthetic val$accountId:J

.field final synthetic val$tag:J


# direct methods
.method constructor <init>(Lcom/android/email/adapter/LegacyAdapter;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/email/adapter/LegacyAdapter$3;->this$0:Lcom/android/email/adapter/LegacyAdapter;

    iput-wide p2, p0, Lcom/android/email/adapter/LegacyAdapter$3;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/adapter/LegacyAdapter$3;->val$tag:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 166
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    iget-wide v1, p0, Lcom/android/email/adapter/LegacyAdapter$3;->val$accountId:J

    iget-wide v3, p0, Lcom/android/email/adapter/LegacyAdapter$3;->val$tag:J

    sget-object v5, Lcom/android/email/adapter/ProtocolAdapter;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingController;->checkMail(JJLcom/android/email/MessagingListener;)V

    .line 167
    return-void
.end method
