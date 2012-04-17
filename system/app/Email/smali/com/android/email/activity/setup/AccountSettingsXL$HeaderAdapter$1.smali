.class Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$1;
.super Ljava/lang/Object;
.source "AccountSettingsXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$1;->this$1:Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1598
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1599
    return-void
.end method
