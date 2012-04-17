.class Lcom/android/email/adapter/LegacyAdapter$8;
.super Ljava/lang/Object;
.source "LegacyAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/LegacyAdapter;->sendMessage(JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/adapter/LegacyAdapter;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$sentboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/adapter/LegacyAdapter;Lcom/android/emailcommon/provider/EmailContent$Account;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/email/adapter/LegacyAdapter$8;->this$0:Lcom/android/email/adapter/LegacyAdapter;

    iput-object p2, p0, Lcom/android/email/adapter/LegacyAdapter$8;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-wide p3, p0, Lcom/android/email/adapter/LegacyAdapter$8;->val$sentboxId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 316
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/adapter/LegacyAdapter$8;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, p0, Lcom/android/email/adapter/LegacyAdapter$8;->val$sentboxId:J

    sget-object v4, Lcom/android/email/adapter/ProtocolAdapter;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/MessagingController;->sendPendingMessages(Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/email/MessagingListener;)V

    .line 317
    return-void
.end method
