.class Lcom/android/email/activity/UNCSearchResultsList$2;
.super Ljava/lang/Object;
.source "UNCSearchResultsList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/UNCSearchResultsList;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UNCSearchResultsList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/UNCSearchResultsList;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/email/activity/UNCSearchResultsList$2;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$2;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    invoke-virtual {v0}, Lcom/android/email/activity/UNCSearchResultsList;->onBackPressed()V

    .line 423
    return-void
.end method
