.class Lcom/android/email/activity/MessageOrderManager$MessageData;
.super Ljava/lang/Object;
.source "MessageOrderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageOrderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageData"
.end annotation


# instance fields
.field isFirstItemInConv:I

.field recordID:Ljava/lang/Long;

.field final synthetic this$0:Lcom/android/email/activity/MessageOrderManager;

.field threadId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageOrderManager;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/email/activity/MessageOrderManager$MessageData;->this$0:Lcom/android/email/activity/MessageOrderManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
