.class Lcom/android/email/adapter/SncAdapter$12;
.super Ljava/lang/Thread;
.source "SncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/SncAdapter;->setMessageRead(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/adapter/SncAdapter;

.field final synthetic val$message:Lcom/android/emailcommon/provider/EmailContent$Message;


# direct methods
.method constructor <init>(Lcom/android/email/adapter/SncAdapter;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1516
    iput-object p1, p0, Lcom/android/email/adapter/SncAdapter$12;->this$0:Lcom/android/email/adapter/SncAdapter;

    iput-object p2, p0, Lcom/android/email/adapter/SncAdapter$12;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/email/adapter/SncAdapter$12;->this$0:Lcom/android/email/adapter/SncAdapter;

    iget-object v1, p0, Lcom/android/email/adapter/SncAdapter$12;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/adapter/SncAdapter;->processPendingActions(J)V

    .line 1520
    return-void
.end method
