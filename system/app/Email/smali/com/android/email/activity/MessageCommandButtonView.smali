.class public Lcom/android/email/activity/MessageCommandButtonView;
.super Landroid/widget/LinearLayout;
.source "MessageCommandButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;,
        Lcom/android/email/activity/MessageCommandButtonView$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

.field private mMessagePosition:Landroid/widget/TextView;

.field private mMoveToNewerButton:Landroid/widget/ImageButton;

.field private mMoveToOlderButton:Landroid/widget/ImageButton;

.field private mShowPanel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    sget-object v0, Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    sget-object v0, Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget-object v0, Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    .line 69
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 155
    :goto_0
    :pswitch_0
    return-void

    .line 147
    :pswitch_1
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialogCancelled:Z

    .line 148
    iget-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageCommandButtonView$Callback;->onMoveToNewer()V

    goto :goto_0

    .line 151
    :pswitch_2
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialogCancelled:Z

    .line 152
    iget-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageCommandButtonView$Callback;->onMoveToOlder()V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x7f10016b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 83
    const v0, 0x7f10016b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCommandButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMoveToNewerButton:Landroid/widget/ImageButton;

    .line 84
    iget-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMoveToNewerButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mShowPanel:Z

    .line 94
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mShowPanel:Z

    .line 89
    const v0, 0x7f10016d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCommandButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMoveToOlderButton:Landroid/widget/ImageButton;

    .line 90
    const v0, 0x7f10016c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCommandButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMessagePosition:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMoveToNewerButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/email/activity/MessageCommandButtonView;->mMoveToOlderButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/email/activity/MessageCommandButtonView$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 97
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MessageCommandButtonView;->mCallback:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    .line 98
    return-void
.end method
