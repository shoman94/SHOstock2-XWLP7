.class Lcom/android/email/activity/MoveMessageToDialog$DialogItem;
.super Ljava/lang/Object;
.source "MoveMessageToDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MoveMessageToDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogItem"
.end annotation


# instance fields
.field AccountName:Ljava/lang/String;

.field accountId:J

.field mailboxId:J

.field mailboxName:Ljava/lang/String;

.field mailboxType:I

.field final synthetic this$0:Lcom/android/email/activity/MoveMessageToDialog;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MoveMessageToDialog;JLjava/lang/String;JILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "accountId"
    .parameter "accountName"
    .parameter "mailboxId"
    .parameter "mailboxType"
    .parameter "mailboxName"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-wide p5, p0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->mailboxId:J

    .line 116
    iput-wide p2, p0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->accountId:J

    .line 117
    iput-object p8, p0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->mailboxName:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->AccountName:Ljava/lang/String;

    .line 119
    iput p7, p0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->mailboxType:I

    .line 120
    return-void
.end method
