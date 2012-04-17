.class Lcom/seven/Z7/app/Z7AppBaseActivity$12;
.super Ljava/lang/Object;
.source "Z7AppBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seven/Z7/app/Z7AppBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;


# direct methods
.method constructor <init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$12;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 369
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 371
    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$12;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    const-string v3, "sharedPreferenceCB"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/seven/Z7/app/Z7AppBaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 373
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 374
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v2, "is_premium_connector"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 375
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 377
    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$12;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    invoke-virtual {v2}, Lcom/seven/Z7/app/Z7AppBaseActivity;->finish()V

    .line 378
    return-void
.end method
