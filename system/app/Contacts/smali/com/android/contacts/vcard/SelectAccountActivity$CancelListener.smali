.class Lcom/android/contacts/vcard/SelectAccountActivity$CancelListener;
.super Ljava/lang/Object;
.source "SelectAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/SelectAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/SelectAccountActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/vcard/SelectAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/contacts/vcard/SelectAccountActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/SelectAccountActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/vcard/SelectAccountActivity;Lcom/android/contacts/vcard/SelectAccountActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/SelectAccountActivity$CancelListener;-><init>(Lcom/android/contacts/vcard/SelectAccountActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/vcard/SelectAccountActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/SelectAccountActivity;

    invoke-virtual {v0}, Lcom/android/contacts/vcard/SelectAccountActivity;->finish()V

    .line 46
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/contacts/vcard/SelectAccountActivity$CancelListener;->this$0:Lcom/android/contacts/vcard/SelectAccountActivity;

    invoke-virtual {v0}, Lcom/android/contacts/vcard/SelectAccountActivity;->finish()V

    .line 43
    return-void
.end method
