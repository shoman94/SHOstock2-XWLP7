.class Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResendGroupSmsListener"
.end annotation


# instance fields
.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDests:[Ljava/lang/String;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V
    .locals 1
    .parameter
    .parameter "msgItem"
    .parameter "dests"
    .parameter "conversation"

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 595
    invoke-virtual {p3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->mDests:[Ljava/lang/String;

    .line 596
    iput-object p4, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->mConversation:Lcom/android/mms/data/Conversation;

    .line 597
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->mDests:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;->mConversation:Lcom/android/mms/data/Conversation;

    #calls: Lcom/android/mms/ui/MessageOptions;->resendGroupSmsMessageItem(Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->access$000(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V

    .line 591
    return-void
.end method
