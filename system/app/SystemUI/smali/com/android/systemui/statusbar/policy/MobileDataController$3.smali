.class Lcom/android/systemui/statusbar/policy/MobileDataController$3;
.super Ljava/lang/Object;
.source "MobileDataController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MobileDataController;->onDisplayMobileDataOffAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileDataController;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 273
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    const/4 v1, 0x0

    #calls: Lcom/android/systemui/statusbar/policy/MobileDataController;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$500(Lcom/android/systemui/statusbar/policy/MobileDataController;Z)V

    .line 275
    return-void
.end method
