.class Lcom/android/email/activity/MailboxList$5;
.super Ljava/lang/Object;
.source "MailboxList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxList;->createMailbox()Landroid/app/Dialog;
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
    .line 903
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$5;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 905
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 906
    return-void
.end method
