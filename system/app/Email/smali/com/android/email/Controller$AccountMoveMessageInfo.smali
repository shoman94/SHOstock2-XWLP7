.class Lcom/android/email/Controller$AccountMoveMessageInfo;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountMoveMessageInfo"
.end annotation


# instance fields
.field public delay_cnt:I

.field public messageId:J

.field public source_accountId:J

.field public source_boxId:J

.field public state:J

.field public target_accountId:J

.field public target_boxId:J

.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;IJJJJJI)V
    .locals 2
    .parameter
    .parameter "istate"
    .parameter "id"
    .parameter "TaccountId"
    .parameter "TboxId"
    .parameter "SaccountId"
    .parameter "SboxId"
    .parameter "delaycnt"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->this$0:Lcom/android/email/Controller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    .line 244
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    .line 245
    iput-wide p3, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    .line 246
    iput-wide p5, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->target_accountId:J

    .line 247
    iput-wide p7, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->target_boxId:J

    .line 248
    iput-wide p9, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_accountId:J

    .line 249
    iput-wide p11, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_boxId:J

    .line 250
    iput p13, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->delay_cnt:I

    .line 251
    return-void
.end method
