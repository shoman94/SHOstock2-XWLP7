.class Lcom/android/mms/ui/PushMessageDialog$2;
.super Ljava/lang/Object;
.source "PushMessageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/PushMessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/PushMessageDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/PushMessageDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/mms/ui/PushMessageDialog$2;->this$0:Lcom/android/mms/ui/PushMessageDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/PushMessageDialog$2;->this$0:Lcom/android/mms/ui/PushMessageDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/PushMessageDialog;->finish()V

    .line 88
    return-void
.end method
