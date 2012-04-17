.class public Lcom/android/email/activity/MessageViewMessageDetailsDialog;
.super Landroid/app/DialogFragment;
.source "MessageViewMessageDetailsDialog.java"


# static fields
.field private static final TextView:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->TextView:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private initView()Landroid/view/View;
    .locals 7

    .prologue
    const v6, 0x7f1001d3

    const v5, 0x7f1001d2

    .line 82
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040083

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, root:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "subject"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f100008

    const v4, 0x7f1001c9

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->setText(Landroid/view/View;Ljava/lang/String;II)V

    .line 86
    const-string v2, "date"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1001cd

    const v4, 0x7f1001cc

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->setText(Landroid/view/View;Ljava/lang/String;II)V

    .line 87
    const-string v2, "from"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1001cb

    const v4, 0x7f1001ca

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->setText(Landroid/view/View;Ljava/lang/String;II)V

    .line 88
    const-string v2, "to"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1001cf

    const v4, 0x7f1001ce

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->setText(Landroid/view/View;Ljava/lang/String;II)V

    .line 89
    const-string v2, "cc"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1001d1

    const v4, 0x7f1001d0

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->setText(Landroid/view/View;Ljava/lang/String;II)V

    .line 90
    const-string v2, "bcc"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6, v5}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->setText(Landroid/view/View;Ljava/lang/String;II)V

    .line 91
    const-string v2, "bcc"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6, v5}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->setText(Landroid/view/View;Ljava/lang/String;II)V

    .line 93
    return-object v1
.end method

.method private static setText(Landroid/view/View;Ljava/lang/String;II)V
    .locals 2
    .parameter "root"
    .parameter "text"
    .parameter "textViewId"
    .parameter "rowViewId"

    .prologue
    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 68
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 70
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080084

    new-instance v3, Lcom/android/email/activity/MessageViewMessageDetailsDialog$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageViewMessageDetailsDialog$1;-><init>(Lcom/android/email/activity/MessageViewMessageDetailsDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->initView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 78
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
