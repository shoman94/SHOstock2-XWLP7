.class Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field TwoTextView:Landroid/widget/LinearLayout;

.field mailAddress:Landroid/widget/TextView;

.field mailCheck:Landroid/widget/CheckBox;

.field mailName:Landroid/widget/TextView;

.field oneAddress:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7321
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
