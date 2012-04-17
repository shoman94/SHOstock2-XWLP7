.class public Lcom/seven/Z7/app/CustomURLSpan;
.super Landroid/text/style/URLSpan;
.source "CustomURLSpan.java"


# instance fields
.field private mOnClickDelegate:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "aWidget"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/seven/Z7/app/CustomURLSpan;->mOnClickDelegate:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/seven/Z7/app/CustomURLSpan;->mOnClickDelegate:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    .line 53
    return-void
.end method
