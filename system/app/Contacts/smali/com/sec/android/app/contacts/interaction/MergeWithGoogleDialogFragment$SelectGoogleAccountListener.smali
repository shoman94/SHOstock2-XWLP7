.class public Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$SelectGoogleAccountListener;
.super Ljava/lang/Object;
.source "MergeWithGoogleDialogFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/SelectGoogleAccountDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectGoogleAccountListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$SelectGoogleAccountListener;->this$0:Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2
    .parameter "account"
    .parameter "extraArgs"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$SelectGoogleAccountListener;->this$0:Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$SelectGoogleAccountListener;->this$0:Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;

    #calls: Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mergeWithGoogle(Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->access$100(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->showResultToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->access$200(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method
