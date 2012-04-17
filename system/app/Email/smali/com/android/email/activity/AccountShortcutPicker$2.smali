.class Lcom/android/email/activity/AccountShortcutPicker$2;
.super Ljava/lang/Object;
.source "AccountShortcutPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/AccountShortcutPicker;->showAccountListDialog(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/AccountShortcutPicker;


# direct methods
.method constructor <init>(Lcom/android/email/activity/AccountShortcutPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/email/activity/AccountShortcutPicker$2;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 179
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 180
    iget-object v0, p0, Lcom/android/email/activity/AccountShortcutPicker$2;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    invoke-virtual {v0}, Lcom/android/email/activity/AccountShortcutPicker;->finish()V

    .line 181
    return-void
.end method
