.class Lcom/android/email/activity/AccountFolderList$1;
.super Ljava/lang/Object;
.source "AccountFolderList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/AccountFolderList;->createRemoveAccountDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/AccountFolderList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/AccountFolderList;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/email/activity/AccountFolderList$1;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList$1;->this$0:Lcom/android/email/activity/AccountFolderList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AccountFolderList;->dismissDialog(I)V

    .line 227
    return-void
.end method
