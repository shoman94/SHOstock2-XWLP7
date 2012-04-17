.class Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$1;
.super Ljava/lang/Object;
.source "SIMContactSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->onPreExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;)V
    .locals 0
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$1;->this$1:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$1;->this$1:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$602(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Z)Z

    .line 688
    return-void
.end method
