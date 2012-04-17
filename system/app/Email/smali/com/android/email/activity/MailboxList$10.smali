.class Lcom/android/email/activity/MailboxList$10;
.super Ljava/lang/Object;
.source "MailboxList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxList;->createContextMenu()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxList;)V
    .locals 0
    .parameter

    .prologue
    .line 989
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$10;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 995
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 997
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$10;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {}, Lcom/android/email/activity/MailboxList;->access$1000()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    #calls: Lcom/android/email/activity/MailboxList;->onContextMenuSelected(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MailboxList;->access$1100(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)V

    .line 999
    return-void
.end method
