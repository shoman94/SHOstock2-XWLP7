.class Lcom/android/systemui/statusbar/policy/MobileDataController$2;
.super Ljava/lang/Object;
.source "MobileDataController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 255
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$2;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    .line 257
    if-ne p2, v2, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$2;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$100(Lcom/android/systemui/statusbar/policy/MobileDataController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_mobiledata_checked"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$2;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$100(Lcom/android/systemui/statusbar/policy/MobileDataController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_mobiledata_checked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
