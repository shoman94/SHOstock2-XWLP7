.class Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$7;
.super Ljava/lang/Object;
.source "AccountSetupIncomingForSevenFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$7;->this$1:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 549
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 551
    return-void
.end method
