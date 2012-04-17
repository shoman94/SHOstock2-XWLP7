.class Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$1;
.super Ljava/lang/Object;
.source "MergeWithGoogleDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;

    #calls: Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->createAccountSelectionDialog()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->access$000(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;)V

    .line 71
    return-void
.end method
