.class Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment$1;
.super Ljava/lang/Object;
.source "SimInitializingDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 40
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 41
    return-void
.end method
