.class Lcom/android/email/activity/SelectGroup$3;
.super Ljava/lang/Object;
.source "SelectGroup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/SelectGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/SelectGroup;

.field final synthetic val$EdText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/email/activity/SelectGroup;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/email/activity/SelectGroup$3;->this$0:Lcom/android/email/activity/SelectGroup;

    iput-object p2, p0, Lcom/android/email/activity/SelectGroup$3;->val$EdText:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/email/activity/SelectGroup$3;->val$EdText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/email/activity/SelectGroup$3;->this$0:Lcom/android/email/activity/SelectGroup;

    iget-object v1, p0, Lcom/android/email/activity/SelectGroup$3;->val$EdText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/email/activity/SelectGroup;->createGroup(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/email/activity/SelectGroup;->access$200(Lcom/android/email/activity/SelectGroup;Ljava/lang/String;)V

    .line 509
    :cond_0
    return-void
.end method
